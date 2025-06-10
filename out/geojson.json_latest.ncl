# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  js2n.OneOf
      [
        js2n.record.Record
          {
            additional = 'Some Dyn,
            patterns = {},
            properties =
              {
                  bbox =
                    std.contract.Sequence
                        [ js2n.array.MinItems 4, js2n.array.ArrayOf Number ],
                  coordinates =
                    std.contract.Sequence
                        [ js2n.array.MinItems 2, js2n.array.ArrayOf Number ],
                  type =
                    std.contract.Sequence
                        [ std.enum.TagOrString, [| 'Point |] ],
                },
            required = { coordinates = true, type = true, },
          },
        js2n.record.Record
          {
            additional = 'Some Dyn,
            patterns = {},
            properties =
              {
                  bbox =
                    std.contract.Sequence
                        [ js2n.array.MinItems 4, js2n.array.ArrayOf Number ],
                  coordinates =
                    std.contract.Sequence
                        [
                          js2n.array.MinItems 2,
                          js2n.array.ArrayOf
                            (std.contract.Sequence
                              [
                                js2n.array.MinItems 2,
                                js2n.array.ArrayOf Number
                              ])
                        ],
                  type =
                    std.contract.Sequence
                        [ std.enum.TagOrString, [| 'LineString |] ],
                },
            required = { coordinates = true, type = true, },
          },
        js2n.record.Record
          {
            additional = 'Some Dyn,
            patterns = {},
            properties =
              {
                  bbox =
                    std.contract.Sequence
                        [ js2n.array.MinItems 4, js2n.array.ArrayOf Number ],
                  coordinates =
                    js2n.array.ArrayOf
                        (std.contract.Sequence
                          [
                            js2n.array.MinItems 4,
                            js2n.array.ArrayOf
                              (std.contract.Sequence
                                [
                                  js2n.array.MinItems 2,
                                  js2n.array.ArrayOf Number
                                ])
                          ]),
                  type =
                    std.contract.Sequence
                        [ std.enum.TagOrString, [| 'Polygon |] ],
                },
            required = { coordinates = true, type = true, },
          },
        js2n.record.Record
          {
            additional = 'Some Dyn,
            patterns = {},
            properties =
              {
                  bbox =
                    std.contract.Sequence
                        [ js2n.array.MinItems 4, js2n.array.ArrayOf Number ],
                  coordinates =
                    js2n.array.ArrayOf
                        (std.contract.Sequence
                          [ js2n.array.MinItems 2, js2n.array.ArrayOf Number ]),
                  type =
                    std.contract.Sequence
                        [ std.enum.TagOrString, [| 'MultiPoint |] ],
                },
            required = { coordinates = true, type = true, },
          },
        js2n.record.Record
          {
            additional = 'Some Dyn,
            patterns = {},
            properties =
              {
                  bbox =
                    std.contract.Sequence
                        [ js2n.array.MinItems 4, js2n.array.ArrayOf Number ],
                  coordinates =
                    js2n.array.ArrayOf
                        (std.contract.Sequence
                          [
                            js2n.array.MinItems 2,
                            js2n.array.ArrayOf
                              (std.contract.Sequence
                                [
                                  js2n.array.MinItems 2,
                                  js2n.array.ArrayOf Number
                                ])
                          ]),
                  type =
                    std.contract.Sequence
                        [ std.enum.TagOrString, [| 'MultiLineString |] ],
                },
            required = { coordinates = true, type = true, },
          },
        js2n.record.Record
          {
            additional = 'Some Dyn,
            patterns = {},
            properties =
              {
                  bbox =
                    std.contract.Sequence
                        [ js2n.array.MinItems 4, js2n.array.ArrayOf Number ],
                  coordinates =
                    js2n.array.ArrayOf
                        (js2n.array.ArrayOf
                          (std.contract.Sequence
                            [
                              js2n.array.MinItems 4,
                              js2n.array.ArrayOf
                                (std.contract.Sequence
                                  [
                                    js2n.array.MinItems 2,
                                    js2n.array.ArrayOf Number
                                  ])
                            ])),
                  type =
                    std.contract.Sequence
                        [ std.enum.TagOrString, [| 'MultiPolygon |] ],
                },
            required = { coordinates = true, type = true, },
          },
        js2n.record.Record
          {
            additional = 'Some Dyn,
            patterns = {},
            properties =
              {
                  bbox =
                    std.contract.Sequence
                        [ js2n.array.MinItems 4, js2n.array.ArrayOf Number ],
                  geometries =
                    js2n.array.ArrayOf
                        (js2n.OneOf
                          [
                            js2n.record.Record
                              {
                                additional = 'Some Dyn,
                                patterns = {},
                                properties =
                                  {
                                      bbox =
                                        std.contract.Sequence
                                            [
                                              js2n.array.MinItems 4,
                                              js2n.array.ArrayOf Number
                                            ],
                                      coordinates =
                                        std.contract.Sequence
                                            [
                                              js2n.array.MinItems 2,
                                              js2n.array.ArrayOf Number
                                            ],
                                      type =
                                        std.contract.Sequence
                                            [
                                              std.enum.TagOrString,
                                              [| 'Point |]
                                            ],
                                    },
                                required = { coordinates = true, type = true, },
                              },
                            js2n.record.Record
                              {
                                additional = 'Some Dyn,
                                patterns = {},
                                properties =
                                  {
                                      bbox =
                                        std.contract.Sequence
                                            [
                                              js2n.array.MinItems 4,
                                              js2n.array.ArrayOf Number
                                            ],
                                      coordinates =
                                        std.contract.Sequence
                                            [
                                              js2n.array.MinItems 2,
                                              js2n.array.ArrayOf
                                                (std.contract.Sequence
                                                  [
                                                    js2n.array.MinItems 2,
                                                    js2n.array.ArrayOf Number
                                                  ])
                                            ],
                                      type =
                                        std.contract.Sequence
                                            [
                                              std.enum.TagOrString,
                                              [| 'LineString |]
                                            ],
                                    },
                                required = { coordinates = true, type = true, },
                              },
                            js2n.record.Record
                              {
                                additional = 'Some Dyn,
                                patterns = {},
                                properties =
                                  {
                                      bbox =
                                        std.contract.Sequence
                                            [
                                              js2n.array.MinItems 4,
                                              js2n.array.ArrayOf Number
                                            ],
                                      coordinates =
                                        js2n.array.ArrayOf
                                            (std.contract.Sequence
                                              [
                                                js2n.array.MinItems 4,
                                                js2n.array.ArrayOf
                                                  (std.contract.Sequence
                                                    [
                                                      js2n.array.MinItems 2,
                                                      js2n.array.ArrayOf Number
                                                    ])
                                              ]),
                                      type =
                                        std.contract.Sequence
                                            [
                                              std.enum.TagOrString,
                                              [| 'Polygon |]
                                            ],
                                    },
                                required = { coordinates = true, type = true, },
                              },
                            js2n.record.Record
                              {
                                additional = 'Some Dyn,
                                patterns = {},
                                properties =
                                  {
                                      bbox =
                                        std.contract.Sequence
                                            [
                                              js2n.array.MinItems 4,
                                              js2n.array.ArrayOf Number
                                            ],
                                      coordinates =
                                        js2n.array.ArrayOf
                                            (std.contract.Sequence
                                              [
                                                js2n.array.MinItems 2,
                                                js2n.array.ArrayOf Number
                                              ]),
                                      type =
                                        std.contract.Sequence
                                            [
                                              std.enum.TagOrString,
                                              [| 'MultiPoint |]
                                            ],
                                    },
                                required = { coordinates = true, type = true, },
                              },
                            js2n.record.Record
                              {
                                additional = 'Some Dyn,
                                patterns = {},
                                properties =
                                  {
                                      bbox =
                                        std.contract.Sequence
                                            [
                                              js2n.array.MinItems 4,
                                              js2n.array.ArrayOf Number
                                            ],
                                      coordinates =
                                        js2n.array.ArrayOf
                                            (std.contract.Sequence
                                              [
                                                js2n.array.MinItems 2,
                                                js2n.array.ArrayOf
                                                  (std.contract.Sequence
                                                    [
                                                      js2n.array.MinItems 2,
                                                      js2n.array.ArrayOf Number
                                                    ])
                                              ]),
                                      type =
                                        std.contract.Sequence
                                            [
                                              std.enum.TagOrString,
                                              [| 'MultiLineString |]
                                            ],
                                    },
                                required = { coordinates = true, type = true, },
                              },
                            js2n.record.Record
                              {
                                additional = 'Some Dyn,
                                patterns = {},
                                properties =
                                  {
                                      bbox =
                                        std.contract.Sequence
                                            [
                                              js2n.array.MinItems 4,
                                              js2n.array.ArrayOf Number
                                            ],
                                      coordinates =
                                        js2n.array.ArrayOf
                                            (js2n.array.ArrayOf
                                              (std.contract.Sequence
                                                [
                                                  js2n.array.MinItems 4,
                                                  js2n.array.ArrayOf
                                                    (std.contract.Sequence
                                                      [
                                                        js2n.array.MinItems 2,
                                                        js2n.array.ArrayOf
                                                          Number
                                                      ])
                                                ])),
                                      type =
                                        std.contract.Sequence
                                            [
                                              std.enum.TagOrString,
                                              [| 'MultiPolygon |]
                                            ],
                                    },
                                required = { coordinates = true, type = true, },
                              }
                          ]),
                  type =
                    std.contract.Sequence
                        [ std.enum.TagOrString, [| 'GeometryCollection |] ],
                },
            required = { geometries = true, type = true, },
          },
        js2n.record.Record
          {
            additional = 'Some Dyn,
            patterns = {},
            properties =
              {
                  bbox =
                    std.contract.Sequence
                        [ js2n.array.MinItems 4, js2n.array.ArrayOf Number ],
                  geometry =
                    js2n.OneOf
                        [
                          js2n.Null,
                          js2n.record.Record
                            {
                              additional = 'Some Dyn,
                              patterns = {},
                              properties =
                                {
                                    bbox =
                                      std.contract.Sequence
                                          [
                                            js2n.array.MinItems 4,
                                            js2n.array.ArrayOf Number
                                          ],
                                    coordinates =
                                      std.contract.Sequence
                                          [
                                            js2n.array.MinItems 2,
                                            js2n.array.ArrayOf Number
                                          ],
                                    type =
                                      std.contract.Sequence
                                          [
                                            std.enum.TagOrString,
                                            [| 'Point |]
                                          ],
                                  },
                              required = { coordinates = true, type = true, },
                            },
                          js2n.record.Record
                            {
                              additional = 'Some Dyn,
                              patterns = {},
                              properties =
                                {
                                    bbox =
                                      std.contract.Sequence
                                          [
                                            js2n.array.MinItems 4,
                                            js2n.array.ArrayOf Number
                                          ],
                                    coordinates =
                                      std.contract.Sequence
                                          [
                                            js2n.array.MinItems 2,
                                            js2n.array.ArrayOf
                                              (std.contract.Sequence
                                                [
                                                  js2n.array.MinItems 2,
                                                  js2n.array.ArrayOf Number
                                                ])
                                          ],
                                    type =
                                      std.contract.Sequence
                                          [
                                            std.enum.TagOrString,
                                            [| 'LineString |]
                                          ],
                                  },
                              required = { coordinates = true, type = true, },
                            },
                          js2n.record.Record
                            {
                              additional = 'Some Dyn,
                              patterns = {},
                              properties =
                                {
                                    bbox =
                                      std.contract.Sequence
                                          [
                                            js2n.array.MinItems 4,
                                            js2n.array.ArrayOf Number
                                          ],
                                    coordinates =
                                      js2n.array.ArrayOf
                                          (std.contract.Sequence
                                            [
                                              js2n.array.MinItems 4,
                                              js2n.array.ArrayOf
                                                (std.contract.Sequence
                                                  [
                                                    js2n.array.MinItems 2,
                                                    js2n.array.ArrayOf Number
                                                  ])
                                            ]),
                                    type =
                                      std.contract.Sequence
                                          [
                                            std.enum.TagOrString,
                                            [| 'Polygon |]
                                          ],
                                  },
                              required = { coordinates = true, type = true, },
                            },
                          js2n.record.Record
                            {
                              additional = 'Some Dyn,
                              patterns = {},
                              properties =
                                {
                                    bbox =
                                      std.contract.Sequence
                                          [
                                            js2n.array.MinItems 4,
                                            js2n.array.ArrayOf Number
                                          ],
                                    coordinates =
                                      js2n.array.ArrayOf
                                          (std.contract.Sequence
                                            [
                                              js2n.array.MinItems 2,
                                              js2n.array.ArrayOf Number
                                            ]),
                                    type =
                                      std.contract.Sequence
                                          [
                                            std.enum.TagOrString,
                                            [| 'MultiPoint |]
                                          ],
                                  },
                              required = { coordinates = true, type = true, },
                            },
                          js2n.record.Record
                            {
                              additional = 'Some Dyn,
                              patterns = {},
                              properties =
                                {
                                    bbox =
                                      std.contract.Sequence
                                          [
                                            js2n.array.MinItems 4,
                                            js2n.array.ArrayOf Number
                                          ],
                                    coordinates =
                                      js2n.array.ArrayOf
                                          (std.contract.Sequence
                                            [
                                              js2n.array.MinItems 2,
                                              js2n.array.ArrayOf
                                                (std.contract.Sequence
                                                  [
                                                    js2n.array.MinItems 2,
                                                    js2n.array.ArrayOf Number
                                                  ])
                                            ]),
                                    type =
                                      std.contract.Sequence
                                          [
                                            std.enum.TagOrString,
                                            [| 'MultiLineString |]
                                          ],
                                  },
                              required = { coordinates = true, type = true, },
                            },
                          js2n.record.Record
                            {
                              additional = 'Some Dyn,
                              patterns = {},
                              properties =
                                {
                                    bbox =
                                      std.contract.Sequence
                                          [
                                            js2n.array.MinItems 4,
                                            js2n.array.ArrayOf Number
                                          ],
                                    coordinates =
                                      js2n.array.ArrayOf
                                          (js2n.array.ArrayOf
                                            (std.contract.Sequence
                                              [
                                                js2n.array.MinItems 4,
                                                js2n.array.ArrayOf
                                                  (std.contract.Sequence
                                                    [
                                                      js2n.array.MinItems 2,
                                                      js2n.array.ArrayOf Number
                                                    ])
                                              ])),
                                    type =
                                      std.contract.Sequence
                                          [
                                            std.enum.TagOrString,
                                            [| 'MultiPolygon |]
                                          ],
                                  },
                              required = { coordinates = true, type = true, },
                            },
                          js2n.record.Record
                            {
                              additional = 'Some Dyn,
                              patterns = {},
                              properties =
                                {
                                    bbox =
                                      std.contract.Sequence
                                          [
                                            js2n.array.MinItems 4,
                                            js2n.array.ArrayOf Number
                                          ],
                                    geometries =
                                      js2n.array.ArrayOf
                                          (js2n.OneOf
                                            [
                                              js2n.record.Record
                                                {
                                                  additional = 'Some Dyn,
                                                  patterns = {},
                                                  properties =
                                                    {
                                                        bbox =
                                                          std.contract.Sequence
                                                              [
                                                                js2n.array.MinItems
                                                                  4,
                                                                js2n.array.ArrayOf
                                                                  Number
                                                              ],
                                                        coordinates =
                                                          std.contract.Sequence
                                                              [
                                                                js2n.array.MinItems
                                                                  2,
                                                                js2n.array.ArrayOf
                                                                  Number
                                                              ],
                                                        type =
                                                          std.contract.Sequence
                                                              [
                                                                std.enum.TagOrString,
                                                                [| 'Point |]
                                                              ],
                                                      },
                                                  required =
                                                    {
                                                        coordinates = true,
                                                        type = true,
                                                      },
                                                },
                                              js2n.record.Record
                                                {
                                                  additional = 'Some Dyn,
                                                  patterns = {},
                                                  properties =
                                                    {
                                                        bbox =
                                                          std.contract.Sequence
                                                              [
                                                                js2n.array.MinItems
                                                                  4,
                                                                js2n.array.ArrayOf
                                                                  Number
                                                              ],
                                                        coordinates =
                                                          std.contract.Sequence
                                                              [
                                                                js2n.array.MinItems
                                                                  2,
                                                                js2n.array.ArrayOf
                                                                  (std.contract.Sequence
                                                                    [
                                                                      js2n.array.MinItems
                                                                        2,
                                                                      js2n.array.ArrayOf
                                                                        Number
                                                                    ])
                                                              ],
                                                        type =
                                                          std.contract.Sequence
                                                              [
                                                                std.enum.TagOrString,
                                                                [|
                                                                  'LineString
                                                                |]
                                                              ],
                                                      },
                                                  required =
                                                    {
                                                        coordinates = true,
                                                        type = true,
                                                      },
                                                },
                                              js2n.record.Record
                                                {
                                                  additional = 'Some Dyn,
                                                  patterns = {},
                                                  properties =
                                                    {
                                                        bbox =
                                                          std.contract.Sequence
                                                              [
                                                                js2n.array.MinItems
                                                                  4,
                                                                js2n.array.ArrayOf
                                                                  Number
                                                              ],
                                                        coordinates =
                                                          js2n.array.ArrayOf
                                                              (std.contract.Sequence
                                                                [
                                                                  js2n.array.MinItems
                                                                    4,
                                                                  js2n.array.ArrayOf
                                                                    (std.contract.Sequence
                                                                      [
                                                                        js2n.array.MinItems
                                                                          2,
                                                                        js2n.array.ArrayOf
                                                                          Number
                                                                      ])
                                                                ]),
                                                        type =
                                                          std.contract.Sequence
                                                              [
                                                                std.enum.TagOrString,
                                                                [| 'Polygon |]
                                                              ],
                                                      },
                                                  required =
                                                    {
                                                        coordinates = true,
                                                        type = true,
                                                      },
                                                },
                                              js2n.record.Record
                                                {
                                                  additional = 'Some Dyn,
                                                  patterns = {},
                                                  properties =
                                                    {
                                                        bbox =
                                                          std.contract.Sequence
                                                              [
                                                                js2n.array.MinItems
                                                                  4,
                                                                js2n.array.ArrayOf
                                                                  Number
                                                              ],
                                                        coordinates =
                                                          js2n.array.ArrayOf
                                                              (std.contract.Sequence
                                                                [
                                                                  js2n.array.MinItems
                                                                    2,
                                                                  js2n.array.ArrayOf
                                                                    Number
                                                                ]),
                                                        type =
                                                          std.contract.Sequence
                                                              [
                                                                std.enum.TagOrString,
                                                                [|
                                                                  'MultiPoint
                                                                |]
                                                              ],
                                                      },
                                                  required =
                                                    {
                                                        coordinates = true,
                                                        type = true,
                                                      },
                                                },
                                              js2n.record.Record
                                                {
                                                  additional = 'Some Dyn,
                                                  patterns = {},
                                                  properties =
                                                    {
                                                        bbox =
                                                          std.contract.Sequence
                                                              [
                                                                js2n.array.MinItems
                                                                  4,
                                                                js2n.array.ArrayOf
                                                                  Number
                                                              ],
                                                        coordinates =
                                                          js2n.array.ArrayOf
                                                              (std.contract.Sequence
                                                                [
                                                                  js2n.array.MinItems
                                                                    2,
                                                                  js2n.array.ArrayOf
                                                                    (std.contract.Sequence
                                                                      [
                                                                        js2n.array.MinItems
                                                                          2,
                                                                        js2n.array.ArrayOf
                                                                          Number
                                                                      ])
                                                                ]),
                                                        type =
                                                          std.contract.Sequence
                                                              [
                                                                std.enum.TagOrString,
                                                                [|
                                                                  'MultiLineString
                                                                |]
                                                              ],
                                                      },
                                                  required =
                                                    {
                                                        coordinates = true,
                                                        type = true,
                                                      },
                                                },
                                              js2n.record.Record
                                                {
                                                  additional = 'Some Dyn,
                                                  patterns = {},
                                                  properties =
                                                    {
                                                        bbox =
                                                          std.contract.Sequence
                                                              [
                                                                js2n.array.MinItems
                                                                  4,
                                                                js2n.array.ArrayOf
                                                                  Number
                                                              ],
                                                        coordinates =
                                                          js2n.array.ArrayOf
                                                              (js2n.array.ArrayOf
                                                                (std.contract.Sequence
                                                                  [
                                                                    js2n.array.MinItems
                                                                      4,
                                                                    js2n.array.ArrayOf
                                                                      (std.contract.Sequence
                                                                        [
                                                                          js2n.array.MinItems
                                                                            2,
                                                                          js2n.array.ArrayOf
                                                                            Number
                                                                        ])
                                                                  ])),
                                                        type =
                                                          std.contract.Sequence
                                                              [
                                                                std.enum.TagOrString,
                                                                [|
                                                                  'MultiPolygon
                                                                |]
                                                              ],
                                                      },
                                                  required =
                                                    {
                                                        coordinates = true,
                                                        type = true,
                                                      },
                                                }
                                            ]),
                                    type =
                                      std.contract.Sequence
                                          [
                                            std.enum.TagOrString,
                                            [| 'GeometryCollection |]
                                          ],
                                  },
                              required = { geometries = true, type = true, },
                            }
                        ],
                  id = std.contract.any_of [ Number, String ],
                  properties = js2n.Nullable ({ _ | Dyn }),
                  type =
                    std.contract.Sequence
                        [ std.enum.TagOrString, [| 'Feature |] ],
                },
            required = { geometry = true, properties = true, type = true, },
          },
        js2n.record.Record
          {
            additional = 'Some Dyn,
            patterns = {},
            properties =
              {
                  bbox =
                    std.contract.Sequence
                        [ js2n.array.MinItems 4, js2n.array.ArrayOf Number ],
                  features =
                    js2n.array.ArrayOf
                        (js2n.record.Record
                          {
                            additional = 'Some Dyn,
                            patterns = {},
                            properties =
                              {
                                  bbox =
                                    std.contract.Sequence
                                        [
                                          js2n.array.MinItems 4,
                                          js2n.array.ArrayOf Number
                                        ],
                                  geometry =
                                    js2n.OneOf
                                        [
                                          js2n.Null,
                                          js2n.record.Record
                                            {
                                              additional = 'Some Dyn,
                                              patterns = {},
                                              properties =
                                                {
                                                    bbox =
                                                      std.contract.Sequence
                                                          [
                                                            js2n.array.MinItems
                                                              4,
                                                            js2n.array.ArrayOf
                                                              Number
                                                          ],
                                                    coordinates =
                                                      std.contract.Sequence
                                                          [
                                                            js2n.array.MinItems
                                                              2,
                                                            js2n.array.ArrayOf
                                                              Number
                                                          ],
                                                    type =
                                                      std.contract.Sequence
                                                          [
                                                            std.enum.TagOrString,
                                                            [| 'Point |]
                                                          ],
                                                  },
                                              required =
                                                {
                                                    coordinates = true,
                                                    type = true,
                                                  },
                                            },
                                          js2n.record.Record
                                            {
                                              additional = 'Some Dyn,
                                              patterns = {},
                                              properties =
                                                {
                                                    bbox =
                                                      std.contract.Sequence
                                                          [
                                                            js2n.array.MinItems
                                                              4,
                                                            js2n.array.ArrayOf
                                                              Number
                                                          ],
                                                    coordinates =
                                                      std.contract.Sequence
                                                          [
                                                            js2n.array.MinItems
                                                              2,
                                                            js2n.array.ArrayOf
                                                              (std.contract.Sequence
                                                                [
                                                                  js2n.array.MinItems
                                                                    2,
                                                                  js2n.array.ArrayOf
                                                                    Number
                                                                ])
                                                          ],
                                                    type =
                                                      std.contract.Sequence
                                                          [
                                                            std.enum.TagOrString,
                                                            [| 'LineString |]
                                                          ],
                                                  },
                                              required =
                                                {
                                                    coordinates = true,
                                                    type = true,
                                                  },
                                            },
                                          js2n.record.Record
                                            {
                                              additional = 'Some Dyn,
                                              patterns = {},
                                              properties =
                                                {
                                                    bbox =
                                                      std.contract.Sequence
                                                          [
                                                            js2n.array.MinItems
                                                              4,
                                                            js2n.array.ArrayOf
                                                              Number
                                                          ],
                                                    coordinates =
                                                      js2n.array.ArrayOf
                                                          (std.contract.Sequence
                                                            [
                                                              js2n.array.MinItems
                                                                4,
                                                              js2n.array.ArrayOf
                                                                (std.contract.Sequence
                                                                  [
                                                                    js2n.array.MinItems
                                                                      2,
                                                                    js2n.array.ArrayOf
                                                                      Number
                                                                  ])
                                                            ]),
                                                    type =
                                                      std.contract.Sequence
                                                          [
                                                            std.enum.TagOrString,
                                                            [| 'Polygon |]
                                                          ],
                                                  },
                                              required =
                                                {
                                                    coordinates = true,
                                                    type = true,
                                                  },
                                            },
                                          js2n.record.Record
                                            {
                                              additional = 'Some Dyn,
                                              patterns = {},
                                              properties =
                                                {
                                                    bbox =
                                                      std.contract.Sequence
                                                          [
                                                            js2n.array.MinItems
                                                              4,
                                                            js2n.array.ArrayOf
                                                              Number
                                                          ],
                                                    coordinates =
                                                      js2n.array.ArrayOf
                                                          (std.contract.Sequence
                                                            [
                                                              js2n.array.MinItems
                                                                2,
                                                              js2n.array.ArrayOf
                                                                Number
                                                            ]),
                                                    type =
                                                      std.contract.Sequence
                                                          [
                                                            std.enum.TagOrString,
                                                            [| 'MultiPoint |]
                                                          ],
                                                  },
                                              required =
                                                {
                                                    coordinates = true,
                                                    type = true,
                                                  },
                                            },
                                          js2n.record.Record
                                            {
                                              additional = 'Some Dyn,
                                              patterns = {},
                                              properties =
                                                {
                                                    bbox =
                                                      std.contract.Sequence
                                                          [
                                                            js2n.array.MinItems
                                                              4,
                                                            js2n.array.ArrayOf
                                                              Number
                                                          ],
                                                    coordinates =
                                                      js2n.array.ArrayOf
                                                          (std.contract.Sequence
                                                            [
                                                              js2n.array.MinItems
                                                                2,
                                                              js2n.array.ArrayOf
                                                                (std.contract.Sequence
                                                                  [
                                                                    js2n.array.MinItems
                                                                      2,
                                                                    js2n.array.ArrayOf
                                                                      Number
                                                                  ])
                                                            ]),
                                                    type =
                                                      std.contract.Sequence
                                                          [
                                                            std.enum.TagOrString,
                                                            [|
                                                              'MultiLineString
                                                            |]
                                                          ],
                                                  },
                                              required =
                                                {
                                                    coordinates = true,
                                                    type = true,
                                                  },
                                            },
                                          js2n.record.Record
                                            {
                                              additional = 'Some Dyn,
                                              patterns = {},
                                              properties =
                                                {
                                                    bbox =
                                                      std.contract.Sequence
                                                          [
                                                            js2n.array.MinItems
                                                              4,
                                                            js2n.array.ArrayOf
                                                              Number
                                                          ],
                                                    coordinates =
                                                      js2n.array.ArrayOf
                                                          (js2n.array.ArrayOf
                                                            (std.contract.Sequence
                                                              [
                                                                js2n.array.MinItems
                                                                  4,
                                                                js2n.array.ArrayOf
                                                                  (std.contract.Sequence
                                                                    [
                                                                      js2n.array.MinItems
                                                                        2,
                                                                      js2n.array.ArrayOf
                                                                        Number
                                                                    ])
                                                              ])),
                                                    type =
                                                      std.contract.Sequence
                                                          [
                                                            std.enum.TagOrString,
                                                            [| 'MultiPolygon |]
                                                          ],
                                                  },
                                              required =
                                                {
                                                    coordinates = true,
                                                    type = true,
                                                  },
                                            },
                                          js2n.record.Record
                                            {
                                              additional = 'Some Dyn,
                                              patterns = {},
                                              properties =
                                                {
                                                    bbox =
                                                      std.contract.Sequence
                                                          [
                                                            js2n.array.MinItems
                                                              4,
                                                            js2n.array.ArrayOf
                                                              Number
                                                          ],
                                                    geometries =
                                                      js2n.array.ArrayOf
                                                          (js2n.OneOf
                                                            [
                                                              js2n.record.Record
                                                                {
                                                                  additional =
                                                                    'Some Dyn,
                                                                  patterns = {},
                                                                  properties =
                                                                    {
                                                                        bbox =
                                                                          std.contract.Sequence
                                                                              [
                                                                                js2n.array.MinItems
                                                                                  4,
                                                                                js2n.array.ArrayOf
                                                                                  Number
                                                                              ],
                                                                        coordinates =
                                                                          std.contract.Sequence
                                                                              [
                                                                                js2n.array.MinItems
                                                                                  2,
                                                                                js2n.array.ArrayOf
                                                                                  Number
                                                                              ],
                                                                        type =
                                                                          std.contract.Sequence
                                                                              [
                                                                                std.enum.TagOrString,
                                                                                [|
                                                                                  'Point
                                                                                |]
                                                                              ],
                                                                      },
                                                                  required =
                                                                    {
                                                                        coordinates =
                                                                          true,
                                                                        type =
                                                                          true,
                                                                      },
                                                                },
                                                              js2n.record.Record
                                                                {
                                                                  additional =
                                                                    'Some Dyn,
                                                                  patterns = {},
                                                                  properties =
                                                                    {
                                                                        bbox =
                                                                          std.contract.Sequence
                                                                              [
                                                                                js2n.array.MinItems
                                                                                  4,
                                                                                js2n.array.ArrayOf
                                                                                  Number
                                                                              ],
                                                                        coordinates =
                                                                          std.contract.Sequence
                                                                              [
                                                                                js2n.array.MinItems
                                                                                  2,
                                                                                js2n.array.ArrayOf
                                                                                  (std.contract.Sequence
                                                                                    [
                                                                                      js2n.array.MinItems
                                                                                        2,
                                                                                      js2n.array.ArrayOf
                                                                                        Number
                                                                                    ])
                                                                              ],
                                                                        type =
                                                                          std.contract.Sequence
                                                                              [
                                                                                std.enum.TagOrString,
                                                                                [|
                                                                                  'LineString
                                                                                |]
                                                                              ],
                                                                      },
                                                                  required =
                                                                    {
                                                                        coordinates =
                                                                          true,
                                                                        type =
                                                                          true,
                                                                      },
                                                                },
                                                              js2n.record.Record
                                                                {
                                                                  additional =
                                                                    'Some Dyn,
                                                                  patterns = {},
                                                                  properties =
                                                                    {
                                                                        bbox =
                                                                          std.contract.Sequence
                                                                              [
                                                                                js2n.array.MinItems
                                                                                  4,
                                                                                js2n.array.ArrayOf
                                                                                  Number
                                                                              ],
                                                                        coordinates =
                                                                          js2n.array.ArrayOf
                                                                              (std.contract.Sequence
                                                                                [
                                                                                  js2n.array.MinItems
                                                                                    4,
                                                                                  js2n.array.ArrayOf
                                                                                    (std.contract.Sequence
                                                                                      [
                                                                                        js2n.array.MinItems
                                                                                          2,
                                                                                        js2n.array.ArrayOf
                                                                                          Number
                                                                                      ])
                                                                                ]),
                                                                        type =
                                                                          std.contract.Sequence
                                                                              [
                                                                                std.enum.TagOrString,
                                                                                [|
                                                                                  'Polygon
                                                                                |]
                                                                              ],
                                                                      },
                                                                  required =
                                                                    {
                                                                        coordinates =
                                                                          true,
                                                                        type =
                                                                          true,
                                                                      },
                                                                },
                                                              js2n.record.Record
                                                                {
                                                                  additional =
                                                                    'Some Dyn,
                                                                  patterns = {},
                                                                  properties =
                                                                    {
                                                                        bbox =
                                                                          std.contract.Sequence
                                                                              [
                                                                                js2n.array.MinItems
                                                                                  4,
                                                                                js2n.array.ArrayOf
                                                                                  Number
                                                                              ],
                                                                        coordinates =
                                                                          js2n.array.ArrayOf
                                                                              (std.contract.Sequence
                                                                                [
                                                                                  js2n.array.MinItems
                                                                                    2,
                                                                                  js2n.array.ArrayOf
                                                                                    Number
                                                                                ]),
                                                                        type =
                                                                          std.contract.Sequence
                                                                              [
                                                                                std.enum.TagOrString,
                                                                                [|
                                                                                  'MultiPoint
                                                                                |]
                                                                              ],
                                                                      },
                                                                  required =
                                                                    {
                                                                        coordinates =
                                                                          true,
                                                                        type =
                                                                          true,
                                                                      },
                                                                },
                                                              js2n.record.Record
                                                                {
                                                                  additional =
                                                                    'Some Dyn,
                                                                  patterns = {},
                                                                  properties =
                                                                    {
                                                                        bbox =
                                                                          std.contract.Sequence
                                                                              [
                                                                                js2n.array.MinItems
                                                                                  4,
                                                                                js2n.array.ArrayOf
                                                                                  Number
                                                                              ],
                                                                        coordinates =
                                                                          js2n.array.ArrayOf
                                                                              (std.contract.Sequence
                                                                                [
                                                                                  js2n.array.MinItems
                                                                                    2,
                                                                                  js2n.array.ArrayOf
                                                                                    (std.contract.Sequence
                                                                                      [
                                                                                        js2n.array.MinItems
                                                                                          2,
                                                                                        js2n.array.ArrayOf
                                                                                          Number
                                                                                      ])
                                                                                ]),
                                                                        type =
                                                                          std.contract.Sequence
                                                                              [
                                                                                std.enum.TagOrString,
                                                                                [|
                                                                                  'MultiLineString
                                                                                |]
                                                                              ],
                                                                      },
                                                                  required =
                                                                    {
                                                                        coordinates =
                                                                          true,
                                                                        type =
                                                                          true,
                                                                      },
                                                                },
                                                              js2n.record.Record
                                                                {
                                                                  additional =
                                                                    'Some Dyn,
                                                                  patterns = {},
                                                                  properties =
                                                                    {
                                                                        bbox =
                                                                          std.contract.Sequence
                                                                              [
                                                                                js2n.array.MinItems
                                                                                  4,
                                                                                js2n.array.ArrayOf
                                                                                  Number
                                                                              ],
                                                                        coordinates =
                                                                          js2n.array.ArrayOf
                                                                              (js2n.array.ArrayOf
                                                                                (std.contract.Sequence
                                                                                  [
                                                                                    js2n.array.MinItems
                                                                                      4,
                                                                                    js2n.array.ArrayOf
                                                                                      (std.contract.Sequence
                                                                                        [
                                                                                          js2n.array.MinItems
                                                                                            2,
                                                                                          js2n.array.ArrayOf
                                                                                            Number
                                                                                        ])
                                                                                  ])),
                                                                        type =
                                                                          std.contract.Sequence
                                                                              [
                                                                                std.enum.TagOrString,
                                                                                [|
                                                                                  'MultiPolygon
                                                                                |]
                                                                              ],
                                                                      },
                                                                  required =
                                                                    {
                                                                        coordinates =
                                                                          true,
                                                                        type =
                                                                          true,
                                                                      },
                                                                }
                                                            ]),
                                                    type =
                                                      std.contract.Sequence
                                                          [
                                                            std.enum.TagOrString,
                                                            [|
                                                              'GeometryCollection
                                                            |]
                                                          ],
                                                  },
                                              required =
                                                {
                                                    geometries = true,
                                                    type = true,
                                                  },
                                            }
                                        ],
                                  id = std.contract.any_of [ Number, String ],
                                  properties = js2n.Nullable ({ _ | Dyn }),
                                  type =
                                    std.contract.Sequence
                                        [
                                          std.enum.TagOrString,
                                          [| 'Feature |]
                                        ],
                                },
                            required =
                              {
                                  geometry = true,
                                  properties = true,
                                  type = true,
                                },
                          }),
                  type =
                    std.contract.Sequence
                        [ std.enum.TagOrString, [| 'FeatureCollection |] ],
                },
            required = { features = true, type = true, },
          }
      ]