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
                          animation =
                            js2n.record.Record
                                {
                                  additional = 'Some Dyn,
                                  patterns = {},
                                  properties =
                                    {
                                        frames =
                                          js2n.array.ArrayOf
                                              (std.contract.any_of
                                                [
                                                  std.number.Integer,
                                                  js2n.record.Record
                                                    {
                                                      additional = 'Some Dyn,
                                                      patterns = {},
                                                      properties =
                                                        {
                                                            index =
                                                              std.number.Integer,
                                                            time =
                                                              std.number.Integer,
                                                          },
                                                      required = {},
                                                    }
                                                ]),
                                        frametime = std.number.Integer,
                                        height = std.number.Integer,
                                        interpolate = Bool,
                                        width = std.number.Integer,
                                      },
                                  required = {},
                                },
                        },
                    required = { animation = true, },
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
                          fusion =
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
                                            properties =
                                              {
                                                  type =
                                                    js2n.Const "connecting",
                                                },
                                            required = {},
                                          },
                                        Array Dyn
                                      ])
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
                                            properties =
                                              {
                                                  layout =
                                                    std.contract.Sequence
                                                        [
                                                          std.enum.TagOrString,
                                                          [|
                                                            'vertical,
                                                            'simple,
                                                            'horizontal,
                                                            'full,
                                                            'compact
                                                          |]
                                                        ],
                                                  render_type =
                                                    std.contract.Sequence
                                                        [
                                                          std.enum.TagOrString,
                                                          [|
                                                            'translucent,
                                                            'opaque,
                                                            'cutout
                                                          |]
                                                        ],
                                                },
                                            required = {},
                                          },
                                        Array Dyn
                                      ])
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
                                            properties =
                                              {
                                                  frame_height =
                                                    std.contract.Sequence
                                                        [
                                                          std.number.Integer,
                                                          js2n.number.Minimum 1
                                                        ],
                                                  frame_time =
                                                    std.contract.Sequence
                                                        [
                                                          std.number.Integer,
                                                          js2n.number.Minimum 1
                                                        ],
                                                  frame_width =
                                                    std.contract.Sequence
                                                        [
                                                          std.number.Integer,
                                                          js2n.number.Minimum 1
                                                        ],
                                                  from =
                                                    std.contract.Sequence
                                                        [
                                                          std.enum.TagOrString,
                                                          [|
                                                            'top_right,
                                                            'top_left,
                                                            'bottom_right,
                                                            'bottom_left
                                                          |]
                                                        ],
                                                  loop_pause =
                                                    std.contract.Sequence
                                                        [
                                                          std.number.Integer,
                                                          js2n.number.Minimum 0
                                                        ],
                                                  loop_type =
                                                    std.contract.Sequence
                                                        [
                                                          std.enum.TagOrString,
                                                          [| 'reverse, 'reset |]
                                                        ],
                                                  to =
                                                    std.contract.Sequence
                                                        [
                                                          std.enum.TagOrString,
                                                          [|
                                                            'top_right,
                                                            'top_left,
                                                            'bottom_right,
                                                            'bottom_left
                                                          |]
                                                        ],
                                                },
                                            required = {},
                                          },
                                        Array Dyn
                                      ]),
                                  js2n.record.Record
                                    {
                                      additional = 'Some Dyn,
                                      patterns = {},
                                      properties =
                                        {
                                            type =
                                              std.contract.Sequence
                                                  [
                                                    std.enum.TagOrString,
                                                    [|
                                                      'scrolling,
                                                      'connecting
                                                    |]
                                                  ],
                                          },
                                      required = { type = true, },
                                    }
                                ],
                        },
                    required = { fusion = true, },
                  },
                Array Dyn
              ]
          ],
        { _ | Dyn }
      ]