# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "allOf.1.oneOf.0.allOf.1.definitions.contents" =
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
                      js2n.record.Required [ "source" ],
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Required [ "inline" ],
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Required [ "local" ],
                      Array Dyn
                    ]
                ],
              {
                compression
                  | std.enum.TagOrString
                  | [| 'gzip, '"null" |]
                  | doc "The type of compression used on the file (null or gzip). Compression cannot be used with S3."
                  | optional,
                http_headers
                  | refs."allOf.1.oneOf.0.allOf.1.definitions.http_headers"
                  | Array Dyn
                  | optional,
                inline
                  | String
                  | doc "The contents. Mutually exclusive with source and local."
                  | optional,
                local
                  | String
                  | doc "A local path to the contents, relative to the directory specified by the --files-dir command-line argument. Mutually exclusive with source and inline."
                  | optional,
                source
                  | js2n.Always
                  | doc "The URL of the file. Supported schemes are `http`, `https`, `tftp`, `s3`, `gs`, and `data`( https://tools.ietf.org/html/rfc2397 ). When using `http`, it is advisable to use the verification option to ensure the contents haven't been modified. If source is omitted and a regular file already exists at the path, Ignition will do nothing. If source is omitted and no file exists, an empty file will be created. Mutually exclusive with `inline` and `local`."
                  | optional,
                verification
                  | refs."allOf.1.oneOf.0.allOf.1.definitions.verification"
                  | { _ | Dyn }
                  | doc "Options related to the verification of the contents."
                  | optional,
                ..
              }
            ],
      "allOf.1.oneOf.0.allOf.1.definitions.group" =
        std.contract.Sequence
            [
              refs."allOf.1.oneOf.0.allOf.1.definitions.security_object",
              {
                id
                  | std.contract.any_of
                    [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ]
                  | doc "The group ID of the owner."
                  | optional,
                name
                  | std.contract.any_of
                    [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ]
                  | doc "The group name of the owner."
                  | optional,
                ..
              }
            ],
      "allOf.1.oneOf.0.allOf.1.definitions.http_headers" =
        std.contract.Sequence
            [
              js2n.array.MinItems 1,
              js2n.array.UniqueItems,
              Array
                {
                  name | String | doc "The header name.",
                  value | String | doc "The header contents." | optional,
                }
            ],
      "allOf.1.oneOf.0.allOf.1.definitions.security_object" =
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
                      js2n.record.Required [ "id" ],
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Required [ "name" ],
                      Array Dyn
                    ]
                ],
              {
                id | std.number.Integer | optional,
                name | String | optional,
                ..
              }
            ],
      "allOf.1.oneOf.0.allOf.1.definitions.string_options" =
        std.contract.Sequence
            [ js2n.array.MinItems 1, js2n.array.UniqueItems, Array String ],
      "allOf.1.oneOf.0.allOf.1.definitions.tang" =
        std.contract.Sequence
            [
              js2n.array.MinItems 1,
              js2n.array.UniqueItems,
              Array (
                std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    {
                      thumbprint
                        | String
                        | doc "Thumbprint of a trusted signing key.",
                      url | String | doc "Url of the tang server.",
                    },
                    Array Dyn
                  ]
              )
            ],
      "allOf.1.oneOf.0.allOf.1.definitions.user" =
        std.contract.Sequence
            [
              refs."allOf.1.oneOf.0.allOf.1.definitions.security_object",
              {
                id
                  | std.contract.any_of
                    [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ]
                  | doc "The user ID of the owner."
                  | optional,
                name
                  | std.contract.any_of
                    [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ]
                  | doc "The user name of the owner."
                  | optional,
                ..
              }
            ],
      "allOf.1.oneOf.0.allOf.1.definitions.verification" =
        {
            hash
              | js2n.string.Matches "^(sha256-|sha512-)\\S+$"
              | doc "The hash of the file, in the form `<type>-<value>` where type is either `sha512` or `sha256`. If `compression` is specified, the hash describes the decompressed file.",
          },
      "allOf.1.oneOf.1.allOf.1.definitions.contents" =
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
                      js2n.record.Required [ "source" ],
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Required [ "inline" ],
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Required [ "local" ],
                      Array Dyn
                    ]
                ],
              {
                compression
                  | std.enum.TagOrString
                  | [| 'gzip, '"null" |]
                  | doc "The type of compression used on the file (null or gzip). Compression cannot be used with S3."
                  | optional,
                http_headers
                  | refs."allOf.1.oneOf.1.allOf.1.definitions.http_headers"
                  | Array Dyn
                  | optional,
                inline
                  | String
                  | doc "The contents. Mutually exclusive with source and local."
                  | optional,
                local
                  | String
                  | doc "A local path to the contents, relative to the directory specified by the --files-dir command-line argument. Mutually exclusive with source and inline."
                  | optional,
                source
                  | js2n.Always
                  | doc "The URL of the file. Supported schemes are `http`, `https`, `tftp`, `s3`, `arn`, `gs`, and `data`( https://tools.ietf.org/html/rfc2397 ). When using `http`, it is advisable to use the verification option to ensure the contents haven't been modified. If source is omitted and a regular file already exists at the path, Ignition will do nothing. If source is omitted and no file exists, an empty file will be created. Mutually exclusive with `inline` and `local`."
                  | optional,
                verification
                  | refs."allOf.1.oneOf.1.allOf.1.definitions.verification"
                  | { _ | Dyn }
                  | doc "Options related to the verification of the contents."
                  | optional,
                ..
              }
            ],
      "allOf.1.oneOf.1.allOf.1.definitions.group" =
        std.contract.Sequence
            [
              refs."allOf.1.oneOf.1.allOf.1.definitions.security_object",
              {
                id
                  | std.contract.any_of
                    [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ]
                  | doc "The group ID of the owner."
                  | optional,
                name
                  | std.contract.any_of
                    [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ]
                  | doc "The group name of the owner."
                  | optional,
                ..
              }
            ],
      "allOf.1.oneOf.1.allOf.1.definitions.http_headers" =
        std.contract.Sequence
            [
              js2n.array.MinItems 1,
              js2n.array.UniqueItems,
              Array
                {
                  name | String | doc "The header name.",
                  value | String | doc "The header contents." | optional,
                }
            ],
      "allOf.1.oneOf.1.allOf.1.definitions.security_object" =
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
                      js2n.record.Required [ "id" ],
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Required [ "name" ],
                      Array Dyn
                    ]
                ],
              {
                id | std.number.Integer | optional,
                name | String | optional,
                ..
              }
            ],
      "allOf.1.oneOf.1.allOf.1.definitions.string_options" =
        std.contract.Sequence
            [ js2n.array.MinItems 1, js2n.array.UniqueItems, Array String ],
      "allOf.1.oneOf.1.allOf.1.definitions.tang" =
        std.contract.Sequence
            [
              js2n.array.MinItems 1,
              js2n.array.UniqueItems,
              Array (
                std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    {
                      advertisement
                        | String
                        | doc "The advertisement JSON. If not specified, the advertisement is fetched from the tang server during provisioning."
                        | optional,
                      thumbprint
                        | String
                        | doc "Thumbprint of a trusted signing key.",
                      url | String | doc "Url of the tang server.",
                    },
                    Array Dyn
                  ]
              )
            ],
      "allOf.1.oneOf.1.allOf.1.definitions.user" =
        std.contract.Sequence
            [
              refs."allOf.1.oneOf.1.allOf.1.definitions.security_object",
              {
                id
                  | std.contract.any_of
                    [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ]
                  | doc "The user ID of the owner."
                  | optional,
                name
                  | std.contract.any_of
                    [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ]
                  | doc "The user name of the owner."
                  | optional,
                ..
              }
            ],
      "allOf.1.oneOf.1.allOf.1.definitions.verification" =
        {
            hash
              | js2n.string.Matches "^(sha256-|sha512-)\\S+$"
              | doc "The hash of the file, in the form `<type>-<value>` where type is either `sha512` or `sha256`. If `compression` is specified, the hash describes the decompressed file.",
          },
      "allOf.1.oneOf.2.allOf.1.definitions.contents" =
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
                      js2n.record.Required [ "source" ],
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Required [ "inline" ],
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Required [ "local" ],
                      Array Dyn
                    ]
                ],
              {
                compression
                  | std.enum.TagOrString
                  | [| 'gzip, '"null" |]
                  | doc "The type of compression used on the file (null or gzip). Compression cannot be used with S3."
                  | optional,
                http_headers
                  | refs."allOf.1.oneOf.2.allOf.1.definitions.http_headers"
                  | Array Dyn
                  | optional,
                inline
                  | String
                  | doc "The contents. Mutually exclusive with source and local."
                  | optional,
                local
                  | String
                  | doc "A local path to the contents, relative to the directory specified by the --files-dir command-line argument. Mutually exclusive with source and inline."
                  | optional,
                source
                  | js2n.Always
                  | doc "The URL of the file. Supported schemes are `http`, `https`, `tftp`, `s3`, `arn`, `gs`, and `data`( https://tools.ietf.org/html/rfc2397 ). When using `http`, it is advisable to use the verification option to ensure the contents haven't been modified. If source is omitted and a regular file already exists at the path, Ignition will do nothing. If source is omitted and no file exists, an empty file will be created. Mutually exclusive with `inline` and `local`."
                  | optional,
                verification
                  | refs."allOf.1.oneOf.2.allOf.1.definitions.verification"
                  | { _ | Dyn }
                  | doc "Options related to the verification of the contents."
                  | optional,
                ..
              }
            ],
      "allOf.1.oneOf.2.allOf.1.definitions.group" =
        std.contract.Sequence
            [
              refs."allOf.1.oneOf.2.allOf.1.definitions.security_object",
              {
                id
                  | std.contract.any_of
                    [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ]
                  | doc "The group ID of the owner."
                  | optional,
                name
                  | std.contract.any_of
                    [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ]
                  | doc "The group name of the owner."
                  | optional,
                ..
              }
            ],
      "allOf.1.oneOf.2.allOf.1.definitions.http_headers" =
        std.contract.Sequence
            [
              js2n.array.MinItems 1,
              js2n.array.UniqueItems,
              Array
                {
                  name | String | doc "The header name.",
                  value | String | doc "The header contents." | optional,
                }
            ],
      "allOf.1.oneOf.2.allOf.1.definitions.security_object" =
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
                      js2n.record.Required [ "id" ],
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Required [ "name" ],
                      Array Dyn
                    ]
                ],
              {
                id | std.number.Integer | optional,
                name | String | optional,
                ..
              }
            ],
      "allOf.1.oneOf.2.allOf.1.definitions.string_options" =
        std.contract.Sequence
            [ js2n.array.MinItems 1, js2n.array.UniqueItems, Array String ],
      "allOf.1.oneOf.2.allOf.1.definitions.tang" =
        std.contract.Sequence
            [
              js2n.array.MinItems 1,
              js2n.array.UniqueItems,
              Array (
                std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    {
                      advertisement
                        | String
                        | doc "The advertisement JSON. If not specified, the advertisement is fetched from the tang server during provisioning."
                        | optional,
                      thumbprint
                        | String
                        | doc "Thumbprint of a trusted signing key.",
                      url | String | doc "Url of the tang server.",
                    },
                    Array Dyn
                  ]
              )
            ],
      "allOf.1.oneOf.2.allOf.1.definitions.user" =
        std.contract.Sequence
            [
              refs."allOf.1.oneOf.2.allOf.1.definitions.security_object",
              {
                id
                  | std.contract.any_of
                    [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ]
                  | doc "The user ID of the owner."
                  | optional,
                name
                  | std.contract.any_of
                    [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ]
                  | doc "The user name of the owner."
                  | optional,
                ..
              }
            ],
      "allOf.1.oneOf.2.allOf.1.definitions.verification" =
        {
            hash
              | js2n.string.Matches "^(sha256-|sha512-)\\S+$"
              | doc "The hash of the file, in the form `<type>-<value>` where type is either `sha512` or `sha256`. If `compression` is specified, the hash describes the decompressed file.",
          },
      "allOf.1.oneOf.3.allOf.1.definitions.contents" =
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
                      js2n.record.Required [ "source" ],
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Required [ "inline" ],
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Required [ "local" ],
                      Array Dyn
                    ]
                ],
              {
                compression
                  | std.enum.TagOrString
                  | [| 'gzip, '"null" |]
                  | doc "The type of compression used on the file (null or gzip). Compression cannot be used with S3."
                  | optional,
                http_headers
                  | refs."allOf.1.oneOf.3.allOf.1.definitions.http_headers"
                  | Array Dyn
                  | optional,
                inline
                  | String
                  | doc "The contents. Mutually exclusive with source and local."
                  | optional,
                local
                  | String
                  | doc "A local path to the contents, relative to the directory specified by the --files-dir command-line argument. Mutually exclusive with source and inline."
                  | optional,
                source
                  | js2n.Always
                  | doc "The URL of the file. Supported schemes are `http`, `https`, `tftp`, `s3`, `arn`, `gs`, and `data`( https://tools.ietf.org/html/rfc2397 ). When using `http`, it is advisable to use the verification option to ensure the contents haven't been modified. If source is omitted and a regular file already exists at the path, Ignition will do nothing. If source is omitted and no file exists, an empty file will be created. Mutually exclusive with `inline` and `local`."
                  | optional,
                verification
                  | refs."allOf.1.oneOf.3.allOf.1.definitions.verification"
                  | { _ | Dyn }
                  | doc "Options related to the verification of the contents."
                  | optional,
                ..
              }
            ],
      "allOf.1.oneOf.3.allOf.1.definitions.group" =
        std.contract.Sequence
            [
              refs."allOf.1.oneOf.3.allOf.1.definitions.security_object",
              {
                id
                  | std.contract.any_of
                    [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ]
                  | doc "The group ID of the owner."
                  | optional,
                name
                  | std.contract.any_of
                    [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ]
                  | doc "The group name of the owner."
                  | optional,
                ..
              }
            ],
      "allOf.1.oneOf.3.allOf.1.definitions.http_headers" =
        std.contract.Sequence
            [
              js2n.array.MinItems 1,
              js2n.array.UniqueItems,
              Array
                {
                  name | String | doc "The header name.",
                  value | String | doc "The header contents." | optional,
                }
            ],
      "allOf.1.oneOf.3.allOf.1.definitions.security_object" =
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
                      js2n.record.Required [ "id" ],
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Required [ "name" ],
                      Array Dyn
                    ]
                ],
              {
                id | std.number.Integer | optional,
                name | String | optional,
                ..
              }
            ],
      "allOf.1.oneOf.3.allOf.1.definitions.string_options" =
        std.contract.Sequence
            [ js2n.array.MinItems 1, js2n.array.UniqueItems, Array String ],
      "allOf.1.oneOf.3.allOf.1.definitions.user" =
        std.contract.Sequence
            [
              refs."allOf.1.oneOf.3.allOf.1.definitions.security_object",
              {
                id
                  | std.contract.any_of
                    [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ]
                  | doc "The user ID of the owner."
                  | optional,
                name
                  | std.contract.any_of
                    [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ]
                  | doc "The user name of the owner."
                  | optional,
                ..
              }
            ],
      "allOf.1.oneOf.3.allOf.1.definitions.verification" =
        {
            hash
              | js2n.string.Matches "^(sha256-|sha512-)\\S+$"
              | doc "The hash of the file, in the form `<type>-<value>` where type is either `sha512` or `sha256`. If `compression` is specified, the hash describes the decompressed file.",
          },
    }
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
                js2n.record.Record
                  {
                    additional = 'Some Dyn,
                    patterns = {},
                    properties =
                      {
                          variant = js2n.Const "fcos",
                          version =
                            std.contract.Sequence
                                [
                                  std.enum.TagOrString,
                                  [| '"1.6.0", '"1.5.0", '"1.4.0" |]
                                ],
                        },
                    required = {},
                  },
                Array Dyn
              ],
            std.contract.any_of
              [
                js2n.Null,
                Bool,
                Number,
                String,
                js2n.record.Record
                  {
                    additional = 'Some Dyn,
                    patterns = {},
                    properties =
                      {
                          variant = js2n.Const "flatcar",
                          version =
                            std.contract.Sequence
                                [ std.enum.TagOrString, [| '"1.1.0" |] ],
                        },
                    required = {},
                  },
                Array Dyn
              ]
          ],
        js2n.OneOf
          [
            std.contract.Sequence
              [
                js2n.record.Record
                  {
                    additional = 'Some Dyn,
                    patterns = {},
                    properties =
                      {
                          variant = js2n.Const "fcos",
                          version = js2n.Const "1.4.0",
                        },
                    required = {},
                  },
                js2n.record.Record
                  {
                    additional = 'None,
                    patterns = {},
                    properties =
                      {
                          boot_device =
                            js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        layout =
                                          std.contract.Sequence
                                              [
                                                std.enum.TagOrString,
                                                [|
                                                  'x86_64,
                                                  'ppc64le,
                                                  'aarch64
                                                |]
                                              ],
                                        luks =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      tang =
                                                        std.contract.Sequence
                                                            [
                                                              refs."allOf.1.oneOf.0.allOf.1.definitions.tang",
                                                              Array Dyn
                                                            ],
                                                      threshold =
                                                        std.number.Integer,
                                                      tpm2 = Bool,
                                                    },
                                                required = {},
                                              },
                                        mirror =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      devices =
                                                        std.contract.Sequence
                                                            [
                                                              refs."allOf.1.oneOf.0.allOf.1.definitions.string_options",
                                                              Array Dyn
                                                            ],
                                                    },
                                                required = {},
                                              },
                                      },
                                  required = {},
                                },
                          ignition =
                            js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        config =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      "merge" =
                                                        std.contract.Sequence
                                                            [
                                                              js2n.array.MinItems
                                                                1,
                                                              js2n.array.UniqueItems,
                                                              js2n.array.ArrayOf
                                                                (std.contract.Sequence
                                                                  [
                                                                    refs."allOf.1.oneOf.0.allOf.1.definitions.contents",
                                                                    { _ | Dyn }
                                                                  ])
                                                            ],
                                                      replace =
                                                        std.contract.Sequence
                                                            [
                                                              refs."allOf.1.oneOf.0.allOf.1.definitions.contents",
                                                              { _ | Dyn }
                                                            ],
                                                    },
                                                required = {},
                                              },
                                        proxy =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      http_proxy = String,
                                                      https_proxy = String,
                                                      no_proxy =
                                                        std.contract.Sequence
                                                            [
                                                              refs."allOf.1.oneOf.0.allOf.1.definitions.string_options",
                                                              Array Dyn
                                                            ],
                                                    },
                                                required = {},
                                              },
                                        security =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      tls =
                                                        js2n.record.Record
                                                            {
                                                              additional =
                                                                'None,
                                                              patterns = {},
                                                              properties =
                                                                {
                                                                    certificate_authorities =
                                                                      std.contract.Sequence
                                                                          [
                                                                            js2n.array.MinItems
                                                                              1,
                                                                            js2n.array.UniqueItems,
                                                                            js2n.array.ArrayOf
                                                                              (std.contract.Sequence
                                                                                [
                                                                                  refs."allOf.1.oneOf.0.allOf.1.definitions.contents",
                                                                                  {
                                                                                    _ | Dyn
                                                                                  }
                                                                                ])
                                                                          ],
                                                                  },
                                                              required =
                                                                {
                                                                    certificate_authorities =
                                                                      true,
                                                                  },
                                                            },
                                                    },
                                                required = { tls = true, },
                                              },
                                        timeouts =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      http_response_headers =
                                                        std.number.Integer,
                                                      http_total =
                                                        std.number.Integer,
                                                    },
                                                required = {},
                                              },
                                      },
                                  required = {},
                                },
                          kernel_arguments =
                            js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        should_exist =
                                          std.contract.Sequence
                                              [
                                                refs."allOf.1.oneOf.0.allOf.1.definitions.string_options",
                                                Array Dyn
                                              ],
                                        should_not_exist =
                                          std.contract.Sequence
                                              [
                                                refs."allOf.1.oneOf.0.allOf.1.definitions.string_options",
                                                Array Dyn
                                              ],
                                      },
                                  required = {},
                                },
                          passwd =
                            js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        groups =
                                          std.contract.Sequence
                                              [
                                                js2n.array.MinItems 1,
                                                js2n.array.UniqueItems,
                                                js2n.array.ArrayOf
                                                  (std.contract.any_of
                                                    [
                                                      js2n.Null,
                                                      Bool,
                                                      Number,
                                                      String,
                                                      js2n.record.Record
                                                        {
                                                          additional = 'None,
                                                          patterns = {},
                                                          properties =
                                                            {
                                                                gid =
                                                                  std.number.Integer,
                                                                name = String,
                                                                password_hash =
                                                                  String,
                                                                should_exist =
                                                                  Bool,
                                                                system = Bool,
                                                              },
                                                          required =
                                                            { name = true, },
                                                        },
                                                      Array Dyn
                                                    ])
                                              ],
                                        users =
                                          std.contract.Sequence
                                              [
                                                js2n.array.MinItems 1,
                                                js2n.array.UniqueItems,
                                                js2n.array.ArrayOf
                                                  (std.contract.any_of
                                                    [
                                                      js2n.Null,
                                                      Bool,
                                                      Number,
                                                      String,
                                                      js2n.record.Record
                                                        {
                                                          additional = 'None,
                                                          patterns = {},
                                                          properties =
                                                            {
                                                                gecos = String,
                                                                groups =
                                                                  std.contract.Sequence
                                                                      [
                                                                        refs."allOf.1.oneOf.0.allOf.1.definitions.string_options",
                                                                        Array
                                                                          Dyn
                                                                      ],
                                                                home_dir =
                                                                  String,
                                                                name = String,
                                                                no_create_home =
                                                                  Bool,
                                                                no_log_init =
                                                                  Bool,
                                                                no_user_group =
                                                                  Bool,
                                                                password_hash =
                                                                  String,
                                                                primary_group =
                                                                  String,
                                                                shell = String,
                                                                should_exist =
                                                                  Bool,
                                                                ssh_authorized_keys =
                                                                  std.contract.Sequence
                                                                      [
                                                                        js2n.array.ArrayOf
                                                                          (std.contract.any_of
                                                                            [
                                                                              js2n.Null,
                                                                              Bool,
                                                                              {
                                                                                _ | Dyn
                                                                              },
                                                                              Array
                                                                                Dyn,
                                                                              Number,
                                                                              String
                                                                            ]),
                                                                        refs."allOf.1.oneOf.0.allOf.1.definitions.string_options"
                                                                      ],
                                                                system = Bool,
                                                                uid =
                                                                  std.number.Integer,
                                                              },
                                                          required =
                                                            { name = true, },
                                                        },
                                                      Array Dyn
                                                    ])
                                              ],
                                      },
                                  required = {},
                                },
                          storage =
                            js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        directories =
                                          std.contract.Sequence
                                              [
                                                js2n.array.MinItems 1,
                                                js2n.array.UniqueItems,
                                                js2n.array.ArrayOf
                                                  (std.contract.any_of
                                                    [
                                                      js2n.Null,
                                                      Bool,
                                                      Number,
                                                      String,
                                                      js2n.record.Record
                                                        {
                                                          additional = 'None,
                                                          patterns = {},
                                                          properties =
                                                            {
                                                                group =
                                                                  std.contract.Sequence
                                                                      [
                                                                        refs."allOf.1.oneOf.0.allOf.1.definitions.group",
                                                                        {
                                                                          _ | Dyn
                                                                        }
                                                                      ],
                                                                mode =
                                                                  std.number.Integer,
                                                                overwrite =
                                                                  Bool,
                                                                path = String,
                                                                user =
                                                                  std.contract.Sequence
                                                                      [
                                                                        refs."allOf.1.oneOf.0.allOf.1.definitions.user",
                                                                        {
                                                                          _ | Dyn
                                                                        }
                                                                      ],
                                                              },
                                                          required =
                                                            { path = true, },
                                                        },
                                                      Array Dyn
                                                    ])
                                              ],
                                        disks =
                                          std.contract.Sequence
                                              [
                                                js2n.array.MinItems 1,
                                                js2n.array.UniqueItems,
                                                js2n.array.ArrayOf
                                                  (std.contract.any_of
                                                    [
                                                      js2n.Null,
                                                      Bool,
                                                      Number,
                                                      String,
                                                      js2n.record.Record
                                                        {
                                                          additional = 'None,
                                                          patterns = {},
                                                          properties =
                                                            {
                                                                device = String,
                                                                partitions =
                                                                  std.contract.Sequence
                                                                      [
                                                                        js2n.array.MinItems
                                                                          1,
                                                                        js2n.array.UniqueItems,
                                                                        js2n.array.ArrayOf
                                                                          (std.contract.any_of
                                                                            [
                                                                              js2n.Null,
                                                                              Bool,
                                                                              Number,
                                                                              String,
                                                                              js2n.record.Record
                                                                                {
                                                                                  additional =
                                                                                    'None,
                                                                                  patterns =
                                                                                    {},
                                                                                  properties =
                                                                                    {
                                                                                        guid =
                                                                                          std.contract.any_of
                                                                                              [
                                                                                                js2n.Null,
                                                                                                Bool,
                                                                                                {
                                                                                                  _ | Dyn
                                                                                                },
                                                                                                Array
                                                                                                  Dyn,
                                                                                                Number,
                                                                                                String
                                                                                              ],
                                                                                        label =
                                                                                          String,
                                                                                        number =
                                                                                          std.number.Integer,
                                                                                        resize =
                                                                                          Bool,
                                                                                        should_exist =
                                                                                          Bool,
                                                                                        size_mib =
                                                                                          std.number.Integer,
                                                                                        start_mib =
                                                                                          std.number.Integer,
                                                                                        type_guid =
                                                                                          std.contract.any_of
                                                                                              [
                                                                                                js2n.Null,
                                                                                                Bool,
                                                                                                {
                                                                                                  _ | Dyn
                                                                                                },
                                                                                                Array
                                                                                                  Dyn,
                                                                                                Number,
                                                                                                String
                                                                                              ],
                                                                                        wipe_partition_entry =
                                                                                          Bool,
                                                                                      },
                                                                                  required =
                                                                                    {},
                                                                                },
                                                                              Array
                                                                                Dyn
                                                                            ])
                                                                      ],
                                                                wipe_table =
                                                                  Bool,
                                                              },
                                                          required =
                                                            { device = true, },
                                                        },
                                                      Array Dyn
                                                    ])
                                              ],
                                        files =
                                          std.contract.Sequence
                                              [
                                                js2n.array.MinItems 1,
                                                js2n.array.UniqueItems,
                                                js2n.array.ArrayOf
                                                  (std.contract.any_of
                                                    [
                                                      js2n.Null,
                                                      Bool,
                                                      Number,
                                                      String,
                                                      js2n.record.Record
                                                        {
                                                          additional = 'None,
                                                          patterns = {},
                                                          properties =
                                                            {
                                                                append =
                                                                  std.contract.Sequence
                                                                      [
                                                                        js2n.array.MinItems
                                                                          1,
                                                                        js2n.array.UniqueItems,
                                                                        js2n.array.ArrayOf
                                                                          (std.contract.Sequence
                                                                            [
                                                                              refs."allOf.1.oneOf.0.allOf.1.definitions.contents",
                                                                              {
                                                                                _ | Dyn
                                                                              }
                                                                            ])
                                                                      ],
                                                                contents =
                                                                  std.contract.Sequence
                                                                      [
                                                                        refs."allOf.1.oneOf.0.allOf.1.definitions.contents",
                                                                        {
                                                                          _ | Dyn
                                                                        }
                                                                      ],
                                                                group =
                                                                  std.contract.Sequence
                                                                      [
                                                                        refs."allOf.1.oneOf.0.allOf.1.definitions.group",
                                                                        {
                                                                          _ | Dyn
                                                                        }
                                                                      ],
                                                                mode =
                                                                  std.number.Integer,
                                                                overwrite =
                                                                  Bool,
                                                                path = String,
                                                                user =
                                                                  std.contract.Sequence
                                                                      [
                                                                        refs."allOf.1.oneOf.0.allOf.1.definitions.user",
                                                                        {
                                                                          _ | Dyn
                                                                        }
                                                                      ],
                                                              },
                                                          required =
                                                            { path = true, },
                                                        },
                                                      Array Dyn
                                                    ])
                                              ],
                                        filesystems =
                                          std.contract.Sequence
                                              [
                                                js2n.array.MinItems 1,
                                                js2n.array.UniqueItems,
                                                js2n.array.ArrayOf
                                                  (std.contract.any_of
                                                    [
                                                      js2n.Null,
                                                      Bool,
                                                      Number,
                                                      String,
                                                      js2n.record.Record
                                                        {
                                                          additional = 'None,
                                                          patterns = {},
                                                          properties =
                                                            {
                                                                device = String,
                                                                format =
                                                                  std.contract.Sequence
                                                                      [
                                                                        std.enum.TagOrString,
                                                                        [|
                                                                          'none,
                                                                          'swap,
                                                                          'vfat,
                                                                          'xfs,
                                                                          'btrfs,
                                                                          'ext4
                                                                        |]
                                                                      ],
                                                                label = String,
                                                                mount_options =
                                                                  std.contract.Sequence
                                                                      [
                                                                        refs."allOf.1.oneOf.0.allOf.1.definitions.string_options",
                                                                        Array
                                                                          Dyn
                                                                      ],
                                                                options =
                                                                  std.contract.Sequence
                                                                      [
                                                                        refs."allOf.1.oneOf.0.allOf.1.definitions.string_options",
                                                                        Array
                                                                          Dyn
                                                                      ],
                                                                path = String,
                                                                uuid =
                                                                  std.contract.any_of
                                                                      [
                                                                        js2n.Null,
                                                                        Bool,
                                                                        {
                                                                          _ | Dyn
                                                                        },
                                                                        Array
                                                                          Dyn,
                                                                        Number,
                                                                        String
                                                                      ],
                                                                wipe_filesystem =
                                                                  Bool,
                                                                with_mount_unit =
                                                                  Bool,
                                                              },
                                                          required =
                                                            {
                                                                device = true,
                                                                format = true,
                                                              },
                                                        },
                                                      Array Dyn
                                                    ])
                                              ],
                                        links =
                                          std.contract.Sequence
                                              [
                                                js2n.array.MinItems 1,
                                                js2n.array.UniqueItems,
                                                js2n.array.ArrayOf
                                                  (std.contract.any_of
                                                    [
                                                      js2n.Null,
                                                      Bool,
                                                      Number,
                                                      String,
                                                      js2n.record.Record
                                                        {
                                                          additional = 'None,
                                                          patterns = {},
                                                          properties =
                                                            {
                                                                group =
                                                                  std.contract.Sequence
                                                                      [
                                                                        refs."allOf.1.oneOf.0.allOf.1.definitions.group",
                                                                        {
                                                                          _ | Dyn
                                                                        }
                                                                      ],
                                                                hard = Bool,
                                                                overwrite =
                                                                  Bool,
                                                                path = String,
                                                                target = String,
                                                                user =
                                                                  std.contract.Sequence
                                                                      [
                                                                        refs."allOf.1.oneOf.0.allOf.1.definitions.user",
                                                                        {
                                                                          _ | Dyn
                                                                        }
                                                                      ],
                                                              },
                                                          required =
                                                            { path = true, },
                                                        },
                                                      Array Dyn
                                                    ])
                                              ],
                                        luks =
                                          std.contract.Sequence
                                              [
                                                js2n.array.MinItems 1,
                                                js2n.array.UniqueItems,
                                                js2n.array.ArrayOf
                                                  (std.contract.any_of
                                                    [
                                                      js2n.Null,
                                                      Bool,
                                                      Number,
                                                      String,
                                                      js2n.record.Record
                                                        {
                                                          additional = 'None,
                                                          patterns = {},
                                                          properties =
                                                            {
                                                                clevis =
                                                                  js2n.record.Record
                                                                      {
                                                                        additional =
                                                                          'None,
                                                                        patterns =
                                                                          {},
                                                                        properties =
                                                                          {
                                                                              custom =
                                                                                js2n.record.Record
                                                                                    {
                                                                                      additional =
                                                                                        'None,
                                                                                      patterns =
                                                                                        {},
                                                                                      properties =
                                                                                        {
                                                                                            config =
                                                                                              String,
                                                                                            needs_network =
                                                                                              Bool,
                                                                                            pin =
                                                                                              String,
                                                                                          },
                                                                                      required =
                                                                                        {
                                                                                            config =
                                                                                              true,
                                                                                            pin =
                                                                                              true,
                                                                                          },
                                                                                    },
                                                                              tang =
                                                                                std.contract.Sequence
                                                                                    [
                                                                                      refs."allOf.1.oneOf.0.allOf.1.definitions.tang",
                                                                                      Array
                                                                                        Dyn
                                                                                    ],
                                                                              threshold =
                                                                                std.number.Integer,
                                                                              tpm2 =
                                                                                Bool,
                                                                            },
                                                                        required =
                                                                          {},
                                                                      },
                                                                device = String,
                                                                key_file =
                                                                  std.contract.Sequence
                                                                      [
                                                                        refs."allOf.1.oneOf.0.allOf.1.definitions.contents",
                                                                        {
                                                                          _ | Dyn
                                                                        }
                                                                      ],
                                                                label = String,
                                                                name = String,
                                                                options =
                                                                  std.contract.Sequence
                                                                      [
                                                                        refs."allOf.1.oneOf.0.allOf.1.definitions.string_options",
                                                                        Array
                                                                          Dyn
                                                                      ],
                                                                uuid =
                                                                  std.contract.any_of
                                                                      [
                                                                        js2n.Null,
                                                                        Bool,
                                                                        {
                                                                          _ | Dyn
                                                                        },
                                                                        Array
                                                                          Dyn,
                                                                        Number,
                                                                        String
                                                                      ],
                                                                wipe_volume =
                                                                  Bool,
                                                              },
                                                          required =
                                                            {
                                                                device = true,
                                                                name = true,
                                                              },
                                                        },
                                                      Array Dyn
                                                    ])
                                              ],
                                        raid =
                                          std.contract.Sequence
                                              [
                                                js2n.array.MinItems 1,
                                                js2n.array.UniqueItems,
                                                js2n.array.ArrayOf
                                                  (std.contract.any_of
                                                    [
                                                      js2n.Null,
                                                      Bool,
                                                      Number,
                                                      String,
                                                      js2n.record.Record
                                                        {
                                                          additional = 'None,
                                                          patterns = {},
                                                          properties =
                                                            {
                                                                devices =
                                                                  std.contract.Sequence
                                                                      [
                                                                        refs."allOf.1.oneOf.0.allOf.1.definitions.string_options",
                                                                        Array
                                                                          Dyn
                                                                      ],
                                                                level =
                                                                  std.contract.Sequence
                                                                      [
                                                                        std.enum.TagOrString,
                                                                        [|
                                                                          '"10",
                                                                          'raid10,
                                                                          '"6",
                                                                          'raid6,
                                                                          '"5",
                                                                          'raid5,
                                                                          '"4",
                                                                          'raid4,
                                                                          'mirror,
                                                                          '"1",
                                                                          'raid1,
                                                                          'stripe,
                                                                          '"0",
                                                                          'raid0,
                                                                          'linear
                                                                        |]
                                                                      ],
                                                                name = String,
                                                                options =
                                                                  std.contract.Sequence
                                                                      [
                                                                        refs."allOf.1.oneOf.0.allOf.1.definitions.string_options",
                                                                        Array
                                                                          Dyn
                                                                      ],
                                                                spares =
                                                                  std.number.Integer,
                                                              },
                                                          required =
                                                            {
                                                                devices = true,
                                                                level = true,
                                                                name = true,
                                                              },
                                                        },
                                                      Array Dyn
                                                    ])
                                              ],
                                        trees =
                                          std.contract.Sequence
                                              [
                                                js2n.array.MinItems 1,
                                                js2n.array.UniqueItems,
                                                js2n.array.ArrayOf
                                                  (std.contract.any_of
                                                    [
                                                      js2n.Null,
                                                      Bool,
                                                      Number,
                                                      String,
                                                      js2n.record.Record
                                                        {
                                                          additional = 'None,
                                                          patterns = {},
                                                          properties =
                                                            {
                                                                local = String,
                                                                path = String,
                                                              },
                                                          required =
                                                            { local = true, },
                                                        },
                                                      Array Dyn
                                                    ])
                                              ],
                                      },
                                  required = {},
                                },
                          systemd =
                            js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        units =
                                          std.contract.Sequence
                                              [
                                                js2n.array.MinItems 1,
                                                js2n.array.UniqueItems,
                                                js2n.array.ArrayOf
                                                  (std.contract.any_of
                                                    [
                                                      js2n.Null,
                                                      Bool,
                                                      Number,
                                                      String,
                                                      js2n.record.Record
                                                        {
                                                          additional = 'None,
                                                          patterns = {},
                                                          properties =
                                                            {
                                                                contents =
                                                                  String,
                                                                dropins =
                                                                  std.contract.Sequence
                                                                      [
                                                                        js2n.array.MinItems
                                                                          1,
                                                                        js2n.array.UniqueItems,
                                                                        js2n.array.ArrayOf
                                                                          (std.contract.any_of
                                                                            [
                                                                              js2n.Null,
                                                                              Bool,
                                                                              Number,
                                                                              String,
                                                                              js2n.record.Record
                                                                                {
                                                                                  additional =
                                                                                    'None,
                                                                                  patterns =
                                                                                    {},
                                                                                  properties =
                                                                                    {
                                                                                        contents =
                                                                                          String,
                                                                                        name =
                                                                                          std.contract.any_of
                                                                                              [
                                                                                                js2n.Null,
                                                                                                Bool,
                                                                                                {
                                                                                                  _ | Dyn
                                                                                                },
                                                                                                Array
                                                                                                  Dyn,
                                                                                                Number,
                                                                                                String
                                                                                              ],
                                                                                      },
                                                                                  required =
                                                                                    {
                                                                                        name =
                                                                                          true,
                                                                                      },
                                                                                },
                                                                              Array
                                                                                Dyn
                                                                            ])
                                                                      ],
                                                                enabled = Bool,
                                                                mask = Bool,
                                                                name =
                                                                  std.contract.any_of
                                                                      [
                                                                        js2n.Null,
                                                                        Bool,
                                                                        {
                                                                          _ | Dyn
                                                                        },
                                                                        Array
                                                                          Dyn,
                                                                        Number,
                                                                        String
                                                                      ],
                                                              },
                                                          required =
                                                            { name = true, },
                                                        },
                                                      Array Dyn
                                                    ])
                                              ],
                                      },
                                  required = {},
                                },
                          variant = js2n.Always,
                          version =
                            std.contract.any_of
                                [
                                  js2n.Null,
                                  Bool,
                                  Number,
                                  String,
                                  { _ | Dyn },
                                  Array Dyn
                                ],
                        },
                    required = {},
                  }
              ],
            std.contract.Sequence
              [
                js2n.record.Record
                  {
                    additional = 'Some Dyn,
                    patterns = {},
                    properties =
                      {
                          variant = js2n.Const "fcos",
                          version = js2n.Const "1.5.0",
                        },
                    required = {},
                  },
                js2n.record.Record
                  {
                    additional = 'None,
                    patterns = {},
                    properties =
                      {
                          boot_device =
                            js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        layout =
                                          std.contract.Sequence
                                              [
                                                std.enum.TagOrString,
                                                [|
                                                  'x86_64,
                                                  'ppc64le,
                                                  'aarch64
                                                |]
                                              ],
                                        luks =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      discard = Bool,
                                                      tang =
                                                        std.contract.Sequence
                                                            [
                                                              refs."allOf.1.oneOf.1.allOf.1.definitions.tang",
                                                              Array Dyn
                                                            ],
                                                      threshold =
                                                        std.number.Integer,
                                                      tpm2 = Bool,
                                                    },
                                                required = {},
                                              },
                                        mirror =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      devices =
                                                        std.contract.Sequence
                                                            [
                                                              refs."allOf.1.oneOf.1.allOf.1.definitions.string_options",
                                                              Array Dyn
                                                            ],
                                                    },
                                                required = {},
                                              },
                                      },
                                  required = {},
                                },
                          grub =
                            js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        users =
                                          std.contract.Sequence
                                              [
                                                js2n.array.MinItems 1,
                                                js2n.array.UniqueItems,
                                                js2n.array.ArrayOf
                                                  (std.contract.any_of
                                                    [
                                                      js2n.Null,
                                                      Bool,
                                                      Number,
                                                      String,
                                                      js2n.record.Record
                                                        {
                                                          additional =
                                                            'Some Dyn,
                                                          patterns = {},
                                                          properties =
                                                            {
                                                                name = String,
                                                                password_hash =
                                                                  String,
                                                              },
                                                          required = {},
                                                        },
                                                      Array Dyn
                                                    ])
                                              ],
                                      },
                                  required = {},
                                },
                          ignition =
                            js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        config =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      "merge" =
                                                        std.contract.Sequence
                                                            [
                                                              js2n.array.MinItems
                                                                1,
                                                              js2n.array.UniqueItems,
                                                              js2n.array.ArrayOf
                                                                (std.contract.Sequence
                                                                  [
                                                                    refs."allOf.1.oneOf.1.allOf.1.definitions.contents",
                                                                    { _ | Dyn }
                                                                  ])
                                                            ],
                                                      replace =
                                                        std.contract.Sequence
                                                            [
                                                              refs."allOf.1.oneOf.1.allOf.1.definitions.contents",
                                                              { _ | Dyn }
                                                            ],
                                                    },
                                                required = {},
                                              },
                                        proxy =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      http_proxy = String,
                                                      https_proxy = String,
                                                      no_proxy =
                                                        std.contract.Sequence
                                                            [
                                                              refs."allOf.1.oneOf.1.allOf.1.definitions.string_options",
                                                              Array Dyn
                                                            ],
                                                    },
                                                required = {},
                                              },
                                        security =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      tls =
                                                        js2n.record.Record
                                                            {
                                                              additional =
                                                                'None,
                                                              patterns = {},
                                                              properties =
                                                                {
                                                                    certificate_authorities =
                                                                      std.contract.Sequence
                                                                          [
                                                                            js2n.array.MinItems
                                                                              1,
                                                                            js2n.array.UniqueItems,
                                                                            js2n.array.ArrayOf
                                                                              (std.contract.Sequence
                                                                                [
                                                                                  refs."allOf.1.oneOf.1.allOf.1.definitions.contents",
                                                                                  {
                                                                                    _ | Dyn
                                                                                  }
                                                                                ])
                                                                          ],
                                                                  },
                                                              required =
                                                                {
                                                                    certificate_authorities =
                                                                      true,
                                                                  },
                                                            },
                                                    },
                                                required = { tls = true, },
                                              },
                                        timeouts =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      http_response_headers =
                                                        std.number.Integer,
                                                      http_total =
                                                        std.number.Integer,
                                                    },
                                                required = {},
                                              },
                                      },
                                  required = {},
                                },
                          kernel_arguments =
                            js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        should_exist =
                                          std.contract.Sequence
                                              [
                                                refs."allOf.1.oneOf.1.allOf.1.definitions.string_options",
                                                Array Dyn
                                              ],
                                        should_not_exist =
                                          std.contract.Sequence
                                              [
                                                refs."allOf.1.oneOf.1.allOf.1.definitions.string_options",
                                                Array Dyn
                                              ],
                                      },
                                  required = {},
                                },
                          passwd =
                            js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        groups =
                                          std.contract.Sequence
                                              [
                                                js2n.array.MinItems 1,
                                                js2n.array.UniqueItems,
                                                js2n.array.ArrayOf
                                                  (std.contract.any_of
                                                    [
                                                      js2n.Null,
                                                      Bool,
                                                      Number,
                                                      String,
                                                      js2n.record.Record
                                                        {
                                                          additional = 'None,
                                                          patterns = {},
                                                          properties =
                                                            {
                                                                gid =
                                                                  std.number.Integer,
                                                                name = String,
                                                                password_hash =
                                                                  String,
                                                                should_exist =
                                                                  Bool,
                                                                system = Bool,
                                                              },
                                                          required =
                                                            { name = true, },
                                                        },
                                                      Array Dyn
                                                    ])
                                              ],
                                        users =
                                          std.contract.Sequence
                                              [
                                                js2n.array.MinItems 1,
                                                js2n.array.UniqueItems,
                                                js2n.array.ArrayOf
                                                  (std.contract.any_of
                                                    [
                                                      js2n.Null,
                                                      Bool,
                                                      Number,
                                                      String,
                                                      js2n.record.Record
                                                        {
                                                          additional = 'None,
                                                          patterns = {},
                                                          properties =
                                                            {
                                                                gecos = String,
                                                                groups =
                                                                  std.contract.Sequence
                                                                      [
                                                                        refs."allOf.1.oneOf.1.allOf.1.definitions.string_options",
                                                                        Array
                                                                          Dyn
                                                                      ],
                                                                home_dir =
                                                                  String,
                                                                name = String,
                                                                no_create_home =
                                                                  Bool,
                                                                no_log_init =
                                                                  Bool,
                                                                no_user_group =
                                                                  Bool,
                                                                password_hash =
                                                                  String,
                                                                primary_group =
                                                                  String,
                                                                shell = String,
                                                                should_exist =
                                                                  Bool,
                                                                ssh_authorized_keys =
                                                                  std.contract.Sequence
                                                                      [
                                                                        js2n.array.ArrayOf
                                                                          (std.contract.any_of
                                                                            [
                                                                              js2n.Null,
                                                                              Bool,
                                                                              {
                                                                                _ | Dyn
                                                                              },
                                                                              Array
                                                                                Dyn,
                                                                              Number,
                                                                              String
                                                                            ]),
                                                                        refs."allOf.1.oneOf.1.allOf.1.definitions.string_options"
                                                                      ],
                                                                ssh_authorized_keys_local =
                                                                  std.contract.Sequence
                                                                      [
                                                                        refs."allOf.1.oneOf.1.allOf.1.definitions.string_options",
                                                                        Array
                                                                          Dyn
                                                                      ],
                                                                system = Bool,
                                                                uid =
                                                                  std.number.Integer,
                                                              },
                                                          required =
                                                            { name = true, },
                                                        },
                                                      Array Dyn
                                                    ])
                                              ],
                                      },
                                  required = {},
                                },
                          storage =
                            js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        directories =
                                          std.contract.Sequence
                                              [
                                                js2n.array.MinItems 1,
                                                js2n.array.UniqueItems,
                                                js2n.array.ArrayOf
                                                  (std.contract.any_of
                                                    [
                                                      js2n.Null,
                                                      Bool,
                                                      Number,
                                                      String,
                                                      js2n.record.Record
                                                        {
                                                          additional = 'None,
                                                          patterns = {},
                                                          properties =
                                                            {
                                                                group =
                                                                  std.contract.Sequence
                                                                      [
                                                                        refs."allOf.1.oneOf.1.allOf.1.definitions.group",
                                                                        {
                                                                          _ | Dyn
                                                                        }
                                                                      ],
                                                                mode =
                                                                  std.number.Integer,
                                                                overwrite =
                                                                  Bool,
                                                                path = String,
                                                                user =
                                                                  std.contract.Sequence
                                                                      [
                                                                        refs."allOf.1.oneOf.1.allOf.1.definitions.user",
                                                                        {
                                                                          _ | Dyn
                                                                        }
                                                                      ],
                                                              },
                                                          required =
                                                            { path = true, },
                                                        },
                                                      Array Dyn
                                                    ])
                                              ],
                                        disks =
                                          std.contract.Sequence
                                              [
                                                js2n.array.MinItems 1,
                                                js2n.array.UniqueItems,
                                                js2n.array.ArrayOf
                                                  (std.contract.any_of
                                                    [
                                                      js2n.Null,
                                                      Bool,
                                                      Number,
                                                      String,
                                                      js2n.record.Record
                                                        {
                                                          additional = 'None,
                                                          patterns = {},
                                                          properties =
                                                            {
                                                                device = String,
                                                                partitions =
                                                                  std.contract.Sequence
                                                                      [
                                                                        js2n.array.MinItems
                                                                          1,
                                                                        js2n.array.UniqueItems,
                                                                        js2n.array.ArrayOf
                                                                          (std.contract.any_of
                                                                            [
                                                                              js2n.Null,
                                                                              Bool,
                                                                              Number,
                                                                              String,
                                                                              js2n.record.Record
                                                                                {
                                                                                  additional =
                                                                                    'None,
                                                                                  patterns =
                                                                                    {},
                                                                                  properties =
                                                                                    {
                                                                                        guid =
                                                                                          std.contract.any_of
                                                                                              [
                                                                                                js2n.Null,
                                                                                                Bool,
                                                                                                {
                                                                                                  _ | Dyn
                                                                                                },
                                                                                                Array
                                                                                                  Dyn,
                                                                                                Number,
                                                                                                String
                                                                                              ],
                                                                                        label =
                                                                                          String,
                                                                                        number =
                                                                                          std.number.Integer,
                                                                                        resize =
                                                                                          Bool,
                                                                                        should_exist =
                                                                                          Bool,
                                                                                        size_mib =
                                                                                          std.number.Integer,
                                                                                        start_mib =
                                                                                          std.number.Integer,
                                                                                        type_guid =
                                                                                          std.contract.any_of
                                                                                              [
                                                                                                js2n.Null,
                                                                                                Bool,
                                                                                                {
                                                                                                  _ | Dyn
                                                                                                },
                                                                                                Array
                                                                                                  Dyn,
                                                                                                Number,
                                                                                                String
                                                                                              ],
                                                                                        wipe_partition_entry =
                                                                                          Bool,
                                                                                      },
                                                                                  required =
                                                                                    {},
                                                                                },
                                                                              Array
                                                                                Dyn
                                                                            ])
                                                                      ],
                                                                wipe_table =
                                                                  Bool,
                                                              },
                                                          required =
                                                            { device = true, },
                                                        },
                                                      Array Dyn
                                                    ])
                                              ],
                                        files =
                                          std.contract.Sequence
                                              [
                                                js2n.array.MinItems 1,
                                                js2n.array.UniqueItems,
                                                js2n.array.ArrayOf
                                                  (std.contract.any_of
                                                    [
                                                      js2n.Null,
                                                      Bool,
                                                      Number,
                                                      String,
                                                      js2n.record.Record
                                                        {
                                                          additional = 'None,
                                                          patterns = {},
                                                          properties =
                                                            {
                                                                append =
                                                                  std.contract.Sequence
                                                                      [
                                                                        js2n.array.MinItems
                                                                          1,
                                                                        js2n.array.UniqueItems,
                                                                        js2n.array.ArrayOf
                                                                          (std.contract.Sequence
                                                                            [
                                                                              refs."allOf.1.oneOf.1.allOf.1.definitions.contents",
                                                                              {
                                                                                _ | Dyn
                                                                              }
                                                                            ])
                                                                      ],
                                                                contents =
                                                                  std.contract.Sequence
                                                                      [
                                                                        refs."allOf.1.oneOf.1.allOf.1.definitions.contents",
                                                                        {
                                                                          _ | Dyn
                                                                        }
                                                                      ],
                                                                group =
                                                                  std.contract.Sequence
                                                                      [
                                                                        refs."allOf.1.oneOf.1.allOf.1.definitions.group",
                                                                        {
                                                                          _ | Dyn
                                                                        }
                                                                      ],
                                                                mode =
                                                                  std.number.Integer,
                                                                overwrite =
                                                                  Bool,
                                                                path = String,
                                                                user =
                                                                  std.contract.Sequence
                                                                      [
                                                                        refs."allOf.1.oneOf.1.allOf.1.definitions.user",
                                                                        {
                                                                          _ | Dyn
                                                                        }
                                                                      ],
                                                              },
                                                          required =
                                                            { path = true, },
                                                        },
                                                      Array Dyn
                                                    ])
                                              ],
                                        filesystems =
                                          std.contract.Sequence
                                              [
                                                js2n.array.MinItems 1,
                                                js2n.array.UniqueItems,
                                                js2n.array.ArrayOf
                                                  (std.contract.any_of
                                                    [
                                                      js2n.Null,
                                                      Bool,
                                                      Number,
                                                      String,
                                                      js2n.record.Record
                                                        {
                                                          additional = 'None,
                                                          patterns = {},
                                                          properties =
                                                            {
                                                                device = String,
                                                                format =
                                                                  std.contract.Sequence
                                                                      [
                                                                        std.enum.TagOrString,
                                                                        [|
                                                                          'none,
                                                                          'swap,
                                                                          'vfat,
                                                                          'xfs,
                                                                          'btrfs,
                                                                          'ext4
                                                                        |]
                                                                      ],
                                                                label = String,
                                                                mount_options =
                                                                  std.contract.Sequence
                                                                      [
                                                                        refs."allOf.1.oneOf.1.allOf.1.definitions.string_options",
                                                                        Array
                                                                          Dyn
                                                                      ],
                                                                options =
                                                                  std.contract.Sequence
                                                                      [
                                                                        refs."allOf.1.oneOf.1.allOf.1.definitions.string_options",
                                                                        Array
                                                                          Dyn
                                                                      ],
                                                                path = String,
                                                                uuid =
                                                                  std.contract.any_of
                                                                      [
                                                                        js2n.Null,
                                                                        Bool,
                                                                        {
                                                                          _ | Dyn
                                                                        },
                                                                        Array
                                                                          Dyn,
                                                                        Number,
                                                                        String
                                                                      ],
                                                                wipe_filesystem =
                                                                  Bool,
                                                                with_mount_unit =
                                                                  Bool,
                                                              },
                                                          required =
                                                            {
                                                                device = true,
                                                                format = true,
                                                              },
                                                        },
                                                      Array Dyn
                                                    ])
                                              ],
                                        links =
                                          std.contract.Sequence
                                              [
                                                js2n.array.MinItems 1,
                                                js2n.array.UniqueItems,
                                                js2n.array.ArrayOf
                                                  (std.contract.any_of
                                                    [
                                                      js2n.Null,
                                                      Bool,
                                                      Number,
                                                      String,
                                                      js2n.record.Record
                                                        {
                                                          additional = 'None,
                                                          patterns = {},
                                                          properties =
                                                            {
                                                                group =
                                                                  std.contract.Sequence
                                                                      [
                                                                        refs."allOf.1.oneOf.1.allOf.1.definitions.group",
                                                                        {
                                                                          _ | Dyn
                                                                        }
                                                                      ],
                                                                hard = Bool,
                                                                overwrite =
                                                                  Bool,
                                                                path = String,
                                                                target = String,
                                                                user =
                                                                  std.contract.Sequence
                                                                      [
                                                                        refs."allOf.1.oneOf.1.allOf.1.definitions.user",
                                                                        {
                                                                          _ | Dyn
                                                                        }
                                                                      ],
                                                              },
                                                          required =
                                                            { path = true, },
                                                        },
                                                      Array Dyn
                                                    ])
                                              ],
                                        luks =
                                          std.contract.Sequence
                                              [
                                                js2n.array.MinItems 1,
                                                js2n.array.UniqueItems,
                                                js2n.array.ArrayOf
                                                  (std.contract.any_of
                                                    [
                                                      js2n.Null,
                                                      Bool,
                                                      Number,
                                                      String,
                                                      js2n.record.Record
                                                        {
                                                          additional = 'None,
                                                          patterns = {},
                                                          properties =
                                                            {
                                                                clevis =
                                                                  js2n.record.Record
                                                                      {
                                                                        additional =
                                                                          'None,
                                                                        patterns =
                                                                          {},
                                                                        properties =
                                                                          {
                                                                              custom =
                                                                                js2n.record.Record
                                                                                    {
                                                                                      additional =
                                                                                        'None,
                                                                                      patterns =
                                                                                        {},
                                                                                      properties =
                                                                                        {
                                                                                            config =
                                                                                              String,
                                                                                            needs_network =
                                                                                              Bool,
                                                                                            pin =
                                                                                              String,
                                                                                          },
                                                                                      required =
                                                                                        {
                                                                                            config =
                                                                                              true,
                                                                                            pin =
                                                                                              true,
                                                                                          },
                                                                                    },
                                                                              tang =
                                                                                std.contract.Sequence
                                                                                    [
                                                                                      refs."allOf.1.oneOf.1.allOf.1.definitions.tang",
                                                                                      Array
                                                                                        Dyn
                                                                                    ],
                                                                              threshold =
                                                                                std.number.Integer,
                                                                              tpm2 =
                                                                                Bool,
                                                                            },
                                                                        required =
                                                                          {},
                                                                      },
                                                                device = String,
                                                                discard = Bool,
                                                                key_file =
                                                                  std.contract.Sequence
                                                                      [
                                                                        refs."allOf.1.oneOf.1.allOf.1.definitions.contents",
                                                                        {
                                                                          _ | Dyn
                                                                        }
                                                                      ],
                                                                label = String,
                                                                name = String,
                                                                open_options =
                                                                  std.contract.Sequence
                                                                      [
                                                                        refs."allOf.1.oneOf.1.allOf.1.definitions.string_options",
                                                                        Array
                                                                          Dyn
                                                                      ],
                                                                options =
                                                                  std.contract.Sequence
                                                                      [
                                                                        refs."allOf.1.oneOf.1.allOf.1.definitions.string_options",
                                                                        Array
                                                                          Dyn
                                                                      ],
                                                                uuid =
                                                                  std.contract.any_of
                                                                      [
                                                                        js2n.Null,
                                                                        Bool,
                                                                        {
                                                                          _ | Dyn
                                                                        },
                                                                        Array
                                                                          Dyn,
                                                                        Number,
                                                                        String
                                                                      ],
                                                                wipe_volume =
                                                                  Bool,
                                                              },
                                                          required =
                                                            {
                                                                device = true,
                                                                name = true,
                                                              },
                                                        },
                                                      Array Dyn
                                                    ])
                                              ],
                                        raid =
                                          std.contract.Sequence
                                              [
                                                js2n.array.MinItems 1,
                                                js2n.array.UniqueItems,
                                                js2n.array.ArrayOf
                                                  (std.contract.any_of
                                                    [
                                                      js2n.Null,
                                                      Bool,
                                                      Number,
                                                      String,
                                                      js2n.record.Record
                                                        {
                                                          additional = 'None,
                                                          patterns = {},
                                                          properties =
                                                            {
                                                                devices =
                                                                  std.contract.Sequence
                                                                      [
                                                                        refs."allOf.1.oneOf.1.allOf.1.definitions.string_options",
                                                                        Array
                                                                          Dyn
                                                                      ],
                                                                level =
                                                                  std.contract.Sequence
                                                                      [
                                                                        std.enum.TagOrString,
                                                                        [|
                                                                          '"10",
                                                                          'raid10,
                                                                          '"6",
                                                                          'raid6,
                                                                          '"5",
                                                                          'raid5,
                                                                          '"4",
                                                                          'raid4,
                                                                          'mirror,
                                                                          '"1",
                                                                          'raid1,
                                                                          'stripe,
                                                                          '"0",
                                                                          'raid0,
                                                                          'linear
                                                                        |]
                                                                      ],
                                                                name = String,
                                                                options =
                                                                  std.contract.Sequence
                                                                      [
                                                                        refs."allOf.1.oneOf.1.allOf.1.definitions.string_options",
                                                                        Array
                                                                          Dyn
                                                                      ],
                                                                spares =
                                                                  std.number.Integer,
                                                              },
                                                          required =
                                                            {
                                                                devices = true,
                                                                level = true,
                                                                name = true,
                                                              },
                                                        },
                                                      Array Dyn
                                                    ])
                                              ],
                                        trees =
                                          std.contract.Sequence
                                              [
                                                js2n.array.MinItems 1,
                                                js2n.array.UniqueItems,
                                                js2n.array.ArrayOf
                                                  (std.contract.any_of
                                                    [
                                                      js2n.Null,
                                                      Bool,
                                                      Number,
                                                      String,
                                                      js2n.record.Record
                                                        {
                                                          additional = 'None,
                                                          patterns = {},
                                                          properties =
                                                            {
                                                                local = String,
                                                                path = String,
                                                              },
                                                          required =
                                                            { local = true, },
                                                        },
                                                      Array Dyn
                                                    ])
                                              ],
                                      },
                                  required = {},
                                },
                          systemd =
                            js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        units =
                                          std.contract.Sequence
                                              [
                                                js2n.array.MinItems 1,
                                                js2n.array.UniqueItems,
                                                js2n.array.ArrayOf
                                                  (std.contract.any_of
                                                    [
                                                      js2n.Null,
                                                      Bool,
                                                      Number,
                                                      String,
                                                      std.contract.Sequence
                                                        [
                                                          js2n.record.DependentContracts
                                                            {
                                                              contents =
                                                                std.contract.not
                                                                    (std.contract.any_of
                                                                      [
                                                                        js2n.Null,
                                                                        Bool,
                                                                        Number,
                                                                        String,
                                                                        js2n.record.Required
                                                                          [
                                                                            "contents_local"
                                                                          ],
                                                                        Array
                                                                          Dyn
                                                                      ]),
                                                              contents_local =
                                                                std.contract.not
                                                                    (std.contract.any_of
                                                                      [
                                                                        js2n.Null,
                                                                        Bool,
                                                                        Number,
                                                                        String,
                                                                        js2n.record.Required
                                                                          [
                                                                            "contents"
                                                                          ],
                                                                        Array
                                                                          Dyn
                                                                      ]),
                                                            },
                                                          js2n.record.Record
                                                            {
                                                              additional =
                                                                'None,
                                                              patterns = {},
                                                              properties =
                                                                {
                                                                    contents =
                                                                      String,
                                                                    contents_local =
                                                                      String,
                                                                    dropins =
                                                                      std.contract.Sequence
                                                                          [
                                                                            js2n.array.MinItems
                                                                              1,
                                                                            js2n.array.UniqueItems,
                                                                            js2n.array.ArrayOf
                                                                              (std.contract.Sequence
                                                                                [
                                                                                  std.contract.any_of
                                                                                    [
                                                                                      js2n.Null,
                                                                                      Bool,
                                                                                      Number,
                                                                                      String,
                                                                                      js2n.record.Record
                                                                                        {
                                                                                          additional =
                                                                                            'None,
                                                                                          patterns =
                                                                                            {},
                                                                                          properties =
                                                                                            {
                                                                                                contents =
                                                                                                  String,
                                                                                                contents_local =
                                                                                                  String,
                                                                                                name =
                                                                                                  std.contract.any_of
                                                                                                      [
                                                                                                        js2n.Null,
                                                                                                        Bool,
                                                                                                        {
                                                                                                          _ | Dyn
                                                                                                        },
                                                                                                        Array
                                                                                                          Dyn,
                                                                                                        Number,
                                                                                                        String
                                                                                                      ],
                                                                                              },
                                                                                          required =
                                                                                            {
                                                                                                name =
                                                                                                  true,
                                                                                              },
                                                                                        },
                                                                                      Array
                                                                                        Dyn
                                                                                    ],
                                                                                  js2n.OneOf
                                                                                    [
                                                                                      std.contract.any_of
                                                                                        [
                                                                                          js2n.Null,
                                                                                          Bool,
                                                                                          Number,
                                                                                          String,
                                                                                          js2n.record.Required
                                                                                            [
                                                                                              "contents"
                                                                                            ],
                                                                                          Array
                                                                                            Dyn
                                                                                        ],
                                                                                      std.contract.any_of
                                                                                        [
                                                                                          js2n.Null,
                                                                                          Bool,
                                                                                          Number,
                                                                                          String,
                                                                                          js2n.record.Required
                                                                                            [
                                                                                              "contents_local"
                                                                                            ],
                                                                                          Array
                                                                                            Dyn
                                                                                        ]
                                                                                    ]
                                                                                ])
                                                                          ],
                                                                    enabled =
                                                                      Bool,
                                                                    mask = Bool,
                                                                    name =
                                                                      std.contract.any_of
                                                                          [
                                                                            js2n.Null,
                                                                            Bool,
                                                                            {
                                                                              _ | Dyn
                                                                            },
                                                                            Array
                                                                              Dyn,
                                                                            Number,
                                                                            String
                                                                          ],
                                                                  },
                                                              required =
                                                                {
                                                                    name = true,
                                                                  },
                                                            }
                                                        ],
                                                      Array Dyn
                                                    ])
                                              ],
                                      },
                                  required = {},
                                },
                          variant = js2n.Always,
                          version =
                            std.contract.any_of
                                [
                                  js2n.Null,
                                  Bool,
                                  Number,
                                  String,
                                  { _ | Dyn },
                                  Array Dyn
                                ],
                        },
                    required = {},
                  }
              ],
            std.contract.Sequence
              [
                js2n.record.Record
                  {
                    additional = 'Some Dyn,
                    patterns = {},
                    properties =
                      {
                          variant = js2n.Const "fcos",
                          version = js2n.Const "1.6.0",
                        },
                    required = {},
                  },
                js2n.record.Record
                  {
                    additional = 'None,
                    patterns = {},
                    properties =
                      {
                          boot_device =
                            js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        layout =
                                          std.contract.Sequence
                                              [
                                                std.enum.TagOrString,
                                                [|
                                                  'x86_64,
                                                  's390x-zfcp,
                                                  's390x-virt,
                                                  's390x-eckd,
                                                  'ppc64le,
                                                  'aarch64
                                                |]
                                              ],
                                        luks =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      cex =
                                                        js2n.record.Record
                                                            {
                                                              additional =
                                                                'None,
                                                              patterns = {},
                                                              properties =
                                                                {
                                                                    enabled =
                                                                      Bool,
                                                                  },
                                                              required = {},
                                                            },
                                                      device = String,
                                                      discard = Bool,
                                                      tang =
                                                        std.contract.Sequence
                                                            [
                                                              refs."allOf.1.oneOf.2.allOf.1.definitions.tang",
                                                              Array Dyn
                                                            ],
                                                      threshold =
                                                        std.number.Integer,
                                                      tpm2 = Bool,
                                                    },
                                                required = {},
                                              },
                                        mirror =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      devices =
                                                        std.contract.Sequence
                                                            [
                                                              refs."allOf.1.oneOf.2.allOf.1.definitions.string_options",
                                                              Array Dyn
                                                            ],
                                                    },
                                                required = {},
                                              },
                                      },
                                  required = {},
                                },
                          grub =
                            js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        users =
                                          std.contract.Sequence
                                              [
                                                js2n.array.MinItems 1,
                                                js2n.array.UniqueItems,
                                                js2n.array.ArrayOf
                                                  (std.contract.any_of
                                                    [
                                                      js2n.Null,
                                                      Bool,
                                                      Number,
                                                      String,
                                                      js2n.record.Record
                                                        {
                                                          additional =
                                                            'Some Dyn,
                                                          patterns = {},
                                                          properties =
                                                            {
                                                                name = String,
                                                                password_hash =
                                                                  String,
                                                              },
                                                          required = {},
                                                        },
                                                      Array Dyn
                                                    ])
                                              ],
                                      },
                                  required = {},
                                },
                          ignition =
                            js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        config =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      "merge" =
                                                        std.contract.Sequence
                                                            [
                                                              js2n.array.MinItems
                                                                1,
                                                              js2n.array.UniqueItems,
                                                              js2n.array.ArrayOf
                                                                (std.contract.Sequence
                                                                  [
                                                                    refs."allOf.1.oneOf.2.allOf.1.definitions.contents",
                                                                    { _ | Dyn }
                                                                  ])
                                                            ],
                                                      replace =
                                                        std.contract.Sequence
                                                            [
                                                              refs."allOf.1.oneOf.2.allOf.1.definitions.contents",
                                                              { _ | Dyn }
                                                            ],
                                                    },
                                                required = {},
                                              },
                                        proxy =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      http_proxy = String,
                                                      https_proxy = String,
                                                      no_proxy =
                                                        std.contract.Sequence
                                                            [
                                                              refs."allOf.1.oneOf.2.allOf.1.definitions.string_options",
                                                              Array Dyn
                                                            ],
                                                    },
                                                required = {},
                                              },
                                        security =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      tls =
                                                        js2n.record.Record
                                                            {
                                                              additional =
                                                                'None,
                                                              patterns = {},
                                                              properties =
                                                                {
                                                                    certificate_authorities =
                                                                      std.contract.Sequence
                                                                          [
                                                                            js2n.array.MinItems
                                                                              1,
                                                                            js2n.array.UniqueItems,
                                                                            js2n.array.ArrayOf
                                                                              (std.contract.Sequence
                                                                                [
                                                                                  refs."allOf.1.oneOf.2.allOf.1.definitions.contents",
                                                                                  {
                                                                                    _ | Dyn
                                                                                  }
                                                                                ])
                                                                          ],
                                                                  },
                                                              required =
                                                                {
                                                                    certificate_authorities =
                                                                      true,
                                                                  },
                                                            },
                                                    },
                                                required = { tls = true, },
                                              },
                                        timeouts =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      http_response_headers =
                                                        std.number.Integer,
                                                      http_total =
                                                        std.number.Integer,
                                                    },
                                                required = {},
                                              },
                                      },
                                  required = {},
                                },
                          kernel_arguments =
                            js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        should_exist =
                                          std.contract.Sequence
                                              [
                                                refs."allOf.1.oneOf.2.allOf.1.definitions.string_options",
                                                Array Dyn
                                              ],
                                        should_not_exist =
                                          std.contract.Sequence
                                              [
                                                refs."allOf.1.oneOf.2.allOf.1.definitions.string_options",
                                                Array Dyn
                                              ],
                                      },
                                  required = {},
                                },
                          passwd =
                            js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        groups =
                                          std.contract.Sequence
                                              [
                                                js2n.array.MinItems 1,
                                                js2n.array.UniqueItems,
                                                js2n.array.ArrayOf
                                                  (std.contract.any_of
                                                    [
                                                      js2n.Null,
                                                      Bool,
                                                      Number,
                                                      String,
                                                      js2n.record.Record
                                                        {
                                                          additional = 'None,
                                                          patterns = {},
                                                          properties =
                                                            {
                                                                gid =
                                                                  std.number.Integer,
                                                                name = String,
                                                                password_hash =
                                                                  String,
                                                                should_exist =
                                                                  Bool,
                                                                system = Bool,
                                                              },
                                                          required =
                                                            { name = true, },
                                                        },
                                                      Array Dyn
                                                    ])
                                              ],
                                        users =
                                          std.contract.Sequence
                                              [
                                                js2n.array.MinItems 1,
                                                js2n.array.UniqueItems,
                                                js2n.array.ArrayOf
                                                  (std.contract.any_of
                                                    [
                                                      js2n.Null,
                                                      Bool,
                                                      Number,
                                                      String,
                                                      js2n.record.Record
                                                        {
                                                          additional = 'None,
                                                          patterns = {},
                                                          properties =
                                                            {
                                                                gecos = String,
                                                                groups =
                                                                  std.contract.Sequence
                                                                      [
                                                                        refs."allOf.1.oneOf.2.allOf.1.definitions.string_options",
                                                                        Array
                                                                          Dyn
                                                                      ],
                                                                home_dir =
                                                                  String,
                                                                name = String,
                                                                no_create_home =
                                                                  Bool,
                                                                no_log_init =
                                                                  Bool,
                                                                no_user_group =
                                                                  Bool,
                                                                password_hash =
                                                                  String,
                                                                primary_group =
                                                                  String,
                                                                shell = String,
                                                                should_exist =
                                                                  Bool,
                                                                ssh_authorized_keys =
                                                                  std.contract.Sequence
                                                                      [
                                                                        js2n.array.ArrayOf
                                                                          (std.contract.any_of
                                                                            [
                                                                              js2n.Null,
                                                                              Bool,
                                                                              {
                                                                                _ | Dyn
                                                                              },
                                                                              Array
                                                                                Dyn,
                                                                              Number,
                                                                              String
                                                                            ]),
                                                                        refs."allOf.1.oneOf.2.allOf.1.definitions.string_options"
                                                                      ],
                                                                ssh_authorized_keys_local =
                                                                  std.contract.Sequence
                                                                      [
                                                                        refs."allOf.1.oneOf.2.allOf.1.definitions.string_options",
                                                                        Array
                                                                          Dyn
                                                                      ],
                                                                system = Bool,
                                                                uid =
                                                                  std.number.Integer,
                                                              },
                                                          required =
                                                            { name = true, },
                                                        },
                                                      Array Dyn
                                                    ])
                                              ],
                                      },
                                  required = {},
                                },
                          storage =
                            js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        directories =
                                          std.contract.Sequence
                                              [
                                                js2n.array.MinItems 1,
                                                js2n.array.UniqueItems,
                                                js2n.array.ArrayOf
                                                  (std.contract.any_of
                                                    [
                                                      js2n.Null,
                                                      Bool,
                                                      Number,
                                                      String,
                                                      js2n.record.Record
                                                        {
                                                          additional = 'None,
                                                          patterns = {},
                                                          properties =
                                                            {
                                                                group =
                                                                  std.contract.Sequence
                                                                      [
                                                                        refs."allOf.1.oneOf.2.allOf.1.definitions.group",
                                                                        {
                                                                          _ | Dyn
                                                                        }
                                                                      ],
                                                                mode =
                                                                  std.number.Integer,
                                                                overwrite =
                                                                  Bool,
                                                                path = String,
                                                                user =
                                                                  std.contract.Sequence
                                                                      [
                                                                        refs."allOf.1.oneOf.2.allOf.1.definitions.user",
                                                                        {
                                                                          _ | Dyn
                                                                        }
                                                                      ],
                                                              },
                                                          required =
                                                            { path = true, },
                                                        },
                                                      Array Dyn
                                                    ])
                                              ],
                                        disks =
                                          std.contract.Sequence
                                              [
                                                js2n.array.MinItems 1,
                                                js2n.array.UniqueItems,
                                                js2n.array.ArrayOf
                                                  (std.contract.any_of
                                                    [
                                                      js2n.Null,
                                                      Bool,
                                                      Number,
                                                      String,
                                                      js2n.record.Record
                                                        {
                                                          additional = 'None,
                                                          patterns = {},
                                                          properties =
                                                            {
                                                                device = String,
                                                                partitions =
                                                                  std.contract.Sequence
                                                                      [
                                                                        js2n.array.MinItems
                                                                          1,
                                                                        js2n.array.UniqueItems,
                                                                        js2n.array.ArrayOf
                                                                          (std.contract.any_of
                                                                            [
                                                                              js2n.Null,
                                                                              Bool,
                                                                              Number,
                                                                              String,
                                                                              js2n.record.Record
                                                                                {
                                                                                  additional =
                                                                                    'None,
                                                                                  patterns =
                                                                                    {},
                                                                                  properties =
                                                                                    {
                                                                                        guid =
                                                                                          std.contract.any_of
                                                                                              [
                                                                                                js2n.Null,
                                                                                                Bool,
                                                                                                {
                                                                                                  _ | Dyn
                                                                                                },
                                                                                                Array
                                                                                                  Dyn,
                                                                                                Number,
                                                                                                String
                                                                                              ],
                                                                                        label =
                                                                                          String,
                                                                                        number =
                                                                                          std.number.Integer,
                                                                                        resize =
                                                                                          Bool,
                                                                                        should_exist =
                                                                                          Bool,
                                                                                        size_mib =
                                                                                          std.number.Integer,
                                                                                        start_mib =
                                                                                          std.number.Integer,
                                                                                        type_guid =
                                                                                          std.contract.any_of
                                                                                              [
                                                                                                js2n.Null,
                                                                                                Bool,
                                                                                                {
                                                                                                  _ | Dyn
                                                                                                },
                                                                                                Array
                                                                                                  Dyn,
                                                                                                Number,
                                                                                                String
                                                                                              ],
                                                                                        wipe_partition_entry =
                                                                                          Bool,
                                                                                      },
                                                                                  required =
                                                                                    {},
                                                                                },
                                                                              Array
                                                                                Dyn
                                                                            ])
                                                                      ],
                                                                wipe_table =
                                                                  Bool,
                                                              },
                                                          required =
                                                            { device = true, },
                                                        },
                                                      Array Dyn
                                                    ])
                                              ],
                                        files =
                                          std.contract.Sequence
                                              [
                                                js2n.array.MinItems 1,
                                                js2n.array.UniqueItems,
                                                js2n.array.ArrayOf
                                                  (std.contract.any_of
                                                    [
                                                      js2n.Null,
                                                      Bool,
                                                      Number,
                                                      String,
                                                      js2n.record.Record
                                                        {
                                                          additional = 'None,
                                                          patterns = {},
                                                          properties =
                                                            {
                                                                append =
                                                                  std.contract.Sequence
                                                                      [
                                                                        js2n.array.MinItems
                                                                          1,
                                                                        js2n.array.UniqueItems,
                                                                        js2n.array.ArrayOf
                                                                          (std.contract.Sequence
                                                                            [
                                                                              refs."allOf.1.oneOf.2.allOf.1.definitions.contents",
                                                                              {
                                                                                _ | Dyn
                                                                              }
                                                                            ])
                                                                      ],
                                                                contents =
                                                                  std.contract.Sequence
                                                                      [
                                                                        refs."allOf.1.oneOf.2.allOf.1.definitions.contents",
                                                                        {
                                                                          _ | Dyn
                                                                        }
                                                                      ],
                                                                group =
                                                                  std.contract.Sequence
                                                                      [
                                                                        refs."allOf.1.oneOf.2.allOf.1.definitions.group",
                                                                        {
                                                                          _ | Dyn
                                                                        }
                                                                      ],
                                                                mode =
                                                                  std.number.Integer,
                                                                overwrite =
                                                                  Bool,
                                                                path = String,
                                                                user =
                                                                  std.contract.Sequence
                                                                      [
                                                                        refs."allOf.1.oneOf.2.allOf.1.definitions.user",
                                                                        {
                                                                          _ | Dyn
                                                                        }
                                                                      ],
                                                              },
                                                          required =
                                                            { path = true, },
                                                        },
                                                      Array Dyn
                                                    ])
                                              ],
                                        filesystems =
                                          std.contract.Sequence
                                              [
                                                js2n.array.MinItems 1,
                                                js2n.array.UniqueItems,
                                                js2n.array.ArrayOf
                                                  (std.contract.any_of
                                                    [
                                                      js2n.Null,
                                                      Bool,
                                                      Number,
                                                      String,
                                                      js2n.record.Record
                                                        {
                                                          additional = 'None,
                                                          patterns = {},
                                                          properties =
                                                            {
                                                                device = String,
                                                                format =
                                                                  std.contract.Sequence
                                                                      [
                                                                        std.enum.TagOrString,
                                                                        [|
                                                                          'none,
                                                                          'swap,
                                                                          'vfat,
                                                                          'xfs,
                                                                          'btrfs,
                                                                          'ext4
                                                                        |]
                                                                      ],
                                                                label = String,
                                                                mount_options =
                                                                  std.contract.Sequence
                                                                      [
                                                                        refs."allOf.1.oneOf.2.allOf.1.definitions.string_options",
                                                                        Array
                                                                          Dyn
                                                                      ],
                                                                options =
                                                                  std.contract.Sequence
                                                                      [
                                                                        refs."allOf.1.oneOf.2.allOf.1.definitions.string_options",
                                                                        Array
                                                                          Dyn
                                                                      ],
                                                                path = String,
                                                                uuid =
                                                                  std.contract.any_of
                                                                      [
                                                                        js2n.Null,
                                                                        Bool,
                                                                        {
                                                                          _ | Dyn
                                                                        },
                                                                        Array
                                                                          Dyn,
                                                                        Number,
                                                                        String
                                                                      ],
                                                                wipe_filesystem =
                                                                  Bool,
                                                                with_mount_unit =
                                                                  Bool,
                                                              },
                                                          required =
                                                            {
                                                                device = true,
                                                                format = true,
                                                              },
                                                        },
                                                      Array Dyn
                                                    ])
                                              ],
                                        links =
                                          std.contract.Sequence
                                              [
                                                js2n.array.MinItems 1,
                                                js2n.array.UniqueItems,
                                                js2n.array.ArrayOf
                                                  (std.contract.any_of
                                                    [
                                                      js2n.Null,
                                                      Bool,
                                                      Number,
                                                      String,
                                                      js2n.record.Record
                                                        {
                                                          additional = 'None,
                                                          patterns = {},
                                                          properties =
                                                            {
                                                                group =
                                                                  std.contract.Sequence
                                                                      [
                                                                        refs."allOf.1.oneOf.2.allOf.1.definitions.group",
                                                                        {
                                                                          _ | Dyn
                                                                        }
                                                                      ],
                                                                hard = Bool,
                                                                overwrite =
                                                                  Bool,
                                                                path = String,
                                                                target = String,
                                                                user =
                                                                  std.contract.Sequence
                                                                      [
                                                                        refs."allOf.1.oneOf.2.allOf.1.definitions.user",
                                                                        {
                                                                          _ | Dyn
                                                                        }
                                                                      ],
                                                              },
                                                          required =
                                                            { path = true, },
                                                        },
                                                      Array Dyn
                                                    ])
                                              ],
                                        luks =
                                          std.contract.Sequence
                                              [
                                                js2n.array.MinItems 1,
                                                js2n.array.UniqueItems,
                                                js2n.array.ArrayOf
                                                  (std.contract.any_of
                                                    [
                                                      js2n.Null,
                                                      Bool,
                                                      Number,
                                                      String,
                                                      js2n.record.Record
                                                        {
                                                          additional = 'None,
                                                          patterns = {},
                                                          properties =
                                                            {
                                                                cex =
                                                                  js2n.record.Record
                                                                      {
                                                                        additional =
                                                                          'None,
                                                                        patterns =
                                                                          {},
                                                                        properties =
                                                                          {
                                                                              enabled =
                                                                                Bool,
                                                                            },
                                                                        required =
                                                                          {},
                                                                      },
                                                                clevis =
                                                                  js2n.record.Record
                                                                      {
                                                                        additional =
                                                                          'None,
                                                                        patterns =
                                                                          {},
                                                                        properties =
                                                                          {
                                                                              custom =
                                                                                js2n.record.Record
                                                                                    {
                                                                                      additional =
                                                                                        'None,
                                                                                      patterns =
                                                                                        {},
                                                                                      properties =
                                                                                        {
                                                                                            config =
                                                                                              String,
                                                                                            needs_network =
                                                                                              Bool,
                                                                                            pin =
                                                                                              String,
                                                                                          },
                                                                                      required =
                                                                                        {
                                                                                            config =
                                                                                              true,
                                                                                            pin =
                                                                                              true,
                                                                                          },
                                                                                    },
                                                                              tang =
                                                                                std.contract.Sequence
                                                                                    [
                                                                                      refs."allOf.1.oneOf.2.allOf.1.definitions.tang",
                                                                                      Array
                                                                                        Dyn
                                                                                    ],
                                                                              threshold =
                                                                                std.number.Integer,
                                                                              tpm2 =
                                                                                Bool,
                                                                            },
                                                                        required =
                                                                          {},
                                                                      },
                                                                device = String,
                                                                discard = Bool,
                                                                key_file =
                                                                  std.contract.Sequence
                                                                      [
                                                                        refs."allOf.1.oneOf.2.allOf.1.definitions.contents",
                                                                        {
                                                                          _ | Dyn
                                                                        }
                                                                      ],
                                                                label = String,
                                                                name = String,
                                                                open_options =
                                                                  std.contract.Sequence
                                                                      [
                                                                        refs."allOf.1.oneOf.2.allOf.1.definitions.string_options",
                                                                        Array
                                                                          Dyn
                                                                      ],
                                                                options =
                                                                  std.contract.Sequence
                                                                      [
                                                                        refs."allOf.1.oneOf.2.allOf.1.definitions.string_options",
                                                                        Array
                                                                          Dyn
                                                                      ],
                                                                uuid =
                                                                  std.contract.any_of
                                                                      [
                                                                        js2n.Null,
                                                                        Bool,
                                                                        {
                                                                          _ | Dyn
                                                                        },
                                                                        Array
                                                                          Dyn,
                                                                        Number,
                                                                        String
                                                                      ],
                                                                wipe_volume =
                                                                  Bool,
                                                              },
                                                          required =
                                                            {
                                                                device = true,
                                                                name = true,
                                                              },
                                                        },
                                                      Array Dyn
                                                    ])
                                              ],
                                        raid =
                                          std.contract.Sequence
                                              [
                                                js2n.array.MinItems 1,
                                                js2n.array.UniqueItems,
                                                js2n.array.ArrayOf
                                                  (std.contract.any_of
                                                    [
                                                      js2n.Null,
                                                      Bool,
                                                      Number,
                                                      String,
                                                      js2n.record.Record
                                                        {
                                                          additional = 'None,
                                                          patterns = {},
                                                          properties =
                                                            {
                                                                devices =
                                                                  std.contract.Sequence
                                                                      [
                                                                        refs."allOf.1.oneOf.2.allOf.1.definitions.string_options",
                                                                        Array
                                                                          Dyn
                                                                      ],
                                                                level =
                                                                  std.contract.Sequence
                                                                      [
                                                                        std.enum.TagOrString,
                                                                        [|
                                                                          '"10",
                                                                          'raid10,
                                                                          '"6",
                                                                          'raid6,
                                                                          '"5",
                                                                          'raid5,
                                                                          '"4",
                                                                          'raid4,
                                                                          'mirror,
                                                                          '"1",
                                                                          'raid1,
                                                                          'stripe,
                                                                          '"0",
                                                                          'raid0,
                                                                          'linear
                                                                        |]
                                                                      ],
                                                                name = String,
                                                                options =
                                                                  std.contract.Sequence
                                                                      [
                                                                        refs."allOf.1.oneOf.2.allOf.1.definitions.string_options",
                                                                        Array
                                                                          Dyn
                                                                      ],
                                                                spares =
                                                                  std.number.Integer,
                                                              },
                                                          required =
                                                            {
                                                                devices = true,
                                                                level = true,
                                                                name = true,
                                                              },
                                                        },
                                                      Array Dyn
                                                    ])
                                              ],
                                        trees =
                                          std.contract.Sequence
                                              [
                                                js2n.array.MinItems 1,
                                                js2n.array.UniqueItems,
                                                js2n.array.ArrayOf
                                                  (std.contract.any_of
                                                    [
                                                      js2n.Null,
                                                      Bool,
                                                      Number,
                                                      String,
                                                      js2n.record.Record
                                                        {
                                                          additional = 'None,
                                                          patterns = {},
                                                          properties =
                                                            {
                                                                local = String,
                                                                path = String,
                                                              },
                                                          required =
                                                            { local = true, },
                                                        },
                                                      Array Dyn
                                                    ])
                                              ],
                                      },
                                  required = {},
                                },
                          systemd =
                            js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        units =
                                          std.contract.Sequence
                                              [
                                                js2n.array.MinItems 1,
                                                js2n.array.UniqueItems,
                                                js2n.array.ArrayOf
                                                  (std.contract.any_of
                                                    [
                                                      js2n.Null,
                                                      Bool,
                                                      Number,
                                                      String,
                                                      std.contract.Sequence
                                                        [
                                                          js2n.record.DependentContracts
                                                            {
                                                              contents =
                                                                std.contract.not
                                                                    (std.contract.any_of
                                                                      [
                                                                        js2n.Null,
                                                                        Bool,
                                                                        Number,
                                                                        String,
                                                                        js2n.record.Required
                                                                          [
                                                                            "contents_local"
                                                                          ],
                                                                        Array
                                                                          Dyn
                                                                      ]),
                                                              contents_local =
                                                                std.contract.not
                                                                    (std.contract.any_of
                                                                      [
                                                                        js2n.Null,
                                                                        Bool,
                                                                        Number,
                                                                        String,
                                                                        js2n.record.Required
                                                                          [
                                                                            "contents"
                                                                          ],
                                                                        Array
                                                                          Dyn
                                                                      ]),
                                                            },
                                                          js2n.record.Record
                                                            {
                                                              additional =
                                                                'None,
                                                              patterns = {},
                                                              properties =
                                                                {
                                                                    contents =
                                                                      String,
                                                                    contents_local =
                                                                      String,
                                                                    dropins =
                                                                      std.contract.Sequence
                                                                          [
                                                                            js2n.array.MinItems
                                                                              1,
                                                                            js2n.array.UniqueItems,
                                                                            js2n.array.ArrayOf
                                                                              (std.contract.Sequence
                                                                                [
                                                                                  std.contract.any_of
                                                                                    [
                                                                                      js2n.Null,
                                                                                      Bool,
                                                                                      Number,
                                                                                      String,
                                                                                      js2n.record.Record
                                                                                        {
                                                                                          additional =
                                                                                            'None,
                                                                                          patterns =
                                                                                            {},
                                                                                          properties =
                                                                                            {
                                                                                                contents =
                                                                                                  String,
                                                                                                contents_local =
                                                                                                  String,
                                                                                                name =
                                                                                                  std.contract.any_of
                                                                                                      [
                                                                                                        js2n.Null,
                                                                                                        Bool,
                                                                                                        {
                                                                                                          _ | Dyn
                                                                                                        },
                                                                                                        Array
                                                                                                          Dyn,
                                                                                                        Number,
                                                                                                        String
                                                                                                      ],
                                                                                              },
                                                                                          required =
                                                                                            {
                                                                                                name =
                                                                                                  true,
                                                                                              },
                                                                                        },
                                                                                      Array
                                                                                        Dyn
                                                                                    ],
                                                                                  js2n.OneOf
                                                                                    [
                                                                                      std.contract.any_of
                                                                                        [
                                                                                          js2n.Null,
                                                                                          Bool,
                                                                                          Number,
                                                                                          String,
                                                                                          js2n.record.Required
                                                                                            [
                                                                                              "contents"
                                                                                            ],
                                                                                          Array
                                                                                            Dyn
                                                                                        ],
                                                                                      std.contract.any_of
                                                                                        [
                                                                                          js2n.Null,
                                                                                          Bool,
                                                                                          Number,
                                                                                          String,
                                                                                          js2n.record.Required
                                                                                            [
                                                                                              "contents_local"
                                                                                            ],
                                                                                          Array
                                                                                            Dyn
                                                                                        ]
                                                                                    ]
                                                                                ])
                                                                          ],
                                                                    enabled =
                                                                      Bool,
                                                                    mask = Bool,
                                                                    name =
                                                                      std.contract.any_of
                                                                          [
                                                                            js2n.Null,
                                                                            Bool,
                                                                            {
                                                                              _ | Dyn
                                                                            },
                                                                            Array
                                                                              Dyn,
                                                                            Number,
                                                                            String
                                                                          ],
                                                                  },
                                                              required =
                                                                {
                                                                    name = true,
                                                                  },
                                                            }
                                                        ],
                                                      Array Dyn
                                                    ])
                                              ],
                                      },
                                  required = {},
                                },
                          variant = js2n.Always,
                          version =
                            std.contract.any_of
                                [
                                  js2n.Null,
                                  Bool,
                                  Number,
                                  String,
                                  { _ | Dyn },
                                  Array Dyn
                                ],
                        },
                    required = {},
                  }
              ],
            std.contract.Sequence
              [
                js2n.record.Record
                  {
                    additional = 'Some Dyn,
                    patterns = {},
                    properties =
                      {
                          variant = js2n.Const "flatcar",
                          version = js2n.Const "1.1.0",
                        },
                    required = {},
                  },
                js2n.record.Record
                  {
                    additional = 'None,
                    patterns = {},
                    properties =
                      {
                          ignition =
                            js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        config =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      "merge" =
                                                        std.contract.Sequence
                                                            [
                                                              js2n.array.MinItems
                                                                1,
                                                              js2n.array.UniqueItems,
                                                              js2n.array.ArrayOf
                                                                (std.contract.Sequence
                                                                  [
                                                                    refs."allOf.1.oneOf.3.allOf.1.definitions.contents",
                                                                    { _ | Dyn }
                                                                  ])
                                                            ],
                                                      replace =
                                                        std.contract.Sequence
                                                            [
                                                              refs."allOf.1.oneOf.3.allOf.1.definitions.contents",
                                                              { _ | Dyn }
                                                            ],
                                                    },
                                                required = {},
                                              },
                                        proxy =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      http_proxy = String,
                                                      https_proxy = String,
                                                      no_proxy =
                                                        std.contract.Sequence
                                                            [
                                                              refs."allOf.1.oneOf.3.allOf.1.definitions.string_options",
                                                              Array Dyn
                                                            ],
                                                    },
                                                required = {},
                                              },
                                        security =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      tls =
                                                        js2n.record.Record
                                                            {
                                                              additional =
                                                                'None,
                                                              patterns = {},
                                                              properties =
                                                                {
                                                                    certificate_authorities =
                                                                      std.contract.Sequence
                                                                          [
                                                                            js2n.array.MinItems
                                                                              1,
                                                                            js2n.array.UniqueItems,
                                                                            js2n.array.ArrayOf
                                                                              (std.contract.Sequence
                                                                                [
                                                                                  refs."allOf.1.oneOf.3.allOf.1.definitions.contents",
                                                                                  {
                                                                                    _ | Dyn
                                                                                  }
                                                                                ])
                                                                          ],
                                                                  },
                                                              required =
                                                                {
                                                                    certificate_authorities =
                                                                      true,
                                                                  },
                                                            },
                                                    },
                                                required = { tls = true, },
                                              },
                                        timeouts =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      http_response_headers =
                                                        std.number.Integer,
                                                      http_total =
                                                        std.number.Integer,
                                                    },
                                                required = {},
                                              },
                                      },
                                  required = {},
                                },
                          kernel_arguments =
                            js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        should_exist =
                                          std.contract.Sequence
                                              [
                                                refs."allOf.1.oneOf.3.allOf.1.definitions.string_options",
                                                Array Dyn
                                              ],
                                        should_not_exist =
                                          std.contract.Sequence
                                              [
                                                refs."allOf.1.oneOf.3.allOf.1.definitions.string_options",
                                                Array Dyn
                                              ],
                                      },
                                  required = {},
                                },
                          passwd =
                            js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        groups =
                                          std.contract.Sequence
                                              [
                                                js2n.array.MinItems 1,
                                                js2n.array.UniqueItems,
                                                js2n.array.ArrayOf
                                                  (std.contract.any_of
                                                    [
                                                      js2n.Null,
                                                      Bool,
                                                      Number,
                                                      String,
                                                      js2n.record.Record
                                                        {
                                                          additional = 'None,
                                                          patterns = {},
                                                          properties =
                                                            {
                                                                gid =
                                                                  std.number.Integer,
                                                                name = String,
                                                                password_hash =
                                                                  String,
                                                                should_exist =
                                                                  Bool,
                                                                system = Bool,
                                                              },
                                                          required =
                                                            { name = true, },
                                                        },
                                                      Array Dyn
                                                    ])
                                              ],
                                        users =
                                          std.contract.Sequence
                                              [
                                                js2n.array.MinItems 1,
                                                js2n.array.UniqueItems,
                                                js2n.array.ArrayOf
                                                  (std.contract.any_of
                                                    [
                                                      js2n.Null,
                                                      Bool,
                                                      Number,
                                                      String,
                                                      js2n.record.Record
                                                        {
                                                          additional = 'None,
                                                          patterns = {},
                                                          properties =
                                                            {
                                                                gecos = String,
                                                                groups =
                                                                  std.contract.Sequence
                                                                      [
                                                                        refs."allOf.1.oneOf.3.allOf.1.definitions.string_options",
                                                                        Array
                                                                          Dyn
                                                                      ],
                                                                home_dir =
                                                                  String,
                                                                name = String,
                                                                no_create_home =
                                                                  Bool,
                                                                no_log_init =
                                                                  Bool,
                                                                no_user_group =
                                                                  Bool,
                                                                password_hash =
                                                                  String,
                                                                primary_group =
                                                                  String,
                                                                shell = String,
                                                                should_exist =
                                                                  Bool,
                                                                ssh_authorized_keys =
                                                                  std.contract.Sequence
                                                                      [
                                                                        js2n.array.ArrayOf
                                                                          (std.contract.any_of
                                                                            [
                                                                              js2n.Null,
                                                                              Bool,
                                                                              {
                                                                                _ | Dyn
                                                                              },
                                                                              Array
                                                                                Dyn,
                                                                              Number,
                                                                              String
                                                                            ]),
                                                                        refs."allOf.1.oneOf.3.allOf.1.definitions.string_options"
                                                                      ],
                                                                ssh_authorized_keys_local =
                                                                  std.contract.Sequence
                                                                      [
                                                                        refs."allOf.1.oneOf.3.allOf.1.definitions.string_options",
                                                                        Array
                                                                          Dyn
                                                                      ],
                                                                system = Bool,
                                                                uid =
                                                                  std.number.Integer,
                                                              },
                                                          required =
                                                            { name = true, },
                                                        },
                                                      Array Dyn
                                                    ])
                                              ],
                                      },
                                  required = {},
                                },
                          storage =
                            js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        directories =
                                          std.contract.Sequence
                                              [
                                                js2n.array.MinItems 1,
                                                js2n.array.UniqueItems,
                                                js2n.array.ArrayOf
                                                  (std.contract.any_of
                                                    [
                                                      js2n.Null,
                                                      Bool,
                                                      Number,
                                                      String,
                                                      js2n.record.Record
                                                        {
                                                          additional = 'None,
                                                          patterns = {},
                                                          properties =
                                                            {
                                                                group =
                                                                  std.contract.Sequence
                                                                      [
                                                                        refs."allOf.1.oneOf.3.allOf.1.definitions.group",
                                                                        {
                                                                          _ | Dyn
                                                                        }
                                                                      ],
                                                                mode =
                                                                  std.number.Integer,
                                                                overwrite =
                                                                  Bool,
                                                                path = String,
                                                                user =
                                                                  std.contract.Sequence
                                                                      [
                                                                        refs."allOf.1.oneOf.3.allOf.1.definitions.user",
                                                                        {
                                                                          _ | Dyn
                                                                        }
                                                                      ],
                                                              },
                                                          required =
                                                            { path = true, },
                                                        },
                                                      Array Dyn
                                                    ])
                                              ],
                                        disks =
                                          std.contract.Sequence
                                              [
                                                js2n.array.MinItems 1,
                                                js2n.array.UniqueItems,
                                                js2n.array.ArrayOf
                                                  (std.contract.any_of
                                                    [
                                                      js2n.Null,
                                                      Bool,
                                                      Number,
                                                      String,
                                                      js2n.record.Record
                                                        {
                                                          additional = 'None,
                                                          patterns = {},
                                                          properties =
                                                            {
                                                                device = String,
                                                                partitions =
                                                                  std.contract.Sequence
                                                                      [
                                                                        js2n.array.MinItems
                                                                          1,
                                                                        js2n.array.UniqueItems,
                                                                        js2n.array.ArrayOf
                                                                          (std.contract.any_of
                                                                            [
                                                                              js2n.Null,
                                                                              Bool,
                                                                              Number,
                                                                              String,
                                                                              js2n.record.Record
                                                                                {
                                                                                  additional =
                                                                                    'None,
                                                                                  patterns =
                                                                                    {},
                                                                                  properties =
                                                                                    {
                                                                                        guid =
                                                                                          std.contract.any_of
                                                                                              [
                                                                                                js2n.Null,
                                                                                                Bool,
                                                                                                {
                                                                                                  _ | Dyn
                                                                                                },
                                                                                                Array
                                                                                                  Dyn,
                                                                                                Number,
                                                                                                String
                                                                                              ],
                                                                                        label =
                                                                                          String,
                                                                                        number =
                                                                                          std.number.Integer,
                                                                                        resize =
                                                                                          Bool,
                                                                                        should_exist =
                                                                                          Bool,
                                                                                        size_mib =
                                                                                          std.number.Integer,
                                                                                        start_mib =
                                                                                          std.number.Integer,
                                                                                        type_guid =
                                                                                          std.contract.any_of
                                                                                              [
                                                                                                js2n.Null,
                                                                                                Bool,
                                                                                                {
                                                                                                  _ | Dyn
                                                                                                },
                                                                                                Array
                                                                                                  Dyn,
                                                                                                Number,
                                                                                                String
                                                                                              ],
                                                                                        wipe_partition_entry =
                                                                                          Bool,
                                                                                      },
                                                                                  required =
                                                                                    {},
                                                                                },
                                                                              Array
                                                                                Dyn
                                                                            ])
                                                                      ],
                                                                wipe_table =
                                                                  Bool,
                                                              },
                                                          required =
                                                            { device = true, },
                                                        },
                                                      Array Dyn
                                                    ])
                                              ],
                                        files =
                                          std.contract.Sequence
                                              [
                                                js2n.array.MinItems 1,
                                                js2n.array.UniqueItems,
                                                js2n.array.ArrayOf
                                                  (std.contract.any_of
                                                    [
                                                      js2n.Null,
                                                      Bool,
                                                      Number,
                                                      String,
                                                      js2n.record.Record
                                                        {
                                                          additional = 'None,
                                                          patterns = {},
                                                          properties =
                                                            {
                                                                append =
                                                                  std.contract.Sequence
                                                                      [
                                                                        js2n.array.MinItems
                                                                          1,
                                                                        js2n.array.UniqueItems,
                                                                        js2n.array.ArrayOf
                                                                          (std.contract.Sequence
                                                                            [
                                                                              refs."allOf.1.oneOf.3.allOf.1.definitions.contents",
                                                                              {
                                                                                _ | Dyn
                                                                              }
                                                                            ])
                                                                      ],
                                                                contents =
                                                                  std.contract.Sequence
                                                                      [
                                                                        refs."allOf.1.oneOf.3.allOf.1.definitions.contents",
                                                                        {
                                                                          _ | Dyn
                                                                        }
                                                                      ],
                                                                group =
                                                                  std.contract.Sequence
                                                                      [
                                                                        refs."allOf.1.oneOf.3.allOf.1.definitions.group",
                                                                        {
                                                                          _ | Dyn
                                                                        }
                                                                      ],
                                                                mode =
                                                                  std.number.Integer,
                                                                overwrite =
                                                                  Bool,
                                                                path = String,
                                                                user =
                                                                  std.contract.Sequence
                                                                      [
                                                                        refs."allOf.1.oneOf.3.allOf.1.definitions.user",
                                                                        {
                                                                          _ | Dyn
                                                                        }
                                                                      ],
                                                              },
                                                          required =
                                                            { path = true, },
                                                        },
                                                      Array Dyn
                                                    ])
                                              ],
                                        filesystems =
                                          std.contract.Sequence
                                              [
                                                js2n.array.MinItems 1,
                                                js2n.array.UniqueItems,
                                                js2n.array.ArrayOf
                                                  (std.contract.any_of
                                                    [
                                                      js2n.Null,
                                                      Bool,
                                                      Number,
                                                      String,
                                                      js2n.record.Record
                                                        {
                                                          additional = 'None,
                                                          patterns = {},
                                                          properties =
                                                            {
                                                                device = String,
                                                                format =
                                                                  std.contract.Sequence
                                                                      [
                                                                        std.enum.TagOrString,
                                                                        [|
                                                                          'none,
                                                                          'swap,
                                                                          'vfat,
                                                                          'xfs,
                                                                          'btrfs,
                                                                          'ext4
                                                                        |]
                                                                      ],
                                                                label = String,
                                                                mount_options =
                                                                  std.contract.Sequence
                                                                      [
                                                                        refs."allOf.1.oneOf.3.allOf.1.definitions.string_options",
                                                                        Array
                                                                          Dyn
                                                                      ],
                                                                options =
                                                                  std.contract.Sequence
                                                                      [
                                                                        refs."allOf.1.oneOf.3.allOf.1.definitions.string_options",
                                                                        Array
                                                                          Dyn
                                                                      ],
                                                                path = String,
                                                                uuid =
                                                                  std.contract.any_of
                                                                      [
                                                                        js2n.Null,
                                                                        Bool,
                                                                        {
                                                                          _ | Dyn
                                                                        },
                                                                        Array
                                                                          Dyn,
                                                                        Number,
                                                                        String
                                                                      ],
                                                                wipe_filesystem =
                                                                  Bool,
                                                                with_mount_unit =
                                                                  Bool,
                                                              },
                                                          required =
                                                            {
                                                                device = true,
                                                                format = true,
                                                              },
                                                        },
                                                      Array Dyn
                                                    ])
                                              ],
                                        links =
                                          std.contract.Sequence
                                              [
                                                js2n.array.MinItems 1,
                                                js2n.array.UniqueItems,
                                                js2n.array.ArrayOf
                                                  (std.contract.any_of
                                                    [
                                                      js2n.Null,
                                                      Bool,
                                                      Number,
                                                      String,
                                                      js2n.record.Record
                                                        {
                                                          additional = 'None,
                                                          patterns = {},
                                                          properties =
                                                            {
                                                                group =
                                                                  std.contract.Sequence
                                                                      [
                                                                        refs."allOf.1.oneOf.3.allOf.1.definitions.group",
                                                                        {
                                                                          _ | Dyn
                                                                        }
                                                                      ],
                                                                hard = Bool,
                                                                overwrite =
                                                                  Bool,
                                                                path = String,
                                                                target = String,
                                                                user =
                                                                  std.contract.Sequence
                                                                      [
                                                                        refs."allOf.1.oneOf.3.allOf.1.definitions.user",
                                                                        {
                                                                          _ | Dyn
                                                                        }
                                                                      ],
                                                              },
                                                          required =
                                                            { path = true, },
                                                        },
                                                      Array Dyn
                                                    ])
                                              ],
                                        luks =
                                          std.contract.Sequence
                                              [
                                                js2n.array.MinItems 1,
                                                js2n.array.UniqueItems,
                                                js2n.array.ArrayOf
                                                  (std.contract.any_of
                                                    [
                                                      js2n.Null,
                                                      Bool,
                                                      Number,
                                                      String,
                                                      js2n.record.Record
                                                        {
                                                          additional = 'None,
                                                          patterns = {},
                                                          properties =
                                                            {
                                                                device = String,
                                                                discard = Bool,
                                                                key_file =
                                                                  std.contract.Sequence
                                                                      [
                                                                        refs."allOf.1.oneOf.3.allOf.1.definitions.contents",
                                                                        {
                                                                          _ | Dyn
                                                                        }
                                                                      ],
                                                                label = String,
                                                                name = String,
                                                                open_options =
                                                                  std.contract.Sequence
                                                                      [
                                                                        refs."allOf.1.oneOf.3.allOf.1.definitions.string_options",
                                                                        Array
                                                                          Dyn
                                                                      ],
                                                                options =
                                                                  std.contract.Sequence
                                                                      [
                                                                        refs."allOf.1.oneOf.3.allOf.1.definitions.string_options",
                                                                        Array
                                                                          Dyn
                                                                      ],
                                                                uuid =
                                                                  std.contract.any_of
                                                                      [
                                                                        js2n.Null,
                                                                        Bool,
                                                                        {
                                                                          _ | Dyn
                                                                        },
                                                                        Array
                                                                          Dyn,
                                                                        Number,
                                                                        String
                                                                      ],
                                                                wipe_volume =
                                                                  Bool,
                                                              },
                                                          required =
                                                            {
                                                                device = true,
                                                                name = true,
                                                              },
                                                        },
                                                      Array Dyn
                                                    ])
                                              ],
                                        raid =
                                          std.contract.Sequence
                                              [
                                                js2n.array.MinItems 1,
                                                js2n.array.UniqueItems,
                                                js2n.array.ArrayOf
                                                  (std.contract.any_of
                                                    [
                                                      js2n.Null,
                                                      Bool,
                                                      Number,
                                                      String,
                                                      js2n.record.Record
                                                        {
                                                          additional = 'None,
                                                          patterns = {},
                                                          properties =
                                                            {
                                                                devices =
                                                                  std.contract.Sequence
                                                                      [
                                                                        refs."allOf.1.oneOf.3.allOf.1.definitions.string_options",
                                                                        Array
                                                                          Dyn
                                                                      ],
                                                                level =
                                                                  std.contract.Sequence
                                                                      [
                                                                        std.enum.TagOrString,
                                                                        [|
                                                                          '"10",
                                                                          'raid10,
                                                                          '"6",
                                                                          'raid6,
                                                                          '"5",
                                                                          'raid5,
                                                                          '"4",
                                                                          'raid4,
                                                                          'mirror,
                                                                          '"1",
                                                                          'raid1,
                                                                          'stripe,
                                                                          '"0",
                                                                          'raid0,
                                                                          'linear
                                                                        |]
                                                                      ],
                                                                name = String,
                                                                options =
                                                                  std.contract.Sequence
                                                                      [
                                                                        refs."allOf.1.oneOf.3.allOf.1.definitions.string_options",
                                                                        Array
                                                                          Dyn
                                                                      ],
                                                                spares =
                                                                  std.number.Integer,
                                                              },
                                                          required =
                                                            {
                                                                devices = true,
                                                                level = true,
                                                                name = true,
                                                              },
                                                        },
                                                      Array Dyn
                                                    ])
                                              ],
                                        trees =
                                          std.contract.Sequence
                                              [
                                                js2n.array.MinItems 1,
                                                js2n.array.UniqueItems,
                                                js2n.array.ArrayOf
                                                  (std.contract.any_of
                                                    [
                                                      js2n.Null,
                                                      Bool,
                                                      Number,
                                                      String,
                                                      js2n.record.Record
                                                        {
                                                          additional = 'None,
                                                          patterns = {},
                                                          properties =
                                                            {
                                                                local = String,
                                                                path = String,
                                                              },
                                                          required =
                                                            { local = true, },
                                                        },
                                                      Array Dyn
                                                    ])
                                              ],
                                      },
                                  required = {},
                                },
                          systemd =
                            js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        units =
                                          std.contract.Sequence
                                              [
                                                js2n.array.MinItems 1,
                                                js2n.array.UniqueItems,
                                                js2n.array.ArrayOf
                                                  (std.contract.any_of
                                                    [
                                                      js2n.Null,
                                                      Bool,
                                                      Number,
                                                      String,
                                                      std.contract.Sequence
                                                        [
                                                          js2n.record.DependentContracts
                                                            {
                                                              contents =
                                                                std.contract.not
                                                                    (std.contract.any_of
                                                                      [
                                                                        js2n.Null,
                                                                        Bool,
                                                                        Number,
                                                                        String,
                                                                        js2n.record.Required
                                                                          [
                                                                            "contents_local"
                                                                          ],
                                                                        Array
                                                                          Dyn
                                                                      ]),
                                                              contents_local =
                                                                std.contract.not
                                                                    (std.contract.any_of
                                                                      [
                                                                        js2n.Null,
                                                                        Bool,
                                                                        Number,
                                                                        String,
                                                                        js2n.record.Required
                                                                          [
                                                                            "contents"
                                                                          ],
                                                                        Array
                                                                          Dyn
                                                                      ]),
                                                            },
                                                          js2n.record.Record
                                                            {
                                                              additional =
                                                                'None,
                                                              patterns = {},
                                                              properties =
                                                                {
                                                                    contents =
                                                                      String,
                                                                    contents_local =
                                                                      String,
                                                                    dropins =
                                                                      std.contract.Sequence
                                                                          [
                                                                            js2n.array.MinItems
                                                                              1,
                                                                            js2n.array.UniqueItems,
                                                                            js2n.array.ArrayOf
                                                                              (std.contract.Sequence
                                                                                [
                                                                                  std.contract.any_of
                                                                                    [
                                                                                      js2n.Null,
                                                                                      Bool,
                                                                                      Number,
                                                                                      String,
                                                                                      js2n.record.Record
                                                                                        {
                                                                                          additional =
                                                                                            'None,
                                                                                          patterns =
                                                                                            {},
                                                                                          properties =
                                                                                            {
                                                                                                contents =
                                                                                                  String,
                                                                                                contents_local =
                                                                                                  String,
                                                                                                name =
                                                                                                  std.contract.any_of
                                                                                                      [
                                                                                                        js2n.Null,
                                                                                                        Bool,
                                                                                                        {
                                                                                                          _ | Dyn
                                                                                                        },
                                                                                                        Array
                                                                                                          Dyn,
                                                                                                        Number,
                                                                                                        String
                                                                                                      ],
                                                                                              },
                                                                                          required =
                                                                                            {
                                                                                                name =
                                                                                                  true,
                                                                                              },
                                                                                        },
                                                                                      Array
                                                                                        Dyn
                                                                                    ],
                                                                                  js2n.OneOf
                                                                                    [
                                                                                      std.contract.any_of
                                                                                        [
                                                                                          js2n.Null,
                                                                                          Bool,
                                                                                          Number,
                                                                                          String,
                                                                                          js2n.record.Required
                                                                                            [
                                                                                              "contents"
                                                                                            ],
                                                                                          Array
                                                                                            Dyn
                                                                                        ],
                                                                                      std.contract.any_of
                                                                                        [
                                                                                          js2n.Null,
                                                                                          Bool,
                                                                                          Number,
                                                                                          String,
                                                                                          js2n.record.Required
                                                                                            [
                                                                                              "contents_local"
                                                                                            ],
                                                                                          Array
                                                                                            Dyn
                                                                                        ]
                                                                                    ]
                                                                                ])
                                                                          ],
                                                                    enabled =
                                                                      Bool,
                                                                    mask = Bool,
                                                                    name =
                                                                      std.contract.any_of
                                                                          [
                                                                            js2n.Null,
                                                                            Bool,
                                                                            {
                                                                              _ | Dyn
                                                                            },
                                                                            Array
                                                                              Dyn,
                                                                            Number,
                                                                            String
                                                                          ],
                                                                  },
                                                              required =
                                                                {
                                                                    name = true,
                                                                  },
                                                            }
                                                        ],
                                                      Array Dyn
                                                    ])
                                              ],
                                      },
                                  required = {},
                                },
                          variant = js2n.Always,
                          version =
                            std.contract.any_of
                                [
                                  js2n.Null,
                                  Bool,
                                  Number,
                                  String,
                                  { _ | Dyn },
                                  Array Dyn
                                ],
                        },
                    required = {},
                  }
              ]
          ],
        {
          variant
            | std.enum.TagOrString
            | [| 'flatcar, 'fcos |]
            | doc "Used to differentiate configs for different operating systems.",
          version | String,
          ..
        }
      ]