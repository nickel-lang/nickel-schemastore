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
        js2n.record.PropertyNames String,
        {
          _ | std.contract.any_of
            [
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        active = Bool,
                        assertions =
                          js2n.array.ArrayOf
                              (std.contract.any_of
                                [
                                  js2n.record.Record
                                    {
                                      additional = 'None,
                                      patterns = {},
                                      properties =
                                        {
                                            compare =
                                              std.contract.Sequence
                                                  [
                                                    std.enum.TagOrString,
                                                    [|
                                                      'lte,
                                                      'lt,
                                                      'gte,
                                                      'gt,
                                                      'not_eq,
                                                      'eq
                                                    |]
                                                  ],
                                            kind = js2n.Const "statusCode",
                                            target = Number,
                                          },
                                      required =
                                        {
                                            compare = true,
                                            kind = true,
                                            target = true,
                                          },
                                    },
                                  js2n.record.Record
                                    {
                                      additional = 'None,
                                      patterns = {},
                                      properties =
                                        {
                                            compare =
                                              std.contract.Sequence
                                                  [
                                                    std.enum.TagOrString,
                                                    [|
                                                      'lte,
                                                      'lt,
                                                      'gte,
                                                      'gt,
                                                      'not_empty,
                                                      'empty,
                                                      'not_eq,
                                                      'eq,
                                                      'not_contains,
                                                      'contains
                                                    |]
                                                  ],
                                            key = String,
                                            kind = js2n.Const "header",
                                            target = String,
                                          },
                                      required =
                                        {
                                            compare = true,
                                            key = true,
                                            kind = true,
                                            target = true,
                                          },
                                    },
                                  js2n.record.Record
                                    {
                                      additional = 'None,
                                      patterns = {},
                                      properties =
                                        {
                                            compare =
                                              std.contract.Sequence
                                                  [
                                                    std.enum.TagOrString,
                                                    [|
                                                      'lte,
                                                      'lt,
                                                      'gte,
                                                      'gt,
                                                      'not_empty,
                                                      'empty,
                                                      'not_eq,
                                                      'eq,
                                                      'not_contains,
                                                      'contains
                                                    |]
                                                  ],
                                            kind = js2n.Const "textBody",
                                            target = String,
                                          },
                                      required =
                                        {
                                            compare = true,
                                            kind = true,
                                            target = true,
                                          },
                                    }
                                ]),
                        degradedAfter = js2n.number.Minimum 0,
                        description = String,
                        frequency =
                          std.contract.Sequence
                              [
                                std.enum.TagOrString,
                                [|
                                  '"1h",
                                  '"30m",
                                  '"10m",
                                  '"5m",
                                  '"1m",
                                  '"30s"
                                |]
                              ],
                        kind = js2n.Const "http",
                        name = String,
                        public = Bool,
                        regions =
                          js2n.array.ArrayOf
                              (std.contract.any_of
                                [
                                  std.contract.Sequence
                                    [
                                      std.enum.TagOrString,
                                      [|
                                        'yyz,
                                        'yul,
                                        'waw,
                                        'syd,
                                        'sin,
                                        'sea,
                                        'sjc,
                                        'scl,
                                        'qro,
                                        'phx,
                                        'otp,
                                        'ord,
                                        'nrt,
                                        'mia,
                                        'mad,
                                        'lhr,
                                        'lax,
                                        'jnb,
                                        'iad,
                                        'hkg,
                                        'gru,
                                        'gig,
                                        'gdl,
                                        'fra,
                                        'eze,
                                        'ewr,
                                        'dfw,
                                        'den,
                                        'cdg,
                                        'bos,
                                        'bom,
                                        'bog,
                                        'atl,
                                        'arn,
                                        'ams
                                      |]
                                    ],
                                  js2n.Const "private"
                                ]),
                        request =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      body = String,
                                      headers =
                                        std.contract.Sequence
                                            [
                                              js2n.record.PropertyNames String,
                                              js2n.record.Record
                                                {
                                                  additional = 'Some String,
                                                  patterns = {},
                                                  properties = {},
                                                  required = {},
                                                }
                                            ],
                                      method =
                                        std.contract.Sequence
                                            [
                                              std.enum.TagOrString,
                                              [|
                                                'OPTIONS,
                                                'HEAD,
                                                'PATCH,
                                                'DELETE,
                                                'PUT,
                                                'POST,
                                                'GET
                                              |]
                                            ],
                                      url = String,
                                    },
                                required =
                                  {
                                      headers = true,
                                      method = true,
                                      url = true,
                                    },
                              },
                        retry =
                          std.contract.Sequence
                              [ js2n.number.Maximum 10, js2n.number.Minimum 1 ],
                        timeout = js2n.number.Minimum 0,
                      },
                  required =
                    {
                        frequency = true,
                        kind = true,
                        name = true,
                        regions = true,
                        request = true,
                      },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        active = Bool,
                        degradedAfter = js2n.number.Minimum 0,
                        description = String,
                        frequency =
                          std.contract.Sequence
                              [
                                std.enum.TagOrString,
                                [|
                                  '"1h",
                                  '"30m",
                                  '"10m",
                                  '"5m",
                                  '"1m",
                                  '"30s"
                                |]
                              ],
                        kind = js2n.Const "tcp",
                        name = String,
                        public = Bool,
                        regions =
                          js2n.array.ArrayOf
                              (std.contract.any_of
                                [
                                  std.contract.Sequence
                                    [
                                      std.enum.TagOrString,
                                      [|
                                        'yyz,
                                        'yul,
                                        'waw,
                                        'syd,
                                        'sin,
                                        'sea,
                                        'sjc,
                                        'scl,
                                        'qro,
                                        'phx,
                                        'otp,
                                        'ord,
                                        'nrt,
                                        'mia,
                                        'mad,
                                        'lhr,
                                        'lax,
                                        'jnb,
                                        'iad,
                                        'hkg,
                                        'gru,
                                        'gig,
                                        'gdl,
                                        'fra,
                                        'eze,
                                        'ewr,
                                        'dfw,
                                        'den,
                                        'cdg,
                                        'bos,
                                        'bom,
                                        'bog,
                                        'atl,
                                        'arn,
                                        'ams
                                      |]
                                    ],
                                  js2n.Const "private"
                                ]),
                        request =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties = { host = String, port = Number, },
                                required = { host = true, port = true, },
                              },
                        retry =
                          std.contract.Sequence
                              [ js2n.number.Maximum 10, js2n.number.Minimum 1 ],
                        timeout = js2n.number.Minimum 0,
                      },
                  required =
                    {
                        frequency = true,
                        kind = true,
                        name = true,
                        regions = true,
                        request = true,
                      },
                }
            ]
        }
      ]