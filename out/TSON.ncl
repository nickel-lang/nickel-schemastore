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
        std.contract.any_of
          [
            js2n.record.Required [ "tunings" ],
            js2n.record.Required [ "spectra" ],
            js2n.record.Required [ "sets" ]
          ],
        {
          sets
            | js2n.array.MinItems 1
            | js2n.array.UniqueItems
            | Array
              {
                description
                  | String
                  | doc "A description of the set"
                  | optional,
                id | String | doc "A unique identifier for the set",
                members
                  | js2n.array.MinItems 1
                  | Array
                    {
                      "override scale spectra"
                        | Bool
                        | doc "If true, the set's spectrum should be applied to all scales in the set's tuning, overriding any spectra that are references by the scales."
                        | optional,
                      spectrum
                        | String
                        | doc "A reference of a spectrum's ID"
                        | optional,
                      tuning
                        | String
                        | doc "A reference of a tuning's ID"
                        | optional,
                      ..
                    }
                  | doc "A list of set member objects",
                name | String | doc "The set's name" | optional,
                ..
              }
            | doc "A list of set objects"
            | optional,
          spectra
            | js2n.array.MinItems 1
            | js2n.array.UniqueItems
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
                        std.contract.Sequence
                          [
                            js2n.record.MinProperties 2,
                            js2n.record.PropertyNames
                              (std.contract.Sequence
                                [
                                  std.enum.TagOrString,
                                  [| '"partial distribution", 'partials |]
                                ])
                          ],
                        Array Dyn
                      ]) js2n.Never
                    (js2n.OneOf
                      [
                        std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            js2n.record.Required [ "partials" ],
                            Array Dyn
                          ],
                        std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            js2n.record.Required [ "partial distribution" ],
                            Array Dyn
                          ]
                      ]),
                  {
                    description
                      | String
                      | doc "A description of the spectrum"
                      | optional,
                    id | String | doc "A unique identifier for the spectrum",
                    name | String | doc "The spectrum's name" | optional,
                    "partial distribution"
                      | js2n.array.MinItems 1
                      | js2n.array.UniqueItems
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
                                  std.contract.Sequence
                                    [
                                      js2n.record.MinProperties 2,
                                      js2n.record.PropertyNames
                                        (std.contract.Sequence
                                          [
                                            std.enum.TagOrString,
                                            [| 'ratio, '"frequency ratio" |]
                                          ])
                                    ],
                                  Array Dyn
                                ]) js2n.Never
                              (js2n.OneOf
                                [
                                  std.contract.any_of
                                    [
                                      js2n.Null,
                                      Bool,
                                      Number,
                                      String,
                                      js2n.record.Required
                                        [ "frequency ratio" ],
                                      Array Dyn
                                    ],
                                  std.contract.any_of
                                    [
                                      js2n.Null,
                                      Bool,
                                      Number,
                                      String,
                                      js2n.record.Required [ "ratio" ],
                                      Array Dyn
                                    ]
                                ]),
                            js2n.IfThenElse
                              (std.contract.any_of
                                [
                                  js2n.Null,
                                  Bool,
                                  Number,
                                  String,
                                  std.contract.Sequence
                                    [
                                      js2n.record.MinProperties 2,
                                      js2n.record.PropertyNames
                                        (std.contract.Sequence
                                          [
                                            std.enum.TagOrString,
                                            [| 'weight, '"amplitude weight" |]
                                          ])
                                    ],
                                  Array Dyn
                                ]) js2n.Never
                              (js2n.OneOf
                                [
                                  std.contract.any_of
                                    [
                                      js2n.Null,
                                      Bool,
                                      Number,
                                      String,
                                      js2n.record.Required
                                        [ "amplitude weight" ],
                                      Array Dyn
                                    ],
                                  std.contract.any_of
                                    [
                                      js2n.Null,
                                      Bool,
                                      Number,
                                      String,
                                      js2n.record.Required [ "weight" ],
                                      Array Dyn
                                    ]
                                ]),
                            {
                              "amplitude weight"
                                | std.contract.any_of
                                  [
                                    js2n.number.ExclusiveMinimum 0,
                                    js2n.string.Matches
                                      "^([1234567890.,+\\-*/^%()e ]|(pi)|(tau)|(abs)|(log))+$"
                                  ]
                                | doc m%"
                                  The partial's amplitude weight.
                                  This determines how much the partial contributes to the overall power (ie., loudness) of the reconstructed spectrum.
                                "%
                                | optional,
                              "frequency ratio"
                                | std.contract.any_of
                                  [
                                    js2n.number.ExclusiveMinimum 0,
                                    js2n.string.Matches
                                      "^([1234567890.,+\\-*/^%()e ]|(pi)|(tau)|(abs)|(log))+$"
                                  ]
                                | doc "The partial's frequency ratio"
                                | optional,
                              ratio
                                | std.contract.any_of
                                  [
                                    js2n.number.ExclusiveMinimum 0,
                                    js2n.string.Matches
                                      "^([1234567890.,+\\-*/^%()e ]|(pi)|(tau)|(abs)|(log))+$"
                                  ]
                                | doc "The partial's frequency ratio"
                                | optional,
                              weight
                                | std.contract.any_of
                                  [
                                    js2n.number.ExclusiveMinimum 0,
                                    js2n.string.Matches
                                      "^([1234567890.,+\\-*/^%()e ]|(pi)|(tau)|(abs)|(log))+$"
                                  ]
                                | doc m%"
                                  The partial's amplitude weight.
                                  This determines how much the partial contributes to the overall power (ie., loudness) of the reconstructed spectrum.
                                "%
                                | optional,
                              ..
                            }
                          ]
                      )
                      | doc "A list of partials that should be used to reconstruct the spectrum"
                      | optional,
                    partials
                      | js2n.array.MinItems 1
                      | js2n.array.UniqueItems
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
                                  std.contract.Sequence
                                    [
                                      js2n.record.MinProperties 2,
                                      js2n.record.PropertyNames
                                        (std.contract.Sequence
                                          [
                                            std.enum.TagOrString,
                                            [| 'ratio, '"frequency ratio" |]
                                          ])
                                    ],
                                  Array Dyn
                                ]) js2n.Never
                              (js2n.OneOf
                                [
                                  std.contract.any_of
                                    [
                                      js2n.Null,
                                      Bool,
                                      Number,
                                      String,
                                      js2n.record.Required
                                        [ "frequency ratio" ],
                                      Array Dyn
                                    ],
                                  std.contract.any_of
                                    [
                                      js2n.Null,
                                      Bool,
                                      Number,
                                      String,
                                      js2n.record.Required [ "ratio" ],
                                      Array Dyn
                                    ]
                                ]),
                            js2n.IfThenElse
                              (std.contract.any_of
                                [
                                  js2n.Null,
                                  Bool,
                                  Number,
                                  String,
                                  std.contract.Sequence
                                    [
                                      js2n.record.MinProperties 2,
                                      js2n.record.PropertyNames
                                        (std.contract.Sequence
                                          [
                                            std.enum.TagOrString,
                                            [| 'weight, '"amplitude weight" |]
                                          ])
                                    ],
                                  Array Dyn
                                ]) js2n.Never
                              (js2n.OneOf
                                [
                                  std.contract.any_of
                                    [
                                      js2n.Null,
                                      Bool,
                                      Number,
                                      String,
                                      js2n.record.Required
                                        [ "amplitude weight" ],
                                      Array Dyn
                                    ],
                                  std.contract.any_of
                                    [
                                      js2n.Null,
                                      Bool,
                                      Number,
                                      String,
                                      js2n.record.Required [ "weight" ],
                                      Array Dyn
                                    ]
                                ]),
                            {
                              "amplitude weight"
                                | std.contract.any_of
                                  [
                                    js2n.number.ExclusiveMinimum 0,
                                    js2n.string.Matches
                                      "^([1234567890.,+\\-*/^%()e ]|(pi)|(tau)|(abs)|(log))+$"
                                  ]
                                | doc m%"
                                  The partial's amplitude weight.
                                  This determines how much the partial contributes to the overall power (ie., loudness) of the reconstructed spectrum.
                                "%
                                | optional,
                              "frequency ratio"
                                | std.contract.any_of
                                  [
                                    js2n.number.ExclusiveMinimum 0,
                                    js2n.string.Matches
                                      "^([1234567890.,+\\-*/^%()e ]|(pi)|(tau)|(abs)|(log))+$"
                                  ]
                                | doc "The partial's frequency ratio"
                                | optional,
                              ratio
                                | std.contract.any_of
                                  [
                                    js2n.number.ExclusiveMinimum 0,
                                    js2n.string.Matches
                                      "^([1234567890.,+\\-*/^%()e ]|(pi)|(tau)|(abs)|(log))+$"
                                  ]
                                | doc "The partial's frequency ratio"
                                | optional,
                              weight
                                | std.contract.any_of
                                  [
                                    js2n.number.ExclusiveMinimum 0,
                                    js2n.string.Matches
                                      "^([1234567890.,+\\-*/^%()e ]|(pi)|(tau)|(abs)|(log))+$"
                                  ]
                                | doc m%"
                                  The partial's amplitude weight.
                                  This determines how much the partial contributes to the overall power (ie., loudness) of the reconstructed spectrum.
                                "%
                                | optional,
                              ..
                            }
                          ]
                      )
                      | doc "A list of partials that should be used to reconstruct the spectrum"
                      | optional,
                    ..
                  }
                ]
            )
            | doc "A list of spectrum objects"
            | optional,
          tunings
            | js2n.array.MinItems 1
            | js2n.array.UniqueItems
            | Array
              {
                description
                  | String
                  | doc "A description of the tuning"
                  | optional,
                id | String | doc "A unique identifier for the tuning",
                name | String | doc "The tuning's name" | optional,
                scales
                  | js2n.array.MinItems 1
                  | Array (
                    std.contract.Sequence
                      [
                        std.contract.not
                          (std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              Number,
                              String,
                              js2n.record.Required [ "repeat", "repeat ratio" ],
                              Array Dyn
                            ]),
                        js2n.OneOf
                          [
                            std.contract.any_of
                              [
                                js2n.Null,
                                Bool,
                                Number,
                                String,
                                js2n.record.Required [ "min" ],
                                Array Dyn
                              ],
                            std.contract.any_of
                              [
                                js2n.Null,
                                Bool,
                                Number,
                                String,
                                js2n.record.Required [ "minimum" ],
                                Array Dyn
                              ],
                            std.contract.any_of
                              [
                                js2n.Null,
                                Bool,
                                Number,
                                String,
                                js2n.record.Required [ "min frequency" ],
                                Array Dyn
                              ],
                            std.contract.not
                              (js2n.OneOf
                                [
                                  std.contract.any_of
                                    [
                                      js2n.Null,
                                      Bool,
                                      Number,
                                      String,
                                      js2n.record.Required [ "min" ],
                                      Array Dyn
                                    ],
                                  std.contract.any_of
                                    [
                                      js2n.Null,
                                      Bool,
                                      Number,
                                      String,
                                      js2n.record.Required [ "minimum" ],
                                      Array Dyn
                                    ],
                                  std.contract.any_of
                                    [
                                      js2n.Null,
                                      Bool,
                                      Number,
                                      String,
                                      js2n.record.Required [ "min frequency" ],
                                      Array Dyn
                                    ],
                                  std.contract.any_of
                                    [
                                      js2n.Null,
                                      Bool,
                                      Number,
                                      String,
                                      js2n.record.Required [ "min", "minimum" ],
                                      Array Dyn
                                    ],
                                  std.contract.any_of
                                    [
                                      js2n.Null,
                                      Bool,
                                      Number,
                                      String,
                                      js2n.record.Required
                                        [ "min", "min frequency" ],
                                      Array Dyn
                                    ],
                                  std.contract.any_of
                                    [
                                      js2n.Null,
                                      Bool,
                                      Number,
                                      String,
                                      js2n.record.Required
                                        [ "min frequency", "minimum" ],
                                      Array Dyn
                                    ]
                                ])
                          ],
                        js2n.OneOf
                          [
                            std.contract.any_of
                              [
                                js2n.Null,
                                Bool,
                                Number,
                                String,
                                js2n.record.Required [ "max" ],
                                Array Dyn
                              ],
                            std.contract.any_of
                              [
                                js2n.Null,
                                Bool,
                                Number,
                                String,
                                js2n.record.Required [ "maximum" ],
                                Array Dyn
                              ],
                            std.contract.any_of
                              [
                                js2n.Null,
                                Bool,
                                Number,
                                String,
                                js2n.record.Required [ "max frequency" ],
                                Array Dyn
                              ],
                            std.contract.not
                              (js2n.OneOf
                                [
                                  std.contract.any_of
                                    [
                                      js2n.Null,
                                      Bool,
                                      Number,
                                      String,
                                      js2n.record.Required [ "max" ],
                                      Array Dyn
                                    ],
                                  std.contract.any_of
                                    [
                                      js2n.Null,
                                      Bool,
                                      Number,
                                      String,
                                      js2n.record.Required [ "maximum" ],
                                      Array Dyn
                                    ],
                                  std.contract.any_of
                                    [
                                      js2n.Null,
                                      Bool,
                                      Number,
                                      String,
                                      js2n.record.Required [ "max frequency" ],
                                      Array Dyn
                                    ],
                                  std.contract.any_of
                                    [
                                      js2n.Null,
                                      Bool,
                                      Number,
                                      String,
                                      js2n.record.Required [ "max", "maximum" ],
                                      Array Dyn
                                    ],
                                  std.contract.any_of
                                    [
                                      js2n.Null,
                                      Bool,
                                      Number,
                                      String,
                                      js2n.record.Required
                                        [ "max", "max frequency" ],
                                      Array Dyn
                                    ],
                                  std.contract.any_of
                                    [
                                      js2n.Null,
                                      Bool,
                                      Number,
                                      String,
                                      js2n.record.Required
                                        [ "max frequency", "maximum" ],
                                      Array Dyn
                                    ]
                                ])
                          ],
                        {
                          max
                            | std.contract.any_of
                              [
                                js2n.number.ExclusiveMinimum 0,
                                js2n.string.Matches
                                  "^(0*[1-9][0-9]*(\\.[0-9]+)?|0+\\.[0-9]*[1-9][0-9]*)( Hz)?$"
                              ]
                            | doc m%"
                              A maximum frequency for the scale.
                              When mapping the scale's notes onto actual frequencies, notes from this scale will not be mapped above the provided frequency.
                            "%
                            | optional,
                          "max frequency"
                            | std.contract.any_of
                              [
                                js2n.number.ExclusiveMinimum 0,
                                js2n.string.Matches
                                  "^(0*[1-9][0-9]*(\\.[0-9]+)?|0+\\.[0-9]*[1-9][0-9]*)( Hz)?$"
                              ]
                            | doc m%"
                              A maximum frequency for the scale.
                              When mapping the scale's notes onto actual frequencies, notes from this scale will not be mapped above the provided frequency.
                            "%
                            | optional,
                          maximum
                            | std.contract.any_of
                              [
                                js2n.number.ExclusiveMinimum 0,
                                js2n.string.Matches
                                  "^(0*[1-9][0-9]*(\\.[0-9]+)?|0+\\.[0-9]*[1-9][0-9]*)( Hz)?$"
                              ]
                            | doc m%"
                              A maximum frequency for the scale.
                              When mapping the scale's notes onto actual frequencies, notes from this scale will not be mapped above the provided frequency.
                            "%
                            | optional,
                          min
                            | std.contract.any_of
                              [
                                js2n.number.ExclusiveMinimum 0,
                                js2n.string.Matches
                                  "^(0*[1-9][0-9]*(\\.[0-9]+)?|0+\\.[0-9]*[1-9][0-9]*)( Hz)?$"
                              ]
                            | doc m%"
                              A minimum frequency for the scale.
                              When mapping the scale's notes onto actual frequencies, notes from this scale will not be mapped below the provided frequency.
                            "%
                            | optional,
                          "min frequency"
                            | std.contract.any_of
                              [
                                js2n.number.ExclusiveMinimum 0,
                                js2n.string.Matches
                                  "^(0*[1-9][0-9]*(\\.[0-9]+)?|0+\\.[0-9]*[1-9][0-9]*)( Hz)?$"
                              ]
                            | doc m%"
                              A minimum frequency for the scale.
                              When mapping the scale's notes onto actual frequencies, notes from this scale will not be mapped below the provided frequency.
                            "%
                            | optional,
                          minimum
                            | std.contract.any_of
                              [
                                js2n.number.ExclusiveMinimum 0,
                                js2n.string.Matches
                                  "^(0*[1-9][0-9]*(\\.[0-9]+)?|0+\\.[0-9]*[1-9][0-9]*)( Hz)?$"
                              ]
                            | doc m%"
                              A minimum frequency for the scale.
                              When mapping the scale's notes onto actual frequencies, notes from this scale will not be mapped below the provided frequency.
                            "%
                            | optional,
                          notes
                            | js2n.array.MinItems 1
                            | js2n.array.UniqueItems
                            | Array (
                              js2n.OneOf
                                [
                                  std.contract.Sequence
                                    [
                                      js2n.IfThenElse
                                        (std.contract.any_of
                                          [
                                            js2n.Null,
                                            Bool,
                                            Number,
                                            String,
                                            std.contract.Sequence
                                              [
                                                js2n.record.MinProperties 2,
                                                js2n.record.PropertyNames
                                                  (std.contract.Sequence
                                                    [
                                                      std.enum.TagOrString,
                                                      [|
                                                        '"frequency ratio",
                                                        'ratio
                                                      |]
                                                    ])
                                              ],
                                            Array Dyn
                                          ]) js2n.Never
                                        (js2n.OneOf
                                          [
                                            std.contract.any_of
                                              [
                                                js2n.Null,
                                                Bool,
                                                Number,
                                                String,
                                                js2n.record.Required
                                                  [ "ratio" ],
                                                Array Dyn
                                              ],
                                            std.contract.any_of
                                              [
                                                js2n.Null,
                                                Bool,
                                                Number,
                                                String,
                                                js2n.record.Required
                                                  [ "frequency ratio" ],
                                                Array Dyn
                                              ]
                                          ]),
                                      js2n.record.Record
                                        {
                                          additional = 'Some js2n.Always,
                                          patterns = {},
                                          properties =
                                            {
                                                "frequency ratio" =
                                                  std.contract.any_of
                                                      [
                                                        js2n.number.ExclusiveMinimum
                                                          0,
                                                        js2n.string.Matches
                                                          "^([1234567890.,+\\-*/^%()e ]|(pi)|(tau)|(abs)|(log))+$"
                                                      ],
                                                name = String,
                                                ratio =
                                                  std.contract.any_of
                                                      [
                                                        js2n.number.ExclusiveMinimum
                                                          0,
                                                        js2n.string.Matches
                                                          "^([1234567890.,+\\-*/^%()e ]|(pi)|(tau)|(abs)|(log))+$"
                                                      ],
                                              },
                                          required = {},
                                        }
                                    ],
                                  std.contract.any_of
                                    [
                                      js2n.number.ExclusiveMinimum 0,
                                      js2n.string.Matches
                                        "^([1234567890.,+\\-*/^%()e ]|(pi)|(tau)|(abs)|(log))+$"
                                    ]
                                ]
                            )
                            | doc "A list of the scale's notes",
                          reference
                            | {
                              frequency
                                | std.contract.any_of
                                  [
                                    js2n.number.ExclusiveMinimum 0,
                                    js2n.string.Matches
                                      "^(0*[1-9][0-9]*(\\.[0-9]+)?|0+\\.[0-9]*[1-9][0-9]*)( Hz)?$"
                                  ]
                                | doc "The reference frequency - a number, optionally with \" Hz\" appended",
                              note
                                | String
                                | doc "The name of the note that should be mapped onto the reference frequency"
                                | optional,
                              ..
                            }
                            | doc m%"
                              A reference frequency that is used to map the note's frequency ratios to real frequencies values (ie., in Hz).
                              Can be either a number (optionally appended with " Hz") or an object containing a frequency and an optional note that references one of the note names from the scale's notes list.
                              If no note name is provided, the reference frequency will be mapped to the frequency ratio "1".
                            "%,
                          repeat
                            | std.contract.any_of
                              [
                                js2n.number.ExclusiveMinimum 0,
                                js2n.string.Matches
                                  "^([1234567890.,+\\-*/^%()e ]|(pi)|(tau)|(abs)|(log))+$"
                              ]
                            | doc "The frequency ratio at which the scale's notes will repeat"
                            | optional,
                          "repeat ratio"
                            | std.contract.any_of
                              [
                                js2n.number.ExclusiveMinimum 0,
                                js2n.string.Matches
                                  "^([1234567890.,+\\-*/^%()e ]|(pi)|(tau)|(abs)|(log))+$"
                              ]
                            | doc "The frequency ratio at which the scale's notes will repeat"
                            | optional,
                          spectrum
                            | String
                            | doc m%"
                              The spectrum of the tones that should be used for this tuning.
                              This enables multiple, scale-dependent spectra to be used within a single tuning.
                            "%
                            | optional,
                          ..
                        }
                      ]
                  )
                  | doc "List of scale objects",
                ..
              }
            | doc "List of tuning objects"
            | optional,
          ..
        }
      ]