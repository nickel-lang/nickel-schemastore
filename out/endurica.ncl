# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.historyOptions" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                block_repeats | js2n.number.Minimum 0 | optional,
                material | String | optional,
                ozone_concentration | Number | optional,
                period | js2n.number.Minimum 0 | optional,
                preage_temperature | Number | optional,
                preage_time | js2n.number.Minimum 0 | optional,
                step_repeats | js2n.number.Minimum 0 | optional,
                temperature | Number | optional,
                type
                  | js2n.array.UniqueItems
                  | Array (
                    std.contract.Sequence
                      [
                        std.enum.TagOrString,
                        [|
                          'temperature,
                          'hydrostatic_stress,
                          'le_si,
                          'le_pl,
                          'le_eq,
                          'ne_vol,
                          'ne_si,
                          'ne_pl,
                          'ne_eq,
                          'dg_ss,
                          'gls_plane_stress,
                          'le_plane_stress,
                          'ne_plane_stress,
                          'gls,
                          'dg,
                          'le,
                          'ne
                        |]
                      ]
                  )
                  | optional,
                volume | js2n.number.ExclusiveMinimum 0 | optional,
              },
              Array Dyn
            ],
      "definitions.historyOptionsBlock" =
        {
            block_repeats | js2n.number.Minimum 0 | optional,
            ozone_concentration | Number | optional,
            period | js2n.number.Minimum 0 | optional,
            temperature | Number | optional,
          },
      "definitions.historyOptionsGlobal" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                block_repeats | js2n.number.Minimum 0 | optional,
                material | String | optional,
                ozone_concentration | Number | optional,
                period | js2n.number.Minimum 0 | optional,
                preage_temperature | Number | optional,
                preage_time | js2n.number.Minimum 0 | optional,
                rolling
                  | {
                    sectors | js2n.number.MultipleOf 1 | optional,
                    stride | js2n.number.MultipleOf 1 | optional,
                    ..
                  }
                  | optional,
                step_repeats | js2n.number.Minimum 0 | optional,
                temperature | Number | optional,
                type
                  | js2n.array.UniqueItems
                  | Array (
                    std.contract.Sequence
                      [
                        std.enum.TagOrString,
                        [|
                          'temperature,
                          'hydrostatic_stress,
                          'le_si,
                          'le_pl,
                          'le_eq,
                          'ne_vol,
                          'ne_si,
                          'ne_pl,
                          'ne_eq,
                          'dg_ss,
                          'gls_plane_stress,
                          'le_plane_stress,
                          'ne_plane_stress,
                          'gls,
                          'dg,
                          'le,
                          'ne
                        |]
                      ]
                  )
                  | optional,
                volume | js2n.number.ExclusiveMinimum 0 | optional,
              },
              Array Dyn
            ],
      "definitions.historyOptionsStep" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                block_repeats | js2n.number.Minimum 0 | optional,
                ozone_concentration | Number | optional,
                period | js2n.number.Minimum 0 | optional,
                step_repeats | js2n.number.Minimum 0 | optional,
                temperature | Number | optional,
              },
              Array Dyn
            ],
    }
    in
  {
      header
        | std.contract.any_of [ String, Array String ]
        | doc "Text section used to document the analysis."
        | optional,
      history
        | {
          histories
            | std.contract.any_of
              [
                String,
                Array
                  {
                    label | String,
                    options | refs."definitions.historyOptions" | optional,
                    steps
                      | Array
                        {
                          blocks
                            | Array
                              {
                                data | Array (Array Number) | optional,
                                label | String | optional,
                                options
                                  | refs."definitions.historyOptionsBlock"
                                  | optional,
                              }
                            | optional,
                          label | String | optional,
                          options
                            | refs."definitions.historyOptionsStep"
                            | optional,
                        }
                      | optional,
                  }
              ]
            | doc "An array of histories or a file path to an external input file containing an array of histories"
            | optional,
          length
            | js2n.number.MultipleOf 1
            | doc "Specify the number of histories in the analysis"
            | optional,
          options | refs."definitions.historyOptionsGlobal" | optional,
          schedule
            | {
              steps
                | Array
                  {
                    blocks
                      | Array
                        {
                          file | String,
                          label | String | optional,
                          options
                            | refs."definitions.historyOptionsBlock"
                            | optional,
                        },
                    label | String | optional,
                    options | refs."definitions.historyOptionsStep" | optional,
                  },
            }
            | doc "A schedule definition of steps and blocks, where a block is defined by an external input file containing an array of histories"
            | optional,
        }
        | doc "History definitions."
        | optional,
      material_analysis
        | {
          ageing_crack_growth_rate
            | {
              T_max | Number | optional,
              T_min | Number | optional,
              age_max | js2n.number.ExclusiveMinimum 0,
              age_min | js2n.number.Minimum 0 | optional,
              n_T | js2n.number.MultipleOf 1 | js2n.number.Minimum 2 | optional,
              n_age
                | js2n.number.MultipleOf 1
                | js2n.number.Minimum 2
                | optional,
            }
            | doc "Crack growth rate curves at varying ages."
            | optional,
          ageing_strain_life
            | {
              age_max | js2n.number.ExclusiveMinimum 0,
              age_min | js2n.number.Minimum 0 | optional,
              n_age
                | js2n.number.MultipleOf 1
                | js2n.number.Minimum 2
                | optional,
              n_strain
                | js2n.number.MultipleOf 1
                | js2n.number.Minimum 2
                | optional,
              strain_max | js2n.number.ExclusiveMinimum 0,
              strain_min | js2n.number.ExclusiveMinimum 0,
            }
            | doc "Strain-life curves at varying ages."
            | optional,
          crack_growth_rate
            | {
              R_max | js2n.number.Maximum 1 | js2n.number.Minimum 0 | optional,
              R_min | js2n.number.Maximum 1 | js2n.number.Minimum 0 | optional,
              T_max | js2n.number.ExclusiveMinimum 0 | optional,
              T_min | js2n.number.ExclusiveMinimum 0 | optional,
              n_R | js2n.number.MultipleOf 1 | js2n.number.Minimum 2 | optional,
              n_T | js2n.number.MultipleOf 1 | js2n.number.Minimum 2 | optional,
            }
            | doc "Crack growth rate curves at varying R ratios."
            | optional,
          haigh_diagram
            | {
              n | js2n.number.MultipleOf 1 | js2n.number.Minimum 2 | optional,
              strain_amplitude_max | Number | optional,
              strain_mean_max | Number | optional,
            }
            | doc "Haigh diagram output."
            | optional,
          hysteresis_frequency_sweep
            | {
              deformation_mode
                | std.enum.TagOrString
                | [| 'simple_shear, 'planar_tension, 'simple_tension |]
                | optional,
              frequency_max | js2n.number.ExclusiveMinimum 0 | optional,
              frequency_min | js2n.number.ExclusiveMinimum 0 | optional,
              n_points
                | js2n.number.MultipleOf 1
                | js2n.number.Minimum 2
                | optional,
              strain_amplitude | Number | optional,
              temperature | Number | optional,
            }
            | doc "Hysteresis frequency sweep."
            | optional,
          hysteresis_strain_sweep
            | {
              deformation_mode
                | std.enum.TagOrString
                | [| 'simple_shear, 'planar_tension, 'simple_tension |]
                | optional,
              frequency | Number | optional,
              n_points
                | js2n.number.MultipleOf 1
                | js2n.number.Minimum 2
                | optional,
              strain_amplitude_max | js2n.number.ExclusiveMinimum 0 | optional,
              strain_amplitude_min | js2n.number.ExclusiveMinimum 0 | optional,
              temperature | Number | optional,
            }
            | doc "Hysteresis strain sweep."
            | optional,
          stress_strain
            | {
              n_points
                | js2n.number.MultipleOf 1
                | js2n.number.Minimum 2
                | optional,
              n_unloads
                | js2n.number.MultipleOf 1
                | js2n.number.Minimum 2
                | optional,
              strain_max | Number | optional,
              strain_min | Number | optional,
              volume_strain_max | Number | optional,
              volume_strain_min | Number | optional,
            }
            | doc "Stress-Strain curves for different modes of deformation."
            | optional,
        }
        | doc "Material analysis definitions that will be performed for each material definition."
        | optional,
      materials
        | js2n.array.UniqueItems
        | Array
          {
            ageing
              | js2n.OneOf
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
                          patterns = {},
                          properties =
                            {
                                type =
                                  std.contract.Sequence
                                      [
                                        std.enum.TagOrString,
                                        [| '"default" |]
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
                          additional = 'None,
                          patterns = {},
                          properties =
                            {
                                absolute_zero = js2n.Always,
                                activation_energy = js2n.Always,
                                gas_constant = js2n.Always,
                                stiffness =
                                  js2n.array.ArrayOf (js2n.number.Minimum 0),
                                temp_ref = js2n.Always,
                                time =
                                  js2n.array.ArrayOf (js2n.number.Minimum 0),
                                type =
                                  std.contract.Sequence
                                      [
                                        std.enum.TagOrString,
                                        [| 'arrhenius |]
                                      ],
                              },
                          required = {},
                        },
                      Array Dyn
                    ]
                ]
              | { _ | Dyn }
              | optional,
            c0 | js2n.number.ExclusiveMinimum 0 | optional,
            cf | js2n.number.ExclusiveMinimum 0 | optional,
            crack_growth_rate
              | js2n.OneOf
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
                          patterns = {},
                          properties =
                            {
                                F0 =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                Tcritical =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                rc =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                temp_coef =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                temp_ref =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                temperatures =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                type =
                                  std.contract.Sequence
                                      [ std.enum.TagOrString, [| 'thomas |] ],
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
                          additional = 'None,
                          patterns = {},
                          properties =
                            {
                                F0 =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                Tcritical =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                rc =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                temp_coef =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                temp_ref =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                temperatures =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                threshold =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                transition =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                type =
                                  std.contract.Sequence
                                      [
                                        std.enum.TagOrString,
                                        [| 'lakelindley |]
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
                          additional = 'None,
                          patterns = {},
                          properties =
                            {
                                table =
                                  std.contract.Sequence
                                      [
                                        js2n.array.MinItems 2,
                                        js2n.array.ArrayOf
                                          (std.contract.Sequence
                                            [
                                              js2n.array.MaxItems 2,
                                              js2n.array.MinItems 2,
                                              js2n.array.Items
                                                [
                                                  js2n.number.Minimum 0,
                                                  js2n.number.Minimum 0
                                                ] js2n.Always
                                            ])
                                      ],
                                temp_coef =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                temp_ref =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                type =
                                  std.contract.Sequence
                                      [ std.enum.TagOrString, [| 'tabular |] ],
                              },
                          required = {},
                        },
                      Array Dyn
                    ]
                ]
              | { _ | Dyn }
              | optional,
            cyclic_softening
              | js2n.OneOf
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
                          patterns = {},
                          properties =
                            {
                                type =
                                  std.contract.Sequence
                                      [
                                        std.enum.TagOrString,
                                        [| '"default" |]
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
                          additional = 'None,
                          patterns = {},
                          properties =
                            {
                                table =
                                  js2n.array.ArrayOf
                                      (std.contract.Sequence
                                        [
                                          js2n.array.MaxItems 2,
                                          js2n.array.MinItems 2,
                                          js2n.array.Items
                                            [
                                              std.contract.Sequence
                                                [
                                                  js2n.number.Maximum 1,
                                                  js2n.number.Minimum 0
                                                ],
                                              std.contract.Sequence
                                                [
                                                  js2n.number.Maximum 1,
                                                  js2n.number.Minimum 0
                                                ]
                                            ] js2n.Always
                                        ]),
                                type =
                                  std.contract.Sequence
                                      [ std.enum.TagOrString, [| 'tabular |] ],
                              },
                          required = {},
                        },
                      Array Dyn
                    ]
                ]
              | { _ | Dyn }
              | optional,
            elasticity
              | js2n.OneOf
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
                          patterns = {},
                          properties =
                            {
                                D1 =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                bulk_modulus =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                limit_stretch =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                shear_modulus =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                temperatures =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                type =
                                  std.contract.Sequence
                                      [
                                        std.enum.TagOrString,
                                        [| 'arrudaboyce |]
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
                          additional = 'None,
                          patterns = {},
                          properties =
                            {
                                alpha1 =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                alpha2 =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                alpha3 =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                alpha4 =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                alpha5 =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                alpha6 =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                mu1 =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                mu2 =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                mu3 =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                mu4 =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                mu5 =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                mu6 =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                nu1 =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                nu2 =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                nu3 =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                nu4 =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                nu5 =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                nu6 =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                temperatures =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                type =
                                  std.contract.Sequence
                                      [
                                        std.enum.TagOrString,
                                        [| 'hyperfoam |]
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
                          additional = 'None,
                          patterns = {},
                          properties =
                            {
                                C01 =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                C10 =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                D1 =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                bulk_modulus =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                temperatures =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                type =
                                  std.contract.Sequence
                                      [
                                        std.enum.TagOrString,
                                        [| 'mooneyrivlin |]
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
                          additional = 'None,
                          patterns = {},
                          properties =
                            {
                                C10 =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                D1 =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                bulk_modulus =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                temperatures =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                type =
                                  std.contract.Sequence
                                      [
                                        std.enum.TagOrString,
                                        [| 'neohookean |]
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
                          additional = 'None,
                          patterns = {},
                          properties =
                            {
                                D1 =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                D2 =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                D3 =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                D4 =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                D5 =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                D6 =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                alpha1 =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                alpha2 =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                alpha3 =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                alpha4 =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                alpha5 =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                alpha6 =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                mu1 =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                mu2 =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                mu3 =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                mu4 =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                mu5 =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                mu6 =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                temperatures =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                type =
                                  std.contract.Sequence
                                      [ std.enum.TagOrString, [| 'ogden |] ],
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
                          additional = 'None,
                          patterns = {},
                          properties =
                            {
                                D1 =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                D2 =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                D3 =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                D4 =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                D5 =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                D6 =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                alpha1 =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                alpha2 =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                alpha3 =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                alpha4 =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                alpha5 =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                alpha6 =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                mu1 =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                mu2 =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                mu3 =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                mu4 =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                mu5 =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                mu6 =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                temperatures =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                type =
                                  std.contract.Sequence
                                      [ std.enum.TagOrString, [| 'ogden2 |] ],
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
                          additional = 'None,
                          patterns = {},
                          properties =
                            {
                                C10 =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                C20 =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                C30 =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                C40 =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                C50 =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                C60 =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                D1 =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                D2 =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                D3 =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                D4 =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                D5 =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                D6 =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                temperatures =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                type =
                                  std.contract.Sequence
                                      [
                                        std.enum.TagOrString,
                                        [| 'reducedpolynomial |]
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
                          additional = 'None,
                          patterns = {},
                          properties =
                            {
                                prop1 = js2n.Always,
                                prop2 = js2n.Always,
                                prop3 = js2n.Always,
                                prop4 = js2n.Always,
                                prop5 = js2n.Always,
                                prop6 = js2n.Always,
                                prop7 = js2n.Always,
                                prop8 = js2n.Always,
                                type =
                                  std.contract.Sequence
                                      [ std.enum.TagOrString, [| 'uhyper |] ],
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
                          additional = 'None,
                          patterns = {},
                          properties =
                            {
                                D1 =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                alpha =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                beta =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                bulk_modulus =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                limit_stretch =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                shear_modulus =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                temperatures =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                type =
                                  std.contract.Sequence
                                      [
                                        std.enum.TagOrString,
                                        [| 'vanderwaals |]
                                      ],
                              },
                          required = {},
                        },
                      Array Dyn
                    ]
                ]
              | { _ | Dyn }
              | optional,
            hysteresis
              | js2n.OneOf
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
                          patterns = {},
                          properties =
                            {
                                PL_frequency_coef =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                TK_frequency_coef =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                WLF_C1 =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                WLF_C2 =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                WLF_Gp =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                WLF_Gpp =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                WLF_frequencies =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                chi =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                deformation_mode =
                                  std.contract.Sequence
                                      [
                                        std.enum.TagOrString,
                                        [|
                                          'simple_shear,
                                          'planar_tension,
                                          'simple_tension
                                        |]
                                      ],
                                frequency_ref =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                gamma =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                hys_ref =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                strain_amplitude_ref =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                temp_coef =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                temp_ref =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                type =
                                  std.contract.Sequence
                                      [ std.enum.TagOrString, [| 'powerlaw |] ],
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
                          additional = 'None,
                          patterns = {},
                          properties =
                            {
                                Gp_0 =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                Gp_inf =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                Gpp_inf =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                Gpp_max =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                PL_frequency_coef =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                TK_frequency_coef =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                WLF_C1 =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                WLF_C2 =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                WLF_Gp =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                WLF_Gpp =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                WLF_frequencies =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                chi =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                deformation_mode =
                                  std.contract.Sequence
                                      [
                                        std.enum.TagOrString,
                                        [|
                                          'simple_shear,
                                          'planar_tension,
                                          'simple_tension
                                        |]
                                      ],
                                delta_Gpp_U =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                frequency_ref =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                m =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                strain_amplitude_c =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                strain_amplitude_ref =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                temp_coef =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                temp_ref =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                type =
                                  std.contract.Sequence
                                      [ std.enum.TagOrString, [| 'kraus |] ],
                              },
                          required = {},
                        },
                      Array Dyn
                    ]
                ]
              | { _ | Dyn }
              | optional,
            mullins
              | {
                beta
                  | std.contract.any_of
                    [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
                  | optional,
                m
                  | std.contract.any_of
                    [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
                  | optional,
                r
                  | std.contract.any_of
                    [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
                  | optional,
                type | std.enum.TagOrString | [| 'ogdenroxburgh |] | optional,
              }
              | optional,
            name | String,
            nonrelaxing
              | js2n.OneOf
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
                          patterns = {},
                          properties =
                            {
                                type =
                                  std.contract.Sequence
                                      [ std.enum.TagOrString, [| 'paris |] ],
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
                          additional = 'None,
                          patterns = {},
                          properties =
                            {
                                table =
                                  js2n.array.ArrayOf
                                      (std.contract.Sequence
                                        [
                                          js2n.array.MaxItems 2,
                                          js2n.array.MinItems 2,
                                          js2n.array.Items
                                            [
                                              std.contract.Sequence
                                                [
                                                  js2n.number.Maximum 1,
                                                  js2n.number.Minimum 0
                                                ],
                                              std.contract.Sequence
                                                [
                                                  js2n.number.Maximum 1,
                                                  js2n.number.Minimum 0
                                                ]
                                            ] js2n.Always
                                        ]),
                                type =
                                  std.contract.Sequence
                                      [
                                        std.enum.TagOrString,
                                        [| 'xR_tabular |]
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
                          additional = 'None,
                          patterns = {},
                          properties =
                            {
                                type =
                                  std.contract.Sequence
                                      [
                                        std.enum.TagOrString,
                                        [| 'lindley73 |]
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
                          additional = 'None,
                          patterns = {},
                          properties =
                            {
                                F1 =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                F2 =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                F3 =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                Fexp =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                temperatures =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                type =
                                  std.contract.Sequence
                                      [
                                        std.enum.TagOrString,
                                        [| 'marsfatemi |]
                                      ],
                              },
                          required = {},
                        },
                      Array Dyn
                    ]
                ]
              | { _ | Dyn }
              | optional,
            ozone_attack
              | js2n.OneOf
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
                          patterns = {},
                          properties =
                            {
                                Tz =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                rz =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                type =
                                  std.contract.Sequence
                                      [ std.enum.TagOrString, [| 'williams |] ],
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
                          additional = 'None,
                          patterns = {},
                          properties =
                            {
                                Fv =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                Gv =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                Kv =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                Kz =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                Tg =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                Tz =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                type =
                                  std.contract.Sequence
                                      [
                                        std.enum.TagOrString,
                                        [| 'gentmcgrath |]
                                      ],
                              },
                          required = {},
                        },
                      Array Dyn
                    ]
                ]
              | { _ | Dyn }
              | optional,
            thermal_runaway
              | {
                density
                  | std.contract.any_of
                    [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
                  | optional,
                heat_rate
                  | std.contract.any_of
                    [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
                  | optional,
                specific_heat
                  | std.contract.any_of
                    [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
                  | optional,
                temperature_limit
                  | std.contract.any_of
                    [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
                  | optional,
                type | std.enum.TagOrString | [| 'limit |] | optional,
              }
              | optional,
            viscoelastic_rupture
              | js2n.OneOf
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
                          patterns = {},
                          properties =
                            {
                                F =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                T0 =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                Tq =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                rq =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                temp_coef =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                temp_ref =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                type =
                                  std.contract.Sequence
                                      [ std.enum.TagOrString, [| 'powerlaw |] ],
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
                          additional = 'None,
                          patterns = {},
                          properties =
                            {
                                table =
                                  std.contract.Sequence
                                      [
                                        js2n.array.MinItems 2,
                                        js2n.array.ArrayOf
                                          (std.contract.Sequence
                                            [
                                              js2n.array.MaxItems 2,
                                              js2n.array.MinItems 2,
                                              js2n.array.Items
                                                [
                                                  js2n.number.Minimum 0,
                                                  js2n.number.Minimum 0
                                                ] js2n.Always
                                            ])
                                      ],
                                temp_coef =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                temp_ref =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                type =
                                  std.contract.Sequence
                                      [ std.enum.TagOrString, [| 'tabular |] ],
                              },
                          required = {},
                        },
                      Array Dyn
                    ]
                ]
              | { _ | Dyn }
              | optional,
          }
        | doc "List of material definitions."
        | optional,
      outputs
        | js2n.array.UniqueItems
        | Array (
          std.contract.any_of
            [
              std.contract.Sequence
                [
                  std.enum.TagOrString,
                  [|
                    'wrinkling,
                    'volume_adjustment,
                    'thermal_runaway,
                    'stiffness_ratio_cyclic,
                    'stiffness_ratio_ageing,
                    'stiffness_ratio,
                    'sed,
                    'residual_strength,
                    'principal_logarithmic_strain,
                    'principal_engineering_stress,
                    'principal_engineering_strain,
                    'principal_cauchy_stress,
                    'logarithmic_strain,
                    'life_sphere,
                    'life,
                    'hysteresis,
                    'history_compression,
                    'factor_of_safety_sphere,
                    'factor_of_safety_ced,
                    'factor_of_safety,
                    'engineering_stress,
                    'engineering_strain,
                    'crack_size_calibration,
                    'crack_growth,
                    'ced_sphere,
                    'ced_cycle_count,
                    'ced,
                    'cavitation,
                    'cauchy_stress,
                    'block_cycle,
                    'age,
                    'adiabatic_time_limit
                  |]
                ],
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
                              additional = 'None,
                              patterns = {},
                              properties =
                                {
                                    name =
                                      std.contract.Sequence
                                          [
                                            std.enum.TagOrString,
                                            [| 'adiabatic_time_limit |]
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
                              additional = 'None,
                              patterns = {},
                              properties =
                                {
                                    name =
                                      std.contract.Sequence
                                          [ std.enum.TagOrString, [| 'age |] ],
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
                              additional = 'None,
                              patterns = {},
                              properties =
                                {
                                    n_ced =
                                      std.contract.Sequence
                                          [
                                            js2n.number.MultipleOf 1,
                                            js2n.number.Minimum 1
                                          ],
                                    n_r_ratio =
                                      std.contract.Sequence
                                          [
                                            js2n.number.MultipleOf 1,
                                            js2n.number.Minimum 1
                                          ],
                                    name =
                                      std.contract.Sequence
                                          [
                                            std.enum.TagOrString,
                                            [| 'block_cycle |]
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
                              additional = 'None,
                              patterns = {},
                              properties =
                                {
                                    name =
                                      std.contract.Sequence
                                          [
                                            std.enum.TagOrString,
                                            [| 'cauchy_stress |]
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
                              additional = 'None,
                              patterns = {},
                              properties =
                                {
                                    name =
                                      std.contract.Sequence
                                          [
                                            std.enum.TagOrString,
                                            [| 'cavitation |]
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
                              additional = 'None,
                              patterns = {},
                              properties =
                                {
                                    name =
                                      std.contract.Sequence
                                          [ std.enum.TagOrString, [| 'ced |] ],
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
                              additional = 'None,
                              patterns = {},
                              properties =
                                {
                                    name =
                                      std.contract.Sequence
                                          [
                                            std.enum.TagOrString,
                                            [| 'ced_cycle_cout |]
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
                              additional = 'None,
                              patterns = {},
                              properties =
                                {
                                    name =
                                      std.contract.Sequence
                                          [
                                            std.enum.TagOrString,
                                            [| 'ced_sphere |]
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
                              additional = 'None,
                              patterns = {},
                              properties =
                                {
                                    name =
                                      std.contract.Sequence
                                          [
                                            std.enum.TagOrString,
                                            [| 'crack_growth |]
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
                              additional = 'None,
                              patterns = {},
                              properties =
                                {
                                    c0_min = Number,
                                    n_points =
                                      std.contract.Sequence
                                          [
                                            js2n.number.MultipleOf 1,
                                            js2n.number.Minimum 1
                                          ],
                                    name =
                                      std.contract.Sequence
                                          [
                                            std.enum.TagOrString,
                                            [| 'crack_size_calibration |]
                                          ],
                                    target_life = Number,
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
                              additional = 'None,
                              patterns = {},
                              properties =
                                {
                                    name =
                                      std.contract.Sequence
                                          [
                                            std.enum.TagOrString,
                                            [| 'engineering_strain |]
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
                              additional = 'None,
                              patterns = {},
                              properties =
                                {
                                    name =
                                      std.contract.Sequence
                                          [
                                            std.enum.TagOrString,
                                            [| 'engineering_stress |]
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
                              additional = 'None,
                              patterns = {},
                              properties =
                                {
                                    name =
                                      std.contract.Sequence
                                          [
                                            std.enum.TagOrString,
                                            [| 'factor_of_safety |]
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
                              additional = 'None,
                              patterns = {},
                              properties =
                                {
                                    name =
                                      std.contract.Sequence
                                          [
                                            std.enum.TagOrString,
                                            [| 'factor_of_safety_ced |]
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
                              additional = 'None,
                              patterns = {},
                              properties =
                                {
                                    name =
                                      std.contract.Sequence
                                          [
                                            std.enum.TagOrString,
                                            [| 'factor_of_safety_sphere |]
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
                              additional = 'None,
                              patterns = {},
                              properties =
                                {
                                    keep =
                                      std.contract.Sequence
                                          [
                                            js2n.number.Maximum 1,
                                            js2n.number.Minimum 0
                                          ],
                                    n_ced =
                                      std.contract.Sequence
                                          [
                                            js2n.number.MultipleOf 1,
                                            js2n.number.Minimum 1
                                          ],
                                    n_r_ratio =
                                      std.contract.Sequence
                                          [
                                            js2n.number.MultipleOf 1,
                                            js2n.number.Minimum 1
                                          ],
                                    name =
                                      std.contract.Sequence
                                          [
                                            std.enum.TagOrString,
                                            [| 'history_compression |]
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
                              additional = 'None,
                              patterns = {},
                              properties =
                                {
                                    name =
                                      std.contract.Sequence
                                          [
                                            std.enum.TagOrString,
                                            [| 'hysteresis |]
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
                              additional = 'None,
                              patterns = {},
                              properties =
                                {
                                    name =
                                      std.contract.Sequence
                                          [ std.enum.TagOrString, [| 'life |] ],
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
                              additional = 'None,
                              patterns = {},
                              properties =
                                {
                                    name =
                                      std.contract.Sequence
                                          [
                                            std.enum.TagOrString,
                                            [| 'life_sphere |]
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
                              additional = 'None,
                              patterns = {},
                              properties =
                                {
                                    name =
                                      std.contract.Sequence
                                          [
                                            std.enum.TagOrString,
                                            [| 'logarithmic_strain |]
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
                              additional = 'None,
                              patterns = {},
                              properties =
                                {
                                    name =
                                      std.contract.Sequence
                                          [
                                            std.enum.TagOrString,
                                            [| 'principal_cauchy_stress |]
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
                              additional = 'None,
                              patterns = {},
                              properties =
                                {
                                    name =
                                      std.contract.Sequence
                                          [
                                            std.enum.TagOrString,
                                            [| 'principal_engineering_strain |]
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
                              additional = 'None,
                              patterns = {},
                              properties =
                                {
                                    name =
                                      std.contract.Sequence
                                          [
                                            std.enum.TagOrString,
                                            [| 'principal_engineering_stress |]
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
                              additional = 'None,
                              patterns = {},
                              properties =
                                {
                                    name =
                                      std.contract.Sequence
                                          [
                                            std.enum.TagOrString,
                                            [| 'principal_logarithmic_strain |]
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
                              additional = 'None,
                              patterns = {},
                              properties =
                                {
                                    name =
                                      std.contract.Sequence
                                          [
                                            std.enum.TagOrString,
                                            [| 'residual_strength |]
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
                              additional = 'None,
                              patterns = {},
                              properties =
                                {
                                    name =
                                      std.contract.Sequence
                                          [ std.enum.TagOrString, [| 'sed |] ],
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
                              additional = 'None,
                              patterns = {},
                              properties =
                                {
                                    name =
                                      std.contract.Sequence
                                          [
                                            std.enum.TagOrString,
                                            [| 'stiffness_ratio |]
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
                              additional = 'None,
                              patterns = {},
                              properties =
                                {
                                    name =
                                      std.contract.Sequence
                                          [
                                            std.enum.TagOrString,
                                            [| 'stiffness_ratio_ageing |]
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
                              additional = 'None,
                              patterns = {},
                              properties =
                                {
                                    name =
                                      std.contract.Sequence
                                          [
                                            std.enum.TagOrString,
                                            [| 'stiffness_ratio_cyclic |]
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
                              additional = 'None,
                              patterns = {},
                              properties =
                                {
                                    name =
                                      std.contract.Sequence
                                          [
                                            std.enum.TagOrString,
                                            [| 'thermal_runaway |]
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
                              additional = 'None,
                              patterns = {},
                              properties =
                                {
                                    name =
                                      std.contract.Sequence
                                          [
                                            std.enum.TagOrString,
                                            [| 'volume_adjustment |]
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
                              additional = 'None,
                              patterns = {},
                              properties =
                                {
                                    name =
                                      std.contract.Sequence
                                          [
                                            std.enum.TagOrString,
                                            [| 'wrinkling |]
                                          ],
                                  },
                              required = {},
                            },
                          Array Dyn
                        ]
                    ],
                  { name | String | optional, .. }
                ]
            ]
        )
        | doc "List of output requests for the analysis."
        | optional,
      settings
        | {
          ced_integration
            | {
              steps
                | js2n.number.MultipleOf 1
                | js2n.number.Minimum 1
                | optional,
              type | std.enum.TagOrString | [| 'fixed |] | optional,
            }
            | optional,
          crack_plane_discretization
            | js2n.OneOf
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
                        patterns = {},
                        properties =
                          {
                              nmesh =
                                std.contract.Sequence
                                    [
                                      js2n.number.MultipleOf 1,
                                      js2n.number.Maximum 10,
                                      js2n.number.Minimum 1
                                    ],
                              type =
                                std.contract.Sequence
                                    [ std.enum.TagOrString, [| 'tri3d |] ],
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
                        additional = 'None,
                        patterns = {},
                        properties =
                          {
                              planes =
                                std.contract.Sequence
                                    [
                                      js2n.array.MinItems 1,
                                      js2n.array.ArrayOf
                                        (std.contract.Sequence
                                          [
                                            js2n.array.MaxItems 3,
                                            js2n.array.MinItems 3,
                                            js2n.array.Items
                                              [
                                                js2n.number.Maximum 1,
                                                js2n.number.Maximum 1,
                                                js2n.number.Maximum 1
                                              ] js2n.Always
                                          ])
                                    ],
                              type =
                                std.contract.Sequence
                                    [ std.enum.TagOrString, [| 'user |] ],
                            },
                        required = {},
                      },
                    Array Dyn
                  ]
              ]
            | { _ | Dyn }
            | optional,
          history_subset
            | {
              labels | Array String | optional,
              materials | Array String | optional,
              type | std.enum.TagOrString | [| '"default" |] | optional,
            }
            | optional,
          microsphere_discretization
            | {
              nmesh
                | js2n.number.MultipleOf 1
                | js2n.number.Maximum 10
                | js2n.number.Minimum 1
                | optional,
              type | std.enum.TagOrString | [| 'tri3d |] | optional,
            }
            | optional,
        }
        | doc "Settings that control different aspects of the analysis."
        | optional,
    }