# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.AnyScalar" =
        std.contract.any_of
            [ String, Number, std.number.Integer, Bool, js2n.Null ],
      "definitions.Attribute" =
        std.contract.Sequence
            [
              js2n.IfThenElse
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
                        properties = { type = js2n.Const "strz", },
                        required = { type = true, },
                      },
                    Array Dyn
                  ])
                (std.contract.not
                  (std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Required [ "terminator" ],
                      Array Dyn
                    ])) js2n.Always,
              js2n.IfThenElse
                (std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    js2n.record.Required [ "pad-right" ],
                    Array Dyn
                  ])
                (std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    js2n.record.Required [ "size" ],
                    Array Dyn,
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    js2n.record.Record
                      {
                        additional = 'Some Dyn,
                        patterns = {},
                        properties = { size-eos = js2n.Const true, },
                        required = { size-eos = true, },
                      },
                    Array Dyn
                  ]) js2n.Always,
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = { "^-.*$" = js2n.Always, },
                  properties =
                    {
                        consume = Bool,
                        contents =
                          std.contract.any_of
                              [
                                String,
                                Array (
                                  std.contract.Sequence
                                    [
                                      refs."definitions.StringOrInteger",
                                      std.contract.any_of [ Number, String ]
                                    ]
                                )
                              ],
                        "doc" =
                          std.contract.Sequence
                              [ refs."definitions.Doc", String ],
                        doc-ref =
                          std.contract.Sequence
                              [
                                refs."definitions.DocRef",
                                std.contract.any_of [ Array Dyn, String ]
                              ],
                        encoding = String,
                        enum =
                          js2n.string.Matches
                              "^([a-z][a-z0-9_]*::)*[a-z][a-z0-9_]*$",
                        eos-error = Bool,
                        id = js2n.string.Matches "^[a-z][a-z0-9_]*$",
                        "if" = std.contract.any_of [ Bool, String ],
                        include = Bool,
                        io = String,
                        pad-right = std.number.Integer,
                        pos =
                          std.contract.Sequence
                              [
                                refs."definitions.StringOrInteger",
                                std.contract.any_of [ Number, String ]
                              ],
                        process =
                          js2n.string.Matches "^zlib|(xor|rol|ror)\\(.*\\)$",
                        repeat =
                          std.contract.Sequence
                              [
                                std.enum.TagOrString,
                                [| 'until, 'eos, 'expr |]
                              ],
                        repeat-expr =
                          std.contract.Sequence
                              [
                                refs."definitions.StringOrInteger",
                                std.contract.any_of [ Number, String ]
                              ],
                        repeat-until = std.contract.any_of [ Bool, String ],
                        size =
                          std.contract.Sequence
                              [
                                refs."definitions.StringOrInteger",
                                std.contract.any_of [ Number, String ]
                              ],
                        size-eos = Bool,
                        terminator = std.number.Integer,
                        type =
                          std.contract.any_of
                              [
                                std.contract.Sequence
                                  [
                                    refs."definitions.TypeRef",
                                    std.contract.any_of
                                      [ js2n.Null, Bool, String ]
                                  ],
                                js2n.record.Record
                                  {
                                    additional = 'None,
                                    patterns = {},
                                    properties =
                                      {
                                          cases =
                                            js2n.record.Record
                                                {
                                                  additional = 'None,
                                                  patterns =
                                                    {
                                                        "^.*$" =
                                                          std.contract.Sequence
                                                              [
                                                                refs."definitions.TypeRef",
                                                                std.contract.any_of
                                                                  [
                                                                    js2n.Null,
                                                                    Bool,
                                                                    String
                                                                  ]
                                                              ],
                                                      },
                                                  properties = {},
                                                  required = {},
                                                },
                                          switch-on =
                                            std.contract.Sequence
                                                [
                                                  refs."definitions.AnyScalar",
                                                  std.contract.any_of
                                                    [
                                                      js2n.Null,
                                                      Bool,
                                                      Number,
                                                      String
                                                    ]
                                                ],
                                        },
                                    required =
                                      { cases = true, switch-on = true, },
                                  }
                              ],
                        value =
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
      "definitions.Attributes" =
        Array (
            std.contract.Sequence [ refs."definitions.Attribute", { _ | Dyn } ]
          ),
      "definitions.Doc" = String,
      "definitions.DocRef" = std.contract.any_of [ String, Array String ],
      "definitions.EnumSpec" =
        std.contract.Sequence
            [
              { _ | refs."definitions.EnumValueSpec" },
              js2n.record.FieldsMatch "^.*$"
            ],
      "definitions.EnumValueSpec" =
        std.contract.any_of
            [
              std.contract.Sequence
                [
                  refs."definitions.Identifier",
                  std.contract.any_of [ Bool, String ]
                ],
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = { "^-.*$" = js2n.Always, },
                  properties =
                    {
                        "-orig-id" =
                          std.contract.any_of
                              [ String, js2n.array.ArrayOf String ],
                        "doc" =
                          std.contract.Sequence
                              [ refs."definitions.Doc", String ],
                        doc-ref =
                          std.contract.Sequence
                              [
                                refs."definitions.DocRef",
                                std.contract.any_of [ Array Dyn, String ]
                              ],
                        id =
                          std.contract.Sequence
                              [
                                refs."definitions.Identifier",
                                std.contract.any_of [ Bool, String ]
                              ],
                      },
                  required = { id = true, },
                }
            ],
      "definitions.EnumsSpec" =
        std.contract.Sequence
            [
              {
                _ | std.contract.Sequence
                  [ refs."definitions.EnumSpec", { _ | Dyn } ]
              },
              js2n.record.FieldsMatch "^[a-z][a-z0-9_]*$"
            ],
      "definitions.Identifier" =
        std.contract.any_of [ js2n.string.Matches "^[a-z][a-z0-9_]*$", Bool ],
      "definitions.InstancesSpec" =
        std.contract.Sequence
            [
              {
                _ | std.contract.Sequence
                  [ refs."definitions.Attribute", { _ | Dyn } ]
              },
              js2n.record.FieldsMatch "^[a-z][a-z0-9_]*$"
            ],
      "definitions.IsoIdentifier" =
        js2n.string.Matches "^[1-9]\\d*(-[0-9]+)?(:(19|20)\\d{2})?$",
      "definitions.LocIdentifier" = js2n.string.Matches "^fdd\\d{6}$",
      "definitions.MediaWikiPageName" =
        js2n.string.Matches
            "^([a-zA-Z0-9$\\-._~+!*'(),@&;:\\/]|%[0-9a-fA-F]{2})+$",
      "definitions.MetaSpec" =
        js2n.record.Record
            {
              additional = 'None,
              patterns = { "^-.*$" = js2n.Always, },
              properties =
                {
                    application = std.contract.any_of [ String, Array String ],
                    encoding = String,
                    endian =
                      std.contract.any_of
                          [
                            std.contract.Sequence
                              [ std.enum.TagOrString, [| 'be, 'le |] ],
                            {
                              cases
                                | {
                                  _ | std.contract.Sequence
                                    [ std.enum.TagOrString, [| 'be, 'le |] ]
                                }
                                | js2n.record.FieldsMatch "^.*$",
                              switch-on
                                | refs."definitions.AnyScalar"
                                | std.contract.any_of
                                  [ js2n.Null, Bool, Number, String ],
                            }
                          ],
                    file-extension =
                      std.contract.any_of [ String, Array String ],
                    id =
                      std.contract.Sequence
                          [
                            refs."definitions.Identifier",
                            std.contract.any_of [ Bool, String ]
                          ],
                    imports =
                      Array (js2n.string.Matches "^(.*/)?[a-z][a-z0-9_]*$"),
                    ks-debug = Bool,
                    ks-opaque-types = Bool,
                    ks-version =
                      std.contract.any_of
                          [
                            js2n.string.Matches
                              "^(0|[1-9][0-9]*)\\.(0|[1-9][0-9]*)(\\.(0|[1-9][0-9]*))?$",
                            std.contract.Sequence
                              [
                                js2n.number.Minimum 0.1,
                                std.contract.not
                                  (js2n.Enum [ 0.1, 0.2, 0.3, 0.4, 0.5 ])
                              ]
                          ],
                    license = String,
                    title = String,
                    xref =
                      js2n.record.Record
                          {
                            additional = 'None,
                            patterns =
                              {
                                  "^.*$" =
                                    std.contract.any_of
                                        [
                                          std.contract.Sequence
                                            [
                                              refs."definitions.AnyScalar",
                                              std.contract.any_of
                                                [
                                                  js2n.Null,
                                                  Bool,
                                                  Number,
                                                  String
                                                ]
                                            ],
                                          js2n.array.ArrayOf
                                            (std.contract.Sequence
                                              [
                                                refs."definitions.AnyScalar",
                                                std.contract.any_of
                                                  [
                                                    js2n.Null,
                                                    Bool,
                                                    Number,
                                                    String
                                                  ]
                                              ])
                                        ],
                                },
                            properties =
                              {
                                  forensicswiki =
                                    std.contract.any_of
                                        [
                                          std.contract.Sequence
                                            [
                                              refs."definitions.MediaWikiPageName",
                                              String
                                            ],
                                          Array (
                                            std.contract.Sequence
                                              [
                                                refs."definitions.MediaWikiPageName",
                                                String
                                              ]
                                          )
                                        ],
                                  iso =
                                    std.contract.any_of
                                        [
                                          std.contract.Sequence
                                            [
                                              refs."definitions.IsoIdentifier",
                                              String
                                            ],
                                          Array (
                                            std.contract.Sequence
                                              [
                                                refs."definitions.IsoIdentifier",
                                                String
                                              ]
                                          )
                                        ],
                                  justsolve =
                                    std.contract.any_of
                                        [
                                          std.contract.Sequence
                                            [
                                              refs."definitions.MediaWikiPageName",
                                              String
                                            ],
                                          Array (
                                            std.contract.Sequence
                                              [
                                                refs."definitions.MediaWikiPageName",
                                                String
                                              ]
                                          )
                                        ],
                                  loc =
                                    std.contract.any_of
                                        [
                                          std.contract.Sequence
                                            [
                                              refs."definitions.LocIdentifier",
                                              String
                                            ],
                                          Array (
                                            std.contract.Sequence
                                              [
                                                refs."definitions.LocIdentifier",
                                                String
                                              ]
                                          )
                                        ],
                                  mime =
                                    std.contract.any_of
                                        [
                                          std.contract.Sequence
                                            [
                                              refs."definitions.MimeType",
                                              String
                                            ],
                                          Array (
                                            std.contract.Sequence
                                              [
                                                refs."definitions.MimeType",
                                                String
                                              ]
                                          )
                                        ],
                                  pronom =
                                    std.contract.any_of
                                        [
                                          std.contract.Sequence
                                            [
                                              refs."definitions.PronomIdentifier",
                                              String
                                            ],
                                          Array (
                                            std.contract.Sequence
                                              [
                                                refs."definitions.PronomIdentifier",
                                                String
                                              ]
                                          )
                                        ],
                                  rfc =
                                    std.contract.any_of
                                        [
                                          std.contract.Sequence
                                            [
                                              refs."definitions.RfcIdentifier",
                                              std.contract.any_of
                                                [ Number, String ]
                                            ],
                                          js2n.array.ArrayOf
                                            (std.contract.Sequence
                                              [
                                                refs."definitions.RfcIdentifier",
                                                std.contract.any_of
                                                  [ Number, String ]
                                              ])
                                        ],
                                  wikidata =
                                    std.contract.any_of
                                        [
                                          std.contract.Sequence
                                            [
                                              refs."definitions.WikidataIdentifier",
                                              String
                                            ],
                                          Array (
                                            std.contract.Sequence
                                              [
                                                refs."definitions.WikidataIdentifier",
                                                String
                                              ]
                                          )
                                        ],
                                },
                            required = {},
                          },
                  },
              required = {},
            },
      "definitions.MimeType" =
        js2n.string.Matches
            "^(application|audio|font|image|model|text|video)/([a-zA-Z0-9]+[.\\-_+])*[a-zA-Z0-9]+[.\\-_+]?$",
      "definitions.ParamSpec" =
        js2n.record.Record
            {
              additional = 'None,
              patterns = { "^-.*$" = js2n.Always, },
              properties =
                {
                    "doc" =
                      std.contract.Sequence [ refs."definitions.Doc", String ],
                    doc-ref =
                      std.contract.Sequence
                          [
                            refs."definitions.DocRef",
                            std.contract.any_of [ Array Dyn, String ]
                          ],
                    enum =
                      js2n.string.Matches
                          "^([a-z][a-z0-9_]*::)*[a-z][a-z0-9_]*$",
                    id =
                      std.contract.Sequence
                          [
                            js2n.string.Matches "^[a-z][a-z0-9_]*$",
                            std.contract.not
                              (std.contract.Sequence
                                [
                                  std.enum.TagOrString,
                                  [| '"null", '"false", '"true" |]
                                ])
                          ],
                    type = String,
                  },
              required = { id = true, },
            },
      "definitions.ParamsSpec" =
        Array (
            std.contract.Sequence [ refs."definitions.ParamSpec", { _ | Dyn } ]
          ),
      "definitions.PronomIdentifier" = js2n.string.Matches "^(x-)?fmt\\/\\d+$",
      "definitions.RfcIdentifier" =
        std.contract.any_of
            [ std.number.Integer, js2n.string.Matches "^[1-9]\\d*$" ],
      "definitions.StringOrInteger" =
        std.contract.any_of [ String, std.number.Integer ],
      "definitions.TypeRef" =
        std.contract.any_of
            [
              js2n.string.Matches
                "^([a-z][a-z0-9_]*::)*[a-z][a-z0-9_]*(\\(.+\\))?$",
              Bool,
              js2n.Null,
              std.contract.Sequence
                [
                  std.enum.TagOrString,
                  [|
                    'strz,
                    'str,
                    'f8le,
                    'f8be,
                    'f8,
                    'f4le,
                    'f4be,
                    'f4,
                    's8be,
                    's8le,
                    's8,
                    's4be,
                    's4le,
                    's4,
                    's2be,
                    's2le,
                    's2,
                    's1,
                    'u8be,
                    'u8le,
                    'u8,
                    'u4be,
                    'u4le,
                    'u4,
                    'u2be,
                    'u2le,
                    'u2,
                    'u1
                  |]
                ]
            ],
      "definitions.TypeSpec" =
        js2n.record.Record
            {
              additional = 'None,
              patterns = { "^-.*$" = js2n.Always, },
              properties =
                {
                    "doc" =
                      std.contract.Sequence [ refs."definitions.Doc", String ],
                    doc-ref =
                      std.contract.Sequence
                          [
                            refs."definitions.DocRef",
                            std.contract.any_of [ Array Dyn, String ]
                          ],
                    enums =
                      std.contract.Sequence
                          [ refs."definitions.EnumsSpec", { _ | Dyn } ],
                    instances =
                      std.contract.Sequence
                          [ refs."definitions.InstancesSpec", { _ | Dyn } ],
                    meta =
                      std.contract.Sequence
                          [ refs."definitions.MetaSpec", { _ | Dyn } ],
                    params =
                      std.contract.Sequence
                          [ refs."definitions.ParamsSpec", Array Dyn ],
                    seq =
                      std.contract.Sequence
                          [ refs."definitions.Attributes", Array Dyn ],
                    types =
                      std.contract.Sequence
                          [ refs."definitions.TypesSpec", { _ | Dyn } ],
                  },
              required = {},
            },
      "definitions.TypesSpec" =
        std.contract.Sequence
            [
              {
                _ | std.contract.Sequence
                  [ refs."definitions.TypeSpec", { _ | Dyn } ]
              },
              js2n.record.FieldsMatch "^[a-z][a-z0-9_]*$"
            ],
      "definitions.WikidataIdentifier" = js2n.string.Matches "^Q[1-9]\\d*$",
    }
    in
  js2n.record.Record
      {
        additional = 'None,
        patterns = { "^-.*$" = js2n.Always, },
        properties =
          {
              "doc" = refs."definitions.Doc",
              doc-ref = refs."definitions.DocRef",
              enums = refs."definitions.EnumsSpec",
              instances = refs."definitions.InstancesSpec",
              meta =
                std.contract.Sequence
                    [
                      refs."definitions.MetaSpec",
                      js2n.record.Required [ "id" ]
                    ],
              params = refs."definitions.ParamsSpec",
              seq = refs."definitions.Attributes",
              types = refs."definitions.TypesSpec",
            },
        required = {},
      }