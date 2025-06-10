# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.category" =
        {
            child
              | {
                _ | std.contract.Sequence
                  [ refs."definitions.strarray", Array Dyn ]
              }
              | optional,
            coordinates
              | { _ | js2n.array.Items [ Number, Number ] js2n.Never }
              | optional,
            index
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.strarray", Array Dyn ],
                  { _ | Number }
                ]
              | optional,
            label | js2n.record.MinProperties 1 | { _ | String } | optional,
            note
              | {
                _ | std.contract.Sequence
                  [ refs."definitions.strarray", Array Dyn ]
              }
              | optional,
            unit
              | {
                _ | {
                  decimals | std.number.Integer | optional,
                  label | refs."definitions.label" | String | optional,
                  position
                    | std.enum.TagOrString
                    | [| 'end, 'start |]
                    | optional,
                  ..
                }
              }
              | optional,
          },
      "definitions.error" = Array Dyn,
      "definitions.extension" = { _ | Dyn },
      "definitions.href" = String,
      "definitions.label" = String,
      "definitions.link" =
        std.contract.Sequence
            [
              {
                _ | Array
                  {
                    category
                      | refs."definitions.category"
                      | { _ | Dyn }
                      | optional,
                    class
                      | std.enum.TagOrString
                      | [| 'dimension, 'collection, 'dataset |]
                      | optional,
                    dimension
                      | {
                        _ | {
                          category | refs."definitions.category" | { _ | Dyn },
                          extension
                            | refs."definitions.extension"
                            | { _ | Dyn }
                            | optional,
                          href | refs."definitions.href" | String | optional,
                          label | refs."definitions.label" | String | optional,
                          link | js2n.Always | { _ | Dyn } | optional,
                          note
                            | refs."definitions.strarray"
                            | Array Dyn
                            | optional,
                        }
                      }
                      | optional,
                    extension
                      | refs."definitions.extension"
                      | { _ | Dyn }
                      | optional,
                    href | refs."definitions.href" | String | optional,
                    id | refs."definitions.strarray" | Array Dyn | optional,
                    label | refs."definitions.label" | String | optional,
                    link | js2n.Always | { _ | Dyn } | optional,
                    note | refs."definitions.strarray" | Array Dyn | optional,
                    role
                      | {
                        geo
                          | refs."definitions.strarray"
                          | Array Dyn
                          | optional,
                        metric
                          | refs."definitions.strarray"
                          | Array Dyn
                          | optional,
                        time
                          | refs."definitions.strarray"
                          | Array Dyn
                          | optional,
                      }
                      | optional,
                    size | Array std.number.Integer | optional,
                    source | refs."definitions.source" | String | optional,
                    status
                      | std.contract.any_of
                        [ String, Array (js2n.Nullable String), { _ | String } ]
                      | optional,
                    type | String | optional,
                    updated | refs."definitions.updated" | optional,
                    value
                      | std.contract.any_of
                        [
                          Array (
                            std.contract.any_of [ js2n.Null, Number, String ]
                          ),
                          {
                            _ | std.contract.any_of
                              [ js2n.Null, Number, String ]
                          }
                        ]
                      | optional,
                  }
              },
              js2n.record.FieldsMatch
                "^(about|alternate|appendix|archives|author|blocked-by|bookmark|canonical|chapter|collection|contents|copyright|create-form|current|derivedfrom|describedby|describes|disclosure|dns-prefetch|duplicate|edit|edit-form|edit-media|enclosure|first|glossary|help|hosts|hub|icon|index|item|last|latest-version|license|lrdd|memento|monitor|monitor-group|next|next-archive|nofollow|noreferrer|original|payment|pingback|preconnect|predecessor-version|prefetch|preload|prerender|prev|preview|previous|prev-archive|privacy-policy|profile|related|replies|search|section|self|service|start|stylesheet|subsection|successor-version|tag|terms-of-service|timegate|timemap|type|up|version-history|via|webmention|working-copy|working-copy-of)$"
            ],
      "definitions.source" = String,
      "definitions.strarray" =
        std.contract.Sequence [ js2n.array.UniqueItems, Array String ],
      "definitions.updated" =
        js2n.OneOf
            [
              String,
              js2n.string.Matches
                "^((19|20)\\d\\d)\\-(0?[1-9]|1[012])\\-(0?[1-9]|[12][0-9]|3[01])$"
            ],
      "definitions.version" =
        std.contract.Sequence [ std.enum.TagOrString, [| '"2.0" |] ],
    }
    in
  js2n.OneOf
      [
        js2n.record.Record
          {
            additional = 'None,
            patterns = {},
            properties =
              {
                  class =
                    std.contract.Sequence
                        [ std.enum.TagOrString, [| 'dataset |] ],
                  dimension =
                    js2n.record.Record
                        {
                          additional =
                            'Some
                                (js2n.record.Record
                                  {
                                    additional = 'None,
                                    patterns = {},
                                    properties =
                                      {
                                          category =
                                            refs."definitions.category",
                                          extension =
                                            refs."definitions.extension",
                                          href = refs."definitions.href",
                                          label = refs."definitions.label",
                                          link = refs."definitions.link",
                                          note =
                                            std.contract.Sequence
                                                [
                                                  refs."definitions.strarray",
                                                  Array Dyn
                                                ],
                                        },
                                    required = { category = true, },
                                  }),
                          patterns = {},
                          properties = {},
                          required = {},
                        },
                  error = refs."definitions.error",
                  extension = refs."definitions.extension",
                  href = refs."definitions.href",
                  id =
                    std.contract.Sequence
                        [ refs."definitions.strarray", Array Dyn ],
                  label = refs."definitions.label",
                  link = refs."definitions.link",
                  note =
                    std.contract.Sequence
                        [ refs."definitions.strarray", Array Dyn ],
                  role =
                    js2n.record.Record
                        {
                          additional = 'None,
                          patterns = {},
                          properties =
                            {
                                geo =
                                  std.contract.Sequence
                                      [
                                        refs."definitions.strarray",
                                        Array Dyn
                                      ],
                                metric =
                                  std.contract.Sequence
                                      [
                                        refs."definitions.strarray",
                                        Array Dyn
                                      ],
                                time =
                                  std.contract.Sequence
                                      [
                                        refs."definitions.strarray",
                                        Array Dyn
                                      ],
                              },
                          required = {},
                        },
                  size = js2n.array.ArrayOf std.number.Integer,
                  source = refs."definitions.source",
                  status =
                    std.contract.any_of
                        [
                          String,
                          js2n.array.ArrayOf (js2n.Nullable String),
                          js2n.record.Record
                            {
                              additional = 'Some String,
                              patterns = {},
                              properties = {},
                              required = {},
                            }
                        ],
                  updated = refs."definitions.updated",
                  value =
                    std.contract.any_of
                        [
                          js2n.array.ArrayOf
                            (std.contract.any_of [ js2n.Null, Number, String ]),
                          js2n.record.Record
                            {
                              additional =
                                'Some
                                    (std.contract.any_of
                                      [ js2n.Null, Number, String ]),
                              patterns = {},
                              properties = {},
                              required = {},
                            }
                        ],
                  version = refs."definitions.version",
                },
            required =
              {
                  class = true,
                  dimension = true,
                  id = true,
                  size = true,
                  value = true,
                  version = true,
                },
          },
        js2n.record.Record
          {
            additional = 'None,
            patterns = {},
            properties =
              {
                  category = refs."definitions.category",
                  class =
                    std.contract.Sequence
                        [ std.enum.TagOrString, [| 'dimension |] ],
                  error = refs."definitions.error",
                  extension = refs."definitions.extension",
                  href = refs."definitions.href",
                  label = refs."definitions.label",
                  link = refs."definitions.link",
                  note =
                    std.contract.Sequence
                        [ refs."definitions.strarray", Array Dyn ],
                  source = refs."definitions.source",
                  updated = refs."definitions.updated",
                  version = refs."definitions.version",
                },
            required = { category = true, class = true, version = true, },
          },
        js2n.record.Record
          {
            additional = 'None,
            patterns = {},
            properties =
              {
                  class =
                    std.contract.Sequence
                        [ std.enum.TagOrString, [| 'collection |] ],
                  error = refs."definitions.error",
                  extension = refs."definitions.extension",
                  href = refs."definitions.href",
                  label = refs."definitions.label",
                  link =
                    js2n.record.Record
                        {
                          additional = 'None,
                          patterns = {},
                          properties =
                            {
                                item =
                                  js2n.array.ArrayOf
                                      (js2n.record.Record
                                        {
                                          additional = 'None,
                                          patterns = {},
                                          properties =
                                            {
                                                category =
                                                  refs."definitions.category",
                                                class =
                                                  std.contract.Sequence
                                                      [
                                                        std.enum.TagOrString,
                                                        [|
                                                          'dimension,
                                                          'collection,
                                                          'dataset
                                                        |]
                                                      ],
                                                dimension =
                                                  js2n.record.Record
                                                      {
                                                        additional =
                                                          'Some
                                                              (js2n.record.Record
                                                                {
                                                                  additional =
                                                                    'None,
                                                                  patterns = {},
                                                                  properties =
                                                                    {
                                                                        category =
                                                                          refs."definitions.category",
                                                                        extension =
                                                                          refs."definitions.extension",
                                                                        href =
                                                                          refs."definitions.href",
                                                                        label =
                                                                          refs."definitions.label",
                                                                        link =
                                                                          refs."definitions.link",
                                                                        note =
                                                                          std.contract.Sequence
                                                                              [
                                                                                refs."definitions.strarray",
                                                                                Array
                                                                                  Dyn
                                                                              ],
                                                                      },
                                                                  required =
                                                                    {
                                                                        category =
                                                                          true,
                                                                      },
                                                                }),
                                                        patterns = {},
                                                        properties = {},
                                                        required = {},
                                                      },
                                                extension =
                                                  refs."definitions.extension",
                                                href = refs."definitions.href",
                                                id =
                                                  std.contract.Sequence
                                                      [
                                                        refs."definitions.strarray",
                                                        Array Dyn
                                                      ],
                                                label =
                                                  refs."definitions.label",
                                                link = refs."definitions.link",
                                                note =
                                                  std.contract.Sequence
                                                      [
                                                        refs."definitions.strarray",
                                                        Array Dyn
                                                      ],
                                                role =
                                                  js2n.record.Record
                                                      {
                                                        additional = 'None,
                                                        patterns = {},
                                                        properties =
                                                          {
                                                              geo =
                                                                std.contract.Sequence
                                                                    [
                                                                      refs."definitions.strarray",
                                                                      Array Dyn
                                                                    ],
                                                              metric =
                                                                std.contract.Sequence
                                                                    [
                                                                      refs."definitions.strarray",
                                                                      Array Dyn
                                                                    ],
                                                              time =
                                                                std.contract.Sequence
                                                                    [
                                                                      refs."definitions.strarray",
                                                                      Array Dyn
                                                                    ],
                                                            },
                                                        required = {},
                                                      },
                                                size =
                                                  js2n.array.ArrayOf
                                                      std.number.Integer,
                                                source =
                                                  refs."definitions.source",
                                                status =
                                                  std.contract.any_of
                                                      [
                                                        String,
                                                        js2n.array.ArrayOf
                                                          (js2n.Nullable
                                                            String),
                                                        js2n.record.Record
                                                          {
                                                            additional =
                                                              'Some String,
                                                            patterns = {},
                                                            properties = {},
                                                            required = {},
                                                          }
                                                      ],
                                                type = String,
                                                updated =
                                                  refs."definitions.updated",
                                                value =
                                                  std.contract.any_of
                                                      [
                                                        js2n.array.ArrayOf
                                                          (std.contract.any_of
                                                            [
                                                              js2n.Null,
                                                              Number,
                                                              String
                                                            ]),
                                                        js2n.record.Record
                                                          {
                                                            additional =
                                                              'Some
                                                                  (std.contract.any_of
                                                                    [
                                                                      js2n.Null,
                                                                      Number,
                                                                      String
                                                                    ]),
                                                            patterns = {},
                                                            properties = {},
                                                            required = {},
                                                          }
                                                      ],
                                              },
                                          required = {},
                                        }),
                              },
                          required = {},
                        },
                  note =
                    std.contract.Sequence
                        [ refs."definitions.strarray", Array Dyn ],
                  source = refs."definitions.source",
                  updated = refs."definitions.updated",
                  version = refs."definitions.version",
                },
            required = { class = true, link = true, version = true, },
          }
      ]