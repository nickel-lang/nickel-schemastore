# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.item" =
        std.contract.Sequence
            [
              std.contract.any_of
                [
                  js2n.Null,
                  Bool,
                  Number,
                  String,
                  js2n.record.Record
                    {
                      additional = 'None,
                      patterns = { "^_[a-zA-Z]([^.]+)$" = js2n.Always, },
                      properties =
                        {
                            attachments =
                              Array (
                                  js2n.record.Record
                                    {
                                      additional = 'None,
                                      patterns =
                                        { "^_[a-zA-Z]([^.]+)$" = js2n.Always, },
                                      properties =
                                        {
                                            duration_in_seconds = Number,
                                            mime_type = String,
                                            size_in_bytes = Number,
                                            title = String,
                                            url =
                                              std.contract.Sequence
                                                  [
                                                    refs."properties.version.anyOf.1",
                                                    String
                                                  ],
                                          },
                                      required =
                                        { mime_type = true, url = true, },
                                    }
                                ),
                            author =
                              std.contract.Sequence
                                  [
                                    refs."properties.authors.items",
                                    { _ | Dyn }
                                  ],
                            authors =
                              Array (
                                  std.contract.Sequence
                                    [
                                      refs."properties.authors.items",
                                      { _ | Dyn }
                                    ]
                                ),
                            banner_image =
                              std.contract.Sequence
                                  [ refs."properties.version.anyOf.1", String ],
                            content_html = String,
                            content_text = String,
                            date_modified = String,
                            date_published = String,
                            external_url =
                              std.contract.Sequence
                                  [ refs."properties.version.anyOf.1", String ],
                            id = String,
                            image =
                              std.contract.Sequence
                                  [ refs."properties.version.anyOf.1", String ],
                            language = String,
                            summary = String,
                            tags =
                              std.contract.Sequence
                                  [ js2n.array.UniqueItems, Array String ],
                            title = String,
                            url =
                              std.contract.Sequence
                                  [ refs."properties.version.anyOf.1", String ],
                          },
                      required = { id = true, },
                    },
                  Array Dyn
                ],
              js2n.OneOf
                [
                  std.contract.Sequence
                    [
                      std.contract.any_of
                        [
                          js2n.Null,
                          Bool,
                          Number,
                          String,
                          js2n.record.Required [ "content_html" ],
                          Array Dyn
                        ],
                      std.contract.not
                        (std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            js2n.record.Required [ "content_text" ],
                            Array Dyn
                          ])
                    ],
                  std.contract.Sequence
                    [
                      std.contract.any_of
                        [
                          js2n.Null,
                          Bool,
                          Number,
                          String,
                          js2n.record.Required [ "content_text" ],
                          Array Dyn
                        ],
                      std.contract.not
                        (std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            js2n.record.Required [ "content_html" ],
                            Array Dyn
                          ])
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Required [ "content_html", "content_text" ],
                      Array Dyn
                    ]
                ]
            ],
      "properties.authors.items" =
        std.contract.Sequence
            [
              js2n.record.MinProperties 1,
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = { "^_[a-zA-Z]([^.]+)$" = js2n.Always, },
                  properties =
                    {
                        avatar =
                          std.contract.Sequence
                              [ refs."properties.version.anyOf.1", String ],
                        name = String,
                        url =
                          std.contract.Sequence
                              [ refs."properties.version.anyOf.1", String ],
                      },
                  required = {},
                }
            ],
      "properties.favicon" = String,
      "properties.version.anyOf.1" = String,
    }
    in
  js2n.record.Record
      {
        additional = 'None,
        patterns =
          {
              "^_[a-zA-Z]([^.]+)$" =
                {
                    about
                      | String
                      | doc "A description or URL to description of the custom extension."
                      | optional,
                    ..
                  },
            },
        properties =
          {
              author =
                std.contract.Sequence
                    [ refs."properties.authors.items", { _ | Dyn } ],
              authors =
                Array (
                    std.contract.Sequence
                      [
                        js2n.record.MinProperties 1,
                        js2n.record.Record
                          {
                            additional = 'None,
                            patterns =
                              {
                                  "^_[a-zA-Z]([^.]+)$" =
                                    std.contract.any_of
                                        [
                                          js2n.Null,
                                          Bool,
                                          { _ | Dyn },
                                          Array Dyn,
                                          Number,
                                          String
                                        ],
                                },
                            properties =
                              {
                                  avatar = refs."properties.version.anyOf.1",
                                  name = String,
                                  url = refs."properties.version.anyOf.1",
                                },
                            required = {},
                          }
                      ]
                  ),
              description = refs."properties.favicon",
              expired = Bool,
              favicon = String,
              feed_url = refs."properties.version.anyOf.1",
              home_page_url = refs."properties.version.anyOf.1",
              hubs =
                Array
                    {
                      type
                        | String
                        | doc "Describes the protocol used to talk with the hub, such as \"rssCloud\" or \"WebSub\".",
                      url | refs."properties.version.anyOf.1",
                      ..
                    },
              icon = refs."properties.version.anyOf.1",
              items = Array refs."definitions.item",
              language = String,
              next_url = refs."properties.version.anyOf.1",
              title = String,
              user_comment = String,
              version =
                std.contract.any_of
                    [
                      std.contract.Sequence
                        [
                          std.enum.TagOrString,
                          [| '"https://jsonfeed.org/version/1.1" |]
                        ],
                      String
                    ],
            },
        required = { items = true, title = true, version = true, },
      }