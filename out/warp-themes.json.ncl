# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.color" = js2n.string.Matches "^#[0-9a-fA-F]{6}$",
      "definitions.color-or-gradient" =
        std.contract.any_of
            [
              std.contract.Sequence [ refs."definitions.color", String ],
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
                                    left =
                                      std.contract.Sequence
                                          [ refs."definitions.color", String ],
                                    right =
                                      std.contract.Sequence
                                          [ refs."definitions.color", String ],
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
                                    bottom =
                                      std.contract.Sequence
                                          [ refs."definitions.color", String ],
                                    top =
                                      std.contract.Sequence
                                          [ refs."definitions.color", String ],
                                  },
                              required = {},
                            },
                          Array Dyn
                        ]
                    ],
                  { _ | Dyn }
                ]
            ],
      "definitions.colors" =
        {
            black
              | refs."definitions.color"
              | String
              | doc m%"
                A black color of the current theme
                https://docs.warp.dev/appearance/custom-themes#create-your-own-custom-theme-manually
              "%
              | optional,
            blue
              | refs."definitions.color"
              | String
              | doc m%"
                A blue color of the current theme
                https://docs.warp.dev/appearance/custom-themes#create-your-own-custom-theme-manually
              "%
              | optional,
            cyan
              | refs."definitions.color"
              | String
              | doc m%"
                A cyan color of the current theme
                https://docs.warp.dev/appearance/custom-themes#create-your-own-custom-theme-manually
              "%
              | optional,
            green
              | refs."definitions.color"
              | String
              | doc m%"
                A green color of the current theme
                https://docs.warp.dev/appearance/custom-themes#create-your-own-custom-theme-manually
              "%
              | optional,
            magenta
              | refs."definitions.color"
              | String
              | doc m%"
                A magenta color of the current theme
                https://docs.warp.dev/appearance/custom-themes#create-your-own-custom-theme-manually
              "%
              | optional,
            red
              | refs."definitions.color"
              | String
              | doc m%"
                A red color of the current theme
                https://docs.warp.dev/appearance/custom-themes#create-your-own-custom-theme-manually
              "%
              | optional,
            white
              | refs."definitions.color"
              | String
              | doc m%"
                A white color of the current theme
                https://docs.warp.dev/appearance/custom-themes#create-your-own-custom-theme-manually
              "%
              | optional,
            yellow
              | refs."definitions.color"
              | String
              | doc m%"
                A yellow color of the current theme
                https://docs.warp.dev/appearance/custom-themes#create-your-own-custom-theme-manually
              "%
              | optional,
          },
    }
    in
  {
      accent
        | refs."definitions.color-or-gradient"
        | doc m%"
          An accent color of the current theme
          https://docs.warp.dev/appearance/custom-themes#create-your-own-custom-theme-manually
        "%
        | optional,
      background
        | refs."definitions.color-or-gradient"
        | doc m%"
          A background color of the current theme
          https://docs.warp.dev/appearance/custom-themes#create-your-own-custom-theme-manually
        "%
        | optional,
      background_image
        | {
          opacity
            | std.number.Integer
            | js2n.number.Maximum 100
            | js2n.number.Minimum 0
            | doc m%"
              An opacity of the current image of the current theme
              https://docs.warp.dev/appearance/custom-themes#background-images-and-gradients
            "%
            | optional,
          path
            | js2n.string.MinLength 1
            | doc m%"
              A path of the current image of the current theme
              https://docs.warp.dev/appearance/custom-themes#background-images-and-gradients
            "%
            | optional,
        }
        | doc "A background image of the current theme"
        | optional,
      details
        | std.enum.TagOrString
        | [| 'darker, 'lighter |]
        | doc m%"
          Whether lighter or darker colors are used in the current theme
          https://docs.warp.dev/appearance/custom-themes#create-your-own-custom-theme-manually
        "%
        | optional,
      foreground
        | refs."definitions.color"
        | doc m%"
          A foreground color of the current theme
          https://docs.warp.dev/appearance/custom-themes#create-your-own-custom-theme-manually
        "%
        | optional,
      terminal_colors
        | {
          bright
            | refs."definitions.colors"
            | doc m%"
              Bright colors of the current theme
              https://docs.warp.dev/appearance/custom-themes#create-your-own-custom-theme-manually
            "%
            | optional,
          normal
            | refs."definitions.colors"
            | doc m%"
              Normal colors of the current theme
              https://docs.warp.dev/appearance/custom-themes#create-your-own-custom-theme-manually
            "%
            | optional,
        }
        | doc m%"
          Terminal colors of the current theme
          https://docs.warp.dev/appearance/custom-themes#create-your-own-custom-theme-manually
        "%
        | optional,
    }