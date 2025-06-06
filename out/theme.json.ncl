# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.refComplete" =
        {
            ref
              | String
              | doc "A reference to another property value. e.g. `styles.color.text`"
              | optional,
          },
      "definitions.settingsAppearanceToolsProperties" =
        {
            appearanceTools
              | Bool
              | doc m%"
                Setting that enables the following UI tools:
                
                - background: backgroundImage, backgroundSize
                - border: color, radius, style, width
                - color: link, heading, button, caption
                - dimensions: aspectRatio, minHeight
                - position: sticky
                - spacing: blockGap, margin, padding
                - typography: lineHeight
              "%
              | optional,
            ..
          },
      "definitions.settingsBackgroundProperties" =
        {
            background
              | {
                backgroundImage
                  | Bool
                  | doc "Allow users to set a background image."
                  | optional,
                backgroundSize
                  | Bool
                  | doc "Allow users to set values related to the size of a background image, including size, position, and repeat controls."
                  | optional,
              }
              | doc "Settings related to background."
              | optional,
            ..
          },
      "definitions.settingsBlocksPropertiesComplete" =
        js2n.record.Record
            {
              additional = 'None,
              patterns =
                {
                    "^[a-z][a-z0-9-]*/[a-z][a-z0-9-]*$" =
                      std.contract.Sequence
                          [
                            refs."definitions.settingsPropertiesComplete",
                            { _ | Dyn }
                          ],
                  },
              properties =
                {
                    "core/archives" =
                      std.contract.Sequence
                          [
                            refs."definitions.settingsPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/audio" =
                      std.contract.Sequence
                          [
                            refs."definitions.settingsPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/avatar" =
                      std.contract.Sequence
                          [
                            refs."definitions.settingsPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/block" =
                      std.contract.Sequence
                          [
                            refs."definitions.settingsPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/button" =
                      std.contract.Sequence
                          [
                            refs."definitions.settingsPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/buttons" =
                      std.contract.Sequence
                          [
                            refs."definitions.settingsPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/calendar" =
                      std.contract.Sequence
                          [
                            refs."definitions.settingsPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/categories" =
                      std.contract.Sequence
                          [
                            refs."definitions.settingsPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/code" =
                      std.contract.Sequence
                          [
                            refs."definitions.settingsPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/column" =
                      std.contract.Sequence
                          [
                            refs."definitions.settingsPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/columns" =
                      std.contract.Sequence
                          [
                            refs."definitions.settingsPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/comment-author-avatar" =
                      std.contract.Sequence
                          [
                            refs."definitions.settingsPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/comment-author-name" =
                      std.contract.Sequence
                          [
                            refs."definitions.settingsPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/comment-content" =
                      std.contract.Sequence
                          [
                            refs."definitions.settingsPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/comment-date" =
                      std.contract.Sequence
                          [
                            refs."definitions.settingsPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/comment-edit-link" =
                      std.contract.Sequence
                          [
                            refs."definitions.settingsPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/comment-reply-link" =
                      std.contract.Sequence
                          [
                            refs."definitions.settingsPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/comment-template" =
                      std.contract.Sequence
                          [
                            refs."definitions.settingsPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/comments" =
                      std.contract.Sequence
                          [
                            refs."definitions.settingsPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/comments-pagination" =
                      std.contract.Sequence
                          [
                            refs."definitions.settingsPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/comments-pagination-next" =
                      std.contract.Sequence
                          [
                            refs."definitions.settingsPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/comments-pagination-numbers" =
                      std.contract.Sequence
                          [
                            refs."definitions.settingsPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/comments-pagination-previous" =
                      std.contract.Sequence
                          [
                            refs."definitions.settingsPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/comments-title" =
                      std.contract.Sequence
                          [
                            refs."definitions.settingsPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/cover" =
                      std.contract.Sequence
                          [
                            refs."definitions.settingsPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/details" =
                      std.contract.Sequence
                          [
                            refs."definitions.settingsPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/embed" =
                      std.contract.Sequence
                          [
                            refs."definitions.settingsPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/file" =
                      std.contract.Sequence
                          [
                            refs."definitions.settingsPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/footnotes" =
                      std.contract.Sequence
                          [
                            refs."definitions.settingsPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/freeform" =
                      std.contract.Sequence
                          [
                            refs."definitions.settingsPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/gallery" =
                      std.contract.Sequence
                          [
                            refs."definitions.settingsPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/group" =
                      std.contract.Sequence
                          [
                            refs."definitions.settingsPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/heading" =
                      std.contract.Sequence
                          [
                            refs."definitions.settingsPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/home-link" =
                      std.contract.Sequence
                          [
                            refs."definitions.settingsPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/html" =
                      std.contract.Sequence
                          [
                            refs."definitions.settingsPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/image" =
                      std.contract.Sequence
                          [
                            refs."definitions.settingsPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/latest-comments" =
                      std.contract.Sequence
                          [
                            refs."definitions.settingsPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/latest-posts" =
                      std.contract.Sequence
                          [
                            refs."definitions.settingsPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/legacy-widget" =
                      std.contract.Sequence
                          [
                            refs."definitions.settingsPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/list" =
                      std.contract.Sequence
                          [
                            refs."definitions.settingsPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/list-item" =
                      std.contract.Sequence
                          [
                            refs."definitions.settingsPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/loginout" =
                      std.contract.Sequence
                          [
                            refs."definitions.settingsPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/media-text" =
                      std.contract.Sequence
                          [
                            refs."definitions.settingsPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/missing" =
                      std.contract.Sequence
                          [
                            refs."definitions.settingsPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/more" =
                      std.contract.Sequence
                          [
                            refs."definitions.settingsPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/navigation" =
                      std.contract.Sequence
                          [
                            refs."definitions.settingsPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/navigation-link" =
                      std.contract.Sequence
                          [
                            refs."definitions.settingsPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/navigation-submenu" =
                      std.contract.Sequence
                          [
                            refs."definitions.settingsPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/nextpage" =
                      std.contract.Sequence
                          [
                            refs."definitions.settingsPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/page-list" =
                      std.contract.Sequence
                          [
                            refs."definitions.settingsPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/page-list-item" =
                      std.contract.Sequence
                          [
                            refs."definitions.settingsPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/paragraph" =
                      std.contract.Sequence
                          [
                            refs."definitions.settingsPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/post-author" =
                      std.contract.Sequence
                          [
                            refs."definitions.settingsPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/post-author-biography" =
                      std.contract.Sequence
                          [
                            refs."definitions.settingsPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/post-author-name" =
                      std.contract.Sequence
                          [
                            refs."definitions.settingsPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/post-comment" =
                      std.contract.Sequence
                          [
                            refs."definitions.settingsPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/post-comments-count" =
                      std.contract.Sequence
                          [
                            refs."definitions.settingsPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/post-comments-form" =
                      std.contract.Sequence
                          [
                            refs."definitions.settingsPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/post-comments-link" =
                      std.contract.Sequence
                          [
                            refs."definitions.settingsPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/post-content" =
                      std.contract.Sequence
                          [
                            refs."definitions.settingsPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/post-date" =
                      std.contract.Sequence
                          [
                            refs."definitions.settingsPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/post-excerpt" =
                      std.contract.Sequence
                          [
                            refs."definitions.settingsPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/post-featured-image" =
                      std.contract.Sequence
                          [
                            refs."definitions.settingsPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/post-navigation-link" =
                      std.contract.Sequence
                          [
                            refs."definitions.settingsPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/post-template" =
                      std.contract.Sequence
                          [
                            refs."definitions.settingsPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/post-terms" =
                      std.contract.Sequence
                          [
                            refs."definitions.settingsPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/post-title" =
                      std.contract.Sequence
                          [
                            refs."definitions.settingsPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/preformatted" =
                      std.contract.Sequence
                          [
                            refs."definitions.settingsPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/pullquote" =
                      std.contract.Sequence
                          [
                            refs."definitions.settingsPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/query" =
                      std.contract.Sequence
                          [
                            refs."definitions.settingsPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/query-no-results" =
                      std.contract.Sequence
                          [
                            refs."definitions.settingsPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/query-pagination" =
                      std.contract.Sequence
                          [
                            refs."definitions.settingsPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/query-pagination-next" =
                      std.contract.Sequence
                          [
                            refs."definitions.settingsPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/query-pagination-numbers" =
                      std.contract.Sequence
                          [
                            refs."definitions.settingsPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/query-pagination-previous" =
                      std.contract.Sequence
                          [
                            refs."definitions.settingsPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/query-title" =
                      std.contract.Sequence
                          [
                            refs."definitions.settingsPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/query-total" =
                      std.contract.Sequence
                          [
                            refs."definitions.settingsPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/quote" =
                      std.contract.Sequence
                          [
                            refs."definitions.settingsPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/read-more" =
                      std.contract.Sequence
                          [
                            refs."definitions.settingsPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/rss" =
                      std.contract.Sequence
                          [
                            refs."definitions.settingsPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/search" =
                      std.contract.Sequence
                          [
                            refs."definitions.settingsPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/separator" =
                      std.contract.Sequence
                          [
                            refs."definitions.settingsPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/shortcode" =
                      std.contract.Sequence
                          [
                            refs."definitions.settingsPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/site-logo" =
                      std.contract.Sequence
                          [
                            refs."definitions.settingsPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/site-tagline" =
                      std.contract.Sequence
                          [
                            refs."definitions.settingsPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/site-title" =
                      std.contract.Sequence
                          [
                            refs."definitions.settingsPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/social-link" =
                      std.contract.Sequence
                          [
                            refs."definitions.settingsPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/social-links" =
                      std.contract.Sequence
                          [
                            refs."definitions.settingsPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/spacer" =
                      std.contract.Sequence
                          [
                            refs."definitions.settingsPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/table" =
                      std.contract.Sequence
                          [
                            refs."definitions.settingsPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/tag-cloud" =
                      std.contract.Sequence
                          [
                            refs."definitions.settingsPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/template-part" =
                      std.contract.Sequence
                          [
                            refs."definitions.settingsPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/term-description" =
                      std.contract.Sequence
                          [
                            refs."definitions.settingsPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/text-columns" =
                      std.contract.Sequence
                          [
                            refs."definitions.settingsPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/verse" =
                      std.contract.Sequence
                          [
                            refs."definitions.settingsPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/video" =
                      std.contract.Sequence
                          [
                            refs."definitions.settingsPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/widget-area" =
                      std.contract.Sequence
                          [
                            refs."definitions.settingsPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/widget-group" =
                      std.contract.Sequence
                          [
                            refs."definitions.settingsPropertiesComplete",
                            { _ | Dyn }
                          ],
                  },
              required = {},
            },
      "definitions.settingsBorderProperties" =
        {
            border
              | {
                color
                  | Bool
                  | doc "Allow users to set custom border colors."
                  | optional,
                radius
                  | Bool
                  | doc "Allow users to set custom border radius."
                  | optional,
                style
                  | Bool
                  | doc "Allow users to set custom border styles."
                  | optional,
                width
                  | Bool
                  | doc "Allow users to set custom border widths."
                  | optional,
              }
              | doc "Settings related to borders."
              | optional,
            ..
          },
      "definitions.settingsColorProperties" =
        {
            color
              | {
                background
                  | Bool
                  | doc "Allow users to set background colors."
                  | optional,
                button
                  | Bool
                  | doc "Allow users to set button colors in a block."
                  | optional,
                caption
                  | Bool
                  | doc "Allow users to set caption colors in a block."
                  | optional,
                custom
                  | Bool
                  | doc "Allow users to select custom colors."
                  | optional,
                customDuotone
                  | Bool
                  | doc "Allow users to create custom duotone filters."
                  | optional,
                customGradient
                  | Bool
                  | doc "Allow users to create custom gradients."
                  | optional,
                defaultDuotone
                  | Bool
                  | doc "Allow users to choose filters from the default duotone filter presets."
                  | optional,
                defaultGradients
                  | Bool
                  | doc "Allow users to choose colors from the default gradients."
                  | optional,
                defaultPalette
                  | Bool
                  | doc "Allow users to choose colors from the default palette."
                  | optional,
                duotone
                  | Array
                    {
                      colors
                        | Array String
                        | doc "List of colors from dark to light.",
                      name
                        | String
                        | doc "Name of the duotone preset, translatable.",
                      slug
                        | String
                        | doc "Kebab-case unique identifier for the duotone preset.",
                    }
                  | doc m%"
                    Duotone presets for the duotone picker.
                    Doesn't generate classes or properties.
                  "%
                  | optional,
                gradients
                  | Array
                    {
                      gradient | String | doc "CSS gradient string.",
                      name
                        | String
                        | doc "Name of the gradient preset, translatable.",
                      slug
                        | String
                        | doc "Kebab-case unique identifier for the gradient preset.",
                    }
                  | doc m%"
                    Gradient presets for the gradient picker.
                    Generates a single class (`.has-{slug}-background`) and custom property (`--wp--preset--gradient--{slug}`) per preset value.
                  "%
                  | optional,
                heading
                  | Bool
                  | doc "Allow users to set heading colors in a block."
                  | optional,
                link
                  | Bool
                  | doc "Allow users to set link colors in a block."
                  | optional,
                palette
                  | Array
                    {
                      color | String | doc "CSS hex or rgb(a) string.",
                      name
                        | String
                        | doc "Name of the color preset, translatable.",
                      slug
                        | String
                        | doc "Kebab-case unique identifier for the color preset.",
                    }
                  | doc m%"
                    Color palette presets for the color picker.
                    Generates three classes (`.has-{slug}-color`, `.has-{slug}-background-color`, and `.has-{slug}-border-color`) and a single custom property (`--wp--preset--color--{slug}`) per preset value.
                  "%
                  | optional,
                text
                  | Bool
                  | doc "Allow users to set text colors in a block."
                  | optional,
              }
              | doc "Settings related to colors."
              | optional,
            ..
          },
      "definitions.settingsCustomAdditionalProperties" =
        {
            _ | std.contract.any_of
              [
                String,
                Number,
                std.contract.Sequence [ js2n.Always, { _ | Dyn } ]
              ]
          },
      "definitions.settingsCustomProperties" =
        {
            custom
              | refs."definitions.settingsCustomAdditionalProperties"
              | { _ | Dyn }
              | optional,
            ..
          },
      "definitions.settingsDimensionsProperties" =
        {
            dimensions
              | {
                aspectRatio
                  | Bool
                  | doc "Allow users to set an aspect ratio."
                  | optional,
                aspectRatios
                  | Array
                    {
                      name
                        | String
                        | doc "Name of the aspect ratio preset."
                        | optional,
                      ratio
                        | String
                        | doc "Aspect ratio expressed as a division or decimal."
                        | optional,
                      slug
                        | String
                        | doc "Kebab-case unique identifier for the aspect ratio preset."
                        | optional,
                      ..
                    }
                  | doc "Allow users to define aspect ratios for some blocks."
                  | optional,
                defaultAspectRatios
                  | Bool
                  | doc "Allow users to choose aspect ratios from the default set of aspect ratios."
                  | optional,
                minHeight
                  | Bool
                  | doc "Allow users to set custom minimum height."
                  | optional,
              }
              | doc "Settings related to dimensions."
              | optional,
            ..
          },
      "definitions.settingsLayoutProperties" =
        {
            layout
              | {
                allowCustomContentAndWideSize
                  | Bool
                  | doc "Enable or disable the custom content and wide size controls."
                  | optional,
                allowEditing
                  | Bool
                  | doc "Disable the layout UI controls."
                  | optional,
                contentSize
                  | String
                  | doc "Sets the max-width of the content."
                  | optional,
                wideSize
                  | String
                  | doc "Sets the max-width of wide (`.alignwide`) content. Also used as the maximum viewport when calculating fluid font sizes"
                  | optional,
              }
              | doc "Settings related to layout."
              | optional,
            ..
          },
      "definitions.settingsLightboxProperties" =
        {
            lightbox
              | {
                allowEditing
                  | Bool
                  | doc "Defines whether to show the Lightbox UI in the block editor. If set to `false`, the user won't be able to change the lightbox settings in the block editor."
                  | optional,
                enabled
                  | Bool
                  | doc "Defines whether the lightbox is enabled or not."
                  | optional,
              }
              | doc "Settings related to the lightbox."
              | optional,
            ..
          },
      "definitions.settingsPositionProperties" =
        {
            position
              | {
                sticky
                  | Bool
                  | doc "Allow users to set sticky position."
                  | optional,
              }
              | doc "Settings related to position."
              | optional,
            ..
          },
      "definitions.settingsProperties" =
        std.contract.Sequence
            [
              refs."definitions.settingsAppearanceToolsProperties",
              refs."definitions.settingsBackgroundProperties",
              refs."definitions.settingsBorderProperties",
              refs."definitions.settingsColorProperties",
              refs."definitions.settingsDimensionsProperties",
              refs."definitions.settingsLayoutProperties",
              refs."definitions.settingsLightboxProperties",
              refs."definitions.settingsPositionProperties",
              refs."definitions.settingsShadowProperties",
              refs."definitions.settingsSpacingProperties",
              refs."definitions.settingsTypographyProperties",
              refs."definitions.settingsCustomProperties",
              { _ | Dyn }
            ],
      "definitions.settingsPropertiesComplete" =
        std.contract.Sequence
            [
              refs."definitions.settingsProperties",
              js2n.record.PropertyNames
                (std.contract.Sequence
                  [ refs."definitions.settingsPropertyNames", String ])
            ],
      "definitions.settingsPropertyNames" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'custom,
                'typography,
                'spacing,
                'shadow,
                'position,
                'lightbox,
                'layout,
                'dimensions,
                'color,
                'border,
                'background,
                'appearanceTools
              |]
            ],
      "definitions.settingsShadowProperties" =
        {
            shadow
              | {
                defaultPresets
                  | Bool
                  | doc "Allow users to choose shadows from the default shadow presets."
                  | optional,
                presets
                  | Array
                    {
                      name
                        | String
                        | doc "Name of the shadow preset, translatable.",
                      shadow | String | doc "CSS box-shadow value",
                      slug
                        | String
                        | doc "Kebab-case unique identifier for the shadow preset.",
                    }
                  | doc m%"
                    Shadow presets for the shadow picker.
                    Generates a single custom property (`--wp--preset--shadow--{slug}`) per preset value.
                  "%
                  | optional,
              }
              | doc "Settings related to shadows."
              | optional,
            ..
          },
      "definitions.settingsSpacingProperties" =
        {
            spacing
              | {
                blockGap
                  | js2n.Nullable Bool
                  | doc m%"
                    Enables `--wp--style--block-gap` to be generated from styles.spacing.blockGap.
                    A value of `null` instead of `false` further disables layout styles from being generated.
                  "%
                  | optional,
                customSpacingSize
                  | Bool
                  | doc "Allow users to set custom space sizes."
                  | optional,
                defaultSpacingSizes
                  | Bool
                  | doc "Allow users to choose space sizes from the default space size presets."
                  | optional,
                margin
                  | Bool
                  | doc "Allow users to set a custom margin."
                  | optional,
                padding
                  | Bool
                  | doc "Allow users to set a custom padding."
                  | optional,
                spacingScale
                  | {
                    increment
                      | js2n.number.ExclusiveMinimum 0
                      | doc "The amount to increment each step by."
                      | optional,
                    mediumStep
                      | js2n.number.ExclusiveMinimum 0
                      | doc "The value to medium setting in the scale."
                      | optional,
                    operator
                      | std.enum.TagOrString
                      | [| '"*", '"+" |]
                      | doc "With + or * depending on whether scale is generated by increment or multiplier."
                      | optional,
                    steps
                      | std.number.Integer
                      | js2n.number.Maximum 10
                      | js2n.number.Minimum 1
                      | doc "Number of steps to generate in scale."
                      | optional,
                    unit
                      | std.enum.TagOrString
                      | [|
                        'dvmax,
                        'lvmax,
                        'svmax,
                        'vmax,
                        'dvmin,
                        'lvmin,
                        'svmin,
                        'vmin,
                        'dvb,
                        'lvb,
                        'svb,
                        'vb,
                        'dvi,
                        'lvi,
                        'svi,
                        'vi,
                        'dvh,
                        'lvh,
                        'svh,
                        'vh,
                        'dvw,
                        'lvw,
                        'svw,
                        'vw,
                        '"%",
                        'rem,
                        'em,
                        'px
                      |]
                      | doc "Unit that the scale uses, eg. rem, em, px."
                      | optional,
                  }
                  | doc m%"
                    Settings to auto-generate space size presets for the space size selector.
                    Generates a custom property (--wp--preset--spacing--{slug}`) per preset value.
                  "%
                  | optional,
                spacingSizes
                  | Array
                    {
                      name
                        | String
                        | doc "Name of the space size preset, translatable."
                        | optional,
                      size
                        | String
                        | doc "CSS space-size value, including units."
                        | optional,
                      slug
                        | String
                        | doc "Unique identifier for the space size preset. For best cross theme compatibility these should be in the form '10','20','30','40','50','60', etc. with '50' representing the 'Medium' size step. If all slugs begin with a number they will be merged with default and user slugs and sorted numerically."
                        | optional,
                    }
                  | doc m%"
                    Space size presets for the space size selector.
                    Generates a custom property (`--wp--preset--spacing--{slug}`) per preset value.
                  "%
                  | optional,
                units
                  | js2n.array.MinItems 1
                  | Array String
                  | doc "List of units the user can use for spacing values."
                  | optional,
              }
              | doc "Settings related to spacing."
              | optional,
            ..
          },
      "definitions.settingsTypographyProperties" =
        {
            typography
              | {
                customFontSize
                  | Bool
                  | doc "Allow users to set custom font sizes."
                  | optional,
                defaultFontSizes
                  | Bool
                  | doc "Allow users to choose font sizes from the default font size presets."
                  | optional,
                dropCap | Bool | doc "Enable drop cap." | optional,
                fluid
                  | std.contract.any_of
                    [
                      {
                        maxViewportWidth
                          | String
                          | doc "Allow users to set custom a max viewport width in px, rem or em, used to set the maximum size boundary of a fluid font size."
                          | optional,
                        minFontSize
                          | String
                          | doc "Allow users to set a global minimum font size boundary in px, rem or em. Custom font sizes below this value will not be clamped, and all calculated minimum font sizes will be, at a minimum, this value."
                          | optional,
                        minViewportWidth
                          | String
                          | doc "Allow users to set a custom min viewport width in px, rem or em, used to set the minimum size boundary of a fluid font size."
                          | optional,
                      },
                      Bool
                    ]
                  | doc "Enables fluid typography and allows users to set global fluid typography parameters."
                  | optional,
                fontFamilies
                  | Array
                    {
                      fontFace
                        | Array
                          {
                            ascentOverride
                              | String
                              | doc "CSS ascent-override value."
                              | optional,
                            descentOverride
                              | String
                              | doc "CSS descent-override value."
                              | optional,
                            fontDisplay
                              | std.enum.TagOrString
                              | [|
                                '"optional",
                                'swap,
                                'fallback,
                                'block,
                                'auto
                              |]
                              | doc "CSS font-display value."
                              | optional,
                            fontFamily | String | doc "CSS font-family value.",
                            fontFeatureSettings
                              | String
                              | doc "CSS font-feature-settings value."
                              | optional,
                            fontStretch
                              | String
                              | doc "CSS font-stretch value."
                              | optional,
                            fontStyle
                              | String
                              | doc "CSS font-style value."
                              | optional,
                            fontVariant
                              | String
                              | doc "CSS font-variant value."
                              | optional,
                            fontVariationSettings
                              | String
                              | doc "CSS font-variation-settings value."
                              | optional,
                            fontWeight
                              | std.contract.any_of
                                [ String, std.number.Integer ]
                              | doc "List of available font weights, separated by a space."
                              | optional,
                            lineGapOverride
                              | String
                              | doc "CSS line-gap-override value."
                              | optional,
                            sizeAdjust
                              | String
                              | doc "CSS size-adjust value."
                              | optional,
                            src
                              | std.contract.any_of [ String, Array String ]
                              | doc "Paths or URLs to the font files.",
                            unicodeRange
                              | String
                              | doc "CSS unicode-range value."
                              | optional,
                          }
                        | doc "Array of font-face declarations."
                        | optional,
                      fontFamily
                        | String
                        | doc "CSS font-family value."
                        | optional,
                      name
                        | String
                        | doc "Name of the font family preset, translatable."
                        | optional,
                      slug
                        | String
                        | doc "Kebab-case unique identifier for the font family preset."
                        | optional,
                    }
                  | doc m%"
                    Font family presets for the font family selector.
                    Generates a single custom property (`--wp--preset--font-family--{slug}`) per preset value.
                  "%
                  | optional,
                fontSizes
                  | Array
                    {
                      fluid
                        | std.contract.any_of
                          [
                            {
                              max
                                | String
                                | doc "A max font size for fluid font size calculations in px, rem or em."
                                | optional,
                              min
                                | String
                                | doc "A min font size for fluid font size calculations in px, rem or em."
                                | optional,
                            },
                            Bool
                          ]
                        | doc "Specifies the minimum and maximum font size value of a fluid font size. Set to `false` to bypass fluid calculations and use the static `size` value."
                        | optional,
                      name
                        | String
                        | doc "Name of the font size preset, translatable."
                        | optional,
                      size
                        | String
                        | doc "CSS font-size value, including units."
                        | optional,
                      slug
                        | String
                        | doc "Kebab-case unique identifier for the font size preset."
                        | optional,
                    }
                  | doc m%"
                    Font size presets for the font size selector.
                    Generates a single class (`.has-{slug}-color`) and custom property (`--wp--preset--font-size--{slug}`) per preset value.
                  "%
                  | optional,
                fontStyle
                  | Bool
                  | doc "Allow users to set custom font styles."
                  | optional,
                fontWeight
                  | Bool
                  | doc "Allow users to set custom font weights."
                  | optional,
                letterSpacing
                  | Bool
                  | doc "Allow users to set custom letter spacing."
                  | optional,
                lineHeight
                  | Bool
                  | doc "Allow users to set custom line height."
                  | optional,
                textAlign
                  | Bool
                  | doc "Allow users to set the text align."
                  | optional,
                textColumns
                  | Bool
                  | doc "Allow users to set the number of text columns."
                  | optional,
                textDecoration
                  | Bool
                  | doc "Allow users to set custom text decorations."
                  | optional,
                textTransform
                  | Bool
                  | doc "Allow users to set custom text transforms."
                  | optional,
                writingMode
                  | Bool
                  | doc "Allow users to set the writing mode."
                  | optional,
              }
              | doc "Settings related to typography."
              | optional,
            ..
          },
      "definitions.stylesBlocksPropertiesComplete" =
        js2n.record.Record
            {
              additional = 'None,
              patterns =
                {
                    "^[a-z][a-z0-9-]*/[a-z][a-z0-9-]*$" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesPropertiesAndElementsComplete",
                            { _ | Dyn }
                          ],
                  },
              properties =
                {
                    "core/archives" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesPropertiesAndElementsComplete",
                            { _ | Dyn }
                          ],
                    "core/audio" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesPropertiesAndElementsComplete",
                            { _ | Dyn }
                          ],
                    "core/avatar" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesPropertiesAndElementsComplete",
                            { _ | Dyn }
                          ],
                    "core/block" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesPropertiesAndElementsComplete",
                            { _ | Dyn }
                          ],
                    "core/button" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesPropertiesAndElementsComplete",
                            { _ | Dyn }
                          ],
                    "core/buttons" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesPropertiesAndElementsComplete",
                            { _ | Dyn }
                          ],
                    "core/calendar" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesPropertiesAndElementsComplete",
                            { _ | Dyn }
                          ],
                    "core/categories" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesPropertiesAndElementsComplete",
                            { _ | Dyn }
                          ],
                    "core/code" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesPropertiesAndElementsComplete",
                            { _ | Dyn }
                          ],
                    "core/column" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesPropertiesAndElementsComplete",
                            { _ | Dyn }
                          ],
                    "core/columns" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesPropertiesAndElementsComplete",
                            { _ | Dyn }
                          ],
                    "core/comment-author-avatar" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesPropertiesAndElementsComplete",
                            { _ | Dyn }
                          ],
                    "core/comment-author-name" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesPropertiesAndElementsComplete",
                            { _ | Dyn }
                          ],
                    "core/comment-content" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesPropertiesAndElementsComplete",
                            { _ | Dyn }
                          ],
                    "core/comment-date" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesPropertiesAndElementsComplete",
                            { _ | Dyn }
                          ],
                    "core/comment-edit-link" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesPropertiesAndElementsComplete",
                            { _ | Dyn }
                          ],
                    "core/comment-reply-link" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesPropertiesAndElementsComplete",
                            { _ | Dyn }
                          ],
                    "core/comment-template" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesPropertiesAndElementsComplete",
                            { _ | Dyn }
                          ],
                    "core/comments" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesPropertiesAndElementsComplete",
                            { _ | Dyn }
                          ],
                    "core/comments-pagination" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesPropertiesAndElementsComplete",
                            { _ | Dyn }
                          ],
                    "core/comments-pagination-next" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesPropertiesAndElementsComplete",
                            { _ | Dyn }
                          ],
                    "core/comments-pagination-numbers" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesPropertiesAndElementsComplete",
                            { _ | Dyn }
                          ],
                    "core/comments-pagination-previous" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesPropertiesAndElementsComplete",
                            { _ | Dyn }
                          ],
                    "core/comments-title" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesPropertiesAndElementsComplete",
                            { _ | Dyn }
                          ],
                    "core/cover" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesPropertiesAndElementsComplete",
                            { _ | Dyn }
                          ],
                    "core/details" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesPropertiesAndElementsComplete",
                            { _ | Dyn }
                          ],
                    "core/embed" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesPropertiesAndElementsComplete",
                            { _ | Dyn }
                          ],
                    "core/file" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesPropertiesAndElementsComplete",
                            { _ | Dyn }
                          ],
                    "core/footnotes" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesPropertiesAndElementsComplete",
                            { _ | Dyn }
                          ],
                    "core/freeform" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesPropertiesAndElementsComplete",
                            { _ | Dyn }
                          ],
                    "core/gallery" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesPropertiesAndElementsComplete",
                            { _ | Dyn }
                          ],
                    "core/group" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesPropertiesAndElementsComplete",
                            { _ | Dyn }
                          ],
                    "core/heading" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesPropertiesAndElementsComplete",
                            { _ | Dyn }
                          ],
                    "core/home-link" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesPropertiesAndElementsComplete",
                            { _ | Dyn }
                          ],
                    "core/html" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesPropertiesAndElementsComplete",
                            { _ | Dyn }
                          ],
                    "core/image" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesPropertiesAndElementsComplete",
                            { _ | Dyn }
                          ],
                    "core/latest-comments" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesPropertiesAndElementsComplete",
                            { _ | Dyn }
                          ],
                    "core/latest-posts" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesPropertiesAndElementsComplete",
                            { _ | Dyn }
                          ],
                    "core/legacy-widget" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesPropertiesAndElementsComplete",
                            { _ | Dyn }
                          ],
                    "core/list" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesPropertiesAndElementsComplete",
                            { _ | Dyn }
                          ],
                    "core/list-item" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesPropertiesAndElementsComplete",
                            { _ | Dyn }
                          ],
                    "core/loginout" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesPropertiesAndElementsComplete",
                            { _ | Dyn }
                          ],
                    "core/media-text" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesPropertiesAndElementsComplete",
                            { _ | Dyn }
                          ],
                    "core/missing" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesPropertiesAndElementsComplete",
                            { _ | Dyn }
                          ],
                    "core/more" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesPropertiesAndElementsComplete",
                            { _ | Dyn }
                          ],
                    "core/navigation" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesPropertiesAndElementsComplete",
                            { _ | Dyn }
                          ],
                    "core/navigation-link" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesPropertiesAndElementsComplete",
                            { _ | Dyn }
                          ],
                    "core/navigation-submenu" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesPropertiesAndElementsComplete",
                            { _ | Dyn }
                          ],
                    "core/nextpage" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesPropertiesAndElementsComplete",
                            { _ | Dyn }
                          ],
                    "core/page-list" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesPropertiesAndElementsComplete",
                            { _ | Dyn }
                          ],
                    "core/page-list-item" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesPropertiesAndElementsComplete",
                            { _ | Dyn }
                          ],
                    "core/paragraph" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesPropertiesAndElementsComplete",
                            { _ | Dyn }
                          ],
                    "core/post-author" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesPropertiesAndElementsComplete",
                            { _ | Dyn }
                          ],
                    "core/post-author-biography" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesPropertiesAndElementsComplete",
                            { _ | Dyn }
                          ],
                    "core/post-author-name" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesPropertiesAndElementsComplete",
                            { _ | Dyn }
                          ],
                    "core/post-comment" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesPropertiesAndElementsComplete",
                            { _ | Dyn }
                          ],
                    "core/post-comments-count" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesPropertiesAndElementsComplete",
                            { _ | Dyn }
                          ],
                    "core/post-comments-form" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesPropertiesAndElementsComplete",
                            { _ | Dyn }
                          ],
                    "core/post-comments-link" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesPropertiesAndElementsComplete",
                            { _ | Dyn }
                          ],
                    "core/post-content" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesPropertiesAndElementsComplete",
                            { _ | Dyn }
                          ],
                    "core/post-date" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesPropertiesAndElementsComplete",
                            { _ | Dyn }
                          ],
                    "core/post-excerpt" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesPropertiesAndElementsComplete",
                            { _ | Dyn }
                          ],
                    "core/post-featured-image" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesPropertiesAndElementsComplete",
                            { _ | Dyn }
                          ],
                    "core/post-navigation-link" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesPropertiesAndElementsComplete",
                            { _ | Dyn }
                          ],
                    "core/post-template" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesPropertiesAndElementsComplete",
                            { _ | Dyn }
                          ],
                    "core/post-terms" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesPropertiesAndElementsComplete",
                            { _ | Dyn }
                          ],
                    "core/post-title" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesPropertiesAndElementsComplete",
                            { _ | Dyn }
                          ],
                    "core/preformatted" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesPropertiesAndElementsComplete",
                            { _ | Dyn }
                          ],
                    "core/pullquote" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesPropertiesAndElementsComplete",
                            { _ | Dyn }
                          ],
                    "core/query" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesPropertiesAndElementsComplete",
                            { _ | Dyn }
                          ],
                    "core/query-no-results" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesPropertiesAndElementsComplete",
                            { _ | Dyn }
                          ],
                    "core/query-pagination" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesPropertiesAndElementsComplete",
                            { _ | Dyn }
                          ],
                    "core/query-pagination-next" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesPropertiesAndElementsComplete",
                            { _ | Dyn }
                          ],
                    "core/query-pagination-numbers" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesPropertiesAndElementsComplete",
                            { _ | Dyn }
                          ],
                    "core/query-pagination-previous" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesPropertiesAndElementsComplete",
                            { _ | Dyn }
                          ],
                    "core/query-title" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesPropertiesAndElementsComplete",
                            { _ | Dyn }
                          ],
                    "core/query-total" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesPropertiesAndElementsComplete",
                            { _ | Dyn }
                          ],
                    "core/quote" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesPropertiesAndElementsComplete",
                            { _ | Dyn }
                          ],
                    "core/read-more" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesPropertiesAndElementsComplete",
                            { _ | Dyn }
                          ],
                    "core/rss" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesPropertiesAndElementsComplete",
                            { _ | Dyn }
                          ],
                    "core/search" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesPropertiesAndElementsComplete",
                            { _ | Dyn }
                          ],
                    "core/separator" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesPropertiesAndElementsComplete",
                            { _ | Dyn }
                          ],
                    "core/shortcode" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesPropertiesAndElementsComplete",
                            { _ | Dyn }
                          ],
                    "core/site-logo" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesPropertiesAndElementsComplete",
                            { _ | Dyn }
                          ],
                    "core/site-tagline" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesPropertiesAndElementsComplete",
                            { _ | Dyn }
                          ],
                    "core/site-title" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesPropertiesAndElementsComplete",
                            { _ | Dyn }
                          ],
                    "core/social-link" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesPropertiesAndElementsComplete",
                            { _ | Dyn }
                          ],
                    "core/social-links" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesPropertiesAndElementsComplete",
                            { _ | Dyn }
                          ],
                    "core/spacer" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesPropertiesAndElementsComplete",
                            { _ | Dyn }
                          ],
                    "core/table" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesPropertiesAndElementsComplete",
                            { _ | Dyn }
                          ],
                    "core/tag-cloud" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesPropertiesAndElementsComplete",
                            { _ | Dyn }
                          ],
                    "core/template-part" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesPropertiesAndElementsComplete",
                            { _ | Dyn }
                          ],
                    "core/term-description" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesPropertiesAndElementsComplete",
                            { _ | Dyn }
                          ],
                    "core/text-columns" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesPropertiesAndElementsComplete",
                            { _ | Dyn }
                          ],
                    "core/verse" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesPropertiesAndElementsComplete",
                            { _ | Dyn }
                          ],
                    "core/video" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesPropertiesAndElementsComplete",
                            { _ | Dyn }
                          ],
                    "core/widget-area" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesPropertiesAndElementsComplete",
                            { _ | Dyn }
                          ],
                    "core/widget-group" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesPropertiesAndElementsComplete",
                            { _ | Dyn }
                          ],
                  },
              required = {},
            },
      "definitions.stylesElementsPropertiesComplete" =
        {
            button
              | refs."definitions.stylesProperties"
              | refs."definitions.stylesElementsPseudoSelectorsProperties"
              | js2n.record.PropertyNames
                (std.contract.any_of
                  [
                    std.contract.Sequence
                      [ refs."definitions.stylesPropertyNames", String ],
                    std.contract.Sequence
                      [
                        refs."definitions.stylesElementsPseudoSelectorsPropertyNames",
                        String
                      ]
                  ])
              | optional,
            caption
              | refs."definitions.stylesPropertiesComplete"
              | { _ | Dyn }
              | optional,
            cite
              | refs."definitions.stylesPropertiesComplete"
              | { _ | Dyn }
              | optional,
            h1
              | refs."definitions.stylesPropertiesComplete"
              | { _ | Dyn }
              | optional,
            h2
              | refs."definitions.stylesPropertiesComplete"
              | { _ | Dyn }
              | optional,
            h3
              | refs."definitions.stylesPropertiesComplete"
              | { _ | Dyn }
              | optional,
            h4
              | refs."definitions.stylesPropertiesComplete"
              | { _ | Dyn }
              | optional,
            h5
              | refs."definitions.stylesPropertiesComplete"
              | { _ | Dyn }
              | optional,
            h6
              | refs."definitions.stylesPropertiesComplete"
              | { _ | Dyn }
              | optional,
            heading
              | refs."definitions.stylesPropertiesComplete"
              | { _ | Dyn }
              | optional,
            link
              | refs."definitions.stylesProperties"
              | refs."definitions.stylesElementsPseudoSelectorsProperties"
              | js2n.record.PropertyNames
                (std.contract.any_of
                  [
                    std.contract.Sequence
                      [ refs."definitions.stylesPropertyNames", String ],
                    std.contract.Sequence
                      [
                        refs."definitions.stylesElementsPseudoSelectorsPropertyNames",
                        String
                      ]
                  ])
              | optional,
          },
      "definitions.stylesElementsPseudoSelectorsProperties" =
        {
            ":active"
              | refs."definitions.stylesPropertiesComplete"
              | { _ | Dyn }
              | optional,
            ":any-link"
              | refs."definitions.stylesPropertiesComplete"
              | { _ | Dyn }
              | optional,
            ":focus"
              | refs."definitions.stylesPropertiesComplete"
              | { _ | Dyn }
              | optional,
            ":focus-visible"
              | refs."definitions.stylesPropertiesComplete"
              | { _ | Dyn }
              | optional,
            ":hover"
              | refs."definitions.stylesPropertiesComplete"
              | { _ | Dyn }
              | optional,
            ":link"
              | refs."definitions.stylesPropertiesComplete"
              | { _ | Dyn }
              | optional,
            ":visited"
              | refs."definitions.stylesPropertiesComplete"
              | { _ | Dyn }
              | optional,
            ..
          },
      "definitions.stylesElementsPseudoSelectorsPropertyNames" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                '":visited",
                '":link",
                '":hover",
                '":focus-visible",
                '":focus",
                '":any-link",
                '":active"
              |]
            ],
      "definitions.stylesProperties" =
        {
            background
              | {
                backgroundAttachment
                  | std.contract.any_of
                    [
                      String,
                      std.contract.Sequence
                        [ refs."definitions.refComplete", { _ | Dyn } ]
                    ]
                  | doc "Sets the `background-attachment` CSS property."
                  | optional,
                backgroundImage
                  | js2n.OneOf
                    [
                      String,
                      std.contract.Sequence
                        [ refs."definitions.refComplete", { _ | Dyn } ],
                      js2n.record.Record
                        {
                          additional = 'None,
                          patterns = {},
                          properties = { url = String, },
                          required = {},
                        }
                    ]
                  | doc "Sets the `background-image` CSS property."
                  | optional,
                backgroundPosition
                  | std.contract.any_of
                    [
                      String,
                      std.contract.Sequence
                        [ refs."definitions.refComplete", { _ | Dyn } ]
                    ]
                  | doc "Sets the `background-position` CSS property."
                  | optional,
                backgroundRepeat
                  | std.contract.any_of
                    [
                      String,
                      std.contract.Sequence
                        [ refs."definitions.refComplete", { _ | Dyn } ]
                    ]
                  | doc "Sets the `background-repeat` CSS property."
                  | optional,
                backgroundSize
                  | std.contract.any_of
                    [
                      String,
                      std.contract.Sequence
                        [ refs."definitions.refComplete", { _ | Dyn } ]
                    ]
                  | doc "Sets the `background-size` CSS property."
                  | optional,
              }
              | doc "Background styles."
              | optional,
            border
              | {
                bottom
                  | {
                    color
                      | std.contract.any_of
                        [
                          String,
                          std.contract.Sequence
                            [ refs."definitions.refComplete", { _ | Dyn } ]
                        ]
                      | doc "Sets the `border-bottom-color` CSS property."
                      | optional,
                    style
                      | std.contract.any_of
                        [
                          String,
                          std.contract.Sequence
                            [ refs."definitions.refComplete", { _ | Dyn } ]
                        ]
                      | doc "Sets the `border-bottom-style` CSS property."
                      | optional,
                    width
                      | std.contract.any_of
                        [
                          String,
                          std.contract.Sequence
                            [ refs."definitions.refComplete", { _ | Dyn } ]
                        ]
                      | doc "Sets the `border-bottom-width` CSS property."
                      | optional,
                  }
                  | optional,
                color
                  | std.contract.any_of
                    [
                      String,
                      std.contract.Sequence
                        [ refs."definitions.refComplete", { _ | Dyn } ]
                    ]
                  | doc "Sets the `border-color` CSS property."
                  | optional,
                left
                  | {
                    color
                      | std.contract.any_of
                        [
                          String,
                          std.contract.Sequence
                            [ refs."definitions.refComplete", { _ | Dyn } ]
                        ]
                      | doc "Sets the `border-left-color` CSS property."
                      | optional,
                    style
                      | std.contract.any_of
                        [
                          String,
                          std.contract.Sequence
                            [ refs."definitions.refComplete", { _ | Dyn } ]
                        ]
                      | doc "Sets the `border-left-style` CSS property."
                      | optional,
                    width
                      | std.contract.any_of
                        [
                          String,
                          std.contract.Sequence
                            [ refs."definitions.refComplete", { _ | Dyn } ]
                        ]
                      | doc "Sets the `border-left-width` CSS property."
                      | optional,
                  }
                  | optional,
                radius
                  | std.contract.any_of
                    [
                      String,
                      std.contract.Sequence
                        [ refs."definitions.refComplete", { _ | Dyn } ],
                      js2n.record.Record
                        {
                          additional = 'Some Dyn,
                          patterns = {},
                          properties =
                            {
                                bottomLeft =
                                  std.contract.any_of
                                      [
                                        String,
                                        std.contract.Sequence
                                          [
                                            refs."definitions.refComplete",
                                            { _ | Dyn }
                                          ]
                                      ],
                                bottomRight =
                                  std.contract.any_of
                                      [
                                        String,
                                        std.contract.Sequence
                                          [
                                            refs."definitions.refComplete",
                                            { _ | Dyn }
                                          ]
                                      ],
                                topLeft =
                                  std.contract.any_of
                                      [
                                        String,
                                        std.contract.Sequence
                                          [
                                            refs."definitions.refComplete",
                                            { _ | Dyn }
                                          ]
                                      ],
                                topRight =
                                  std.contract.any_of
                                      [
                                        String,
                                        std.contract.Sequence
                                          [
                                            refs."definitions.refComplete",
                                            { _ | Dyn }
                                          ]
                                      ],
                              },
                          required = {},
                        }
                    ]
                  | doc "Sets the `border-radius` CSS property."
                  | optional,
                right
                  | {
                    color
                      | std.contract.any_of
                        [
                          String,
                          std.contract.Sequence
                            [ refs."definitions.refComplete", { _ | Dyn } ]
                        ]
                      | doc "Sets the `border-right-color` CSS property."
                      | optional,
                    style
                      | std.contract.any_of
                        [
                          String,
                          std.contract.Sequence
                            [ refs."definitions.refComplete", { _ | Dyn } ]
                        ]
                      | doc "Sets the `border-right-style` CSS property."
                      | optional,
                    width
                      | std.contract.any_of
                        [
                          String,
                          std.contract.Sequence
                            [ refs."definitions.refComplete", { _ | Dyn } ]
                        ]
                      | doc "Sets the `border-right-width` CSS property."
                      | optional,
                  }
                  | optional,
                style
                  | std.contract.any_of
                    [
                      String,
                      std.contract.Sequence
                        [ refs."definitions.refComplete", { _ | Dyn } ]
                    ]
                  | doc "Sets the `border-style` CSS property."
                  | optional,
                top
                  | {
                    color
                      | std.contract.any_of
                        [
                          String,
                          std.contract.Sequence
                            [ refs."definitions.refComplete", { _ | Dyn } ]
                        ]
                      | doc "Sets the `border-top-color` CSS property."
                      | optional,
                    style
                      | std.contract.any_of
                        [
                          String,
                          std.contract.Sequence
                            [ refs."definitions.refComplete", { _ | Dyn } ]
                        ]
                      | doc "Sets the `border-top-style` CSS property."
                      | optional,
                    width
                      | std.contract.any_of
                        [
                          String,
                          std.contract.Sequence
                            [ refs."definitions.refComplete", { _ | Dyn } ]
                        ]
                      | doc "Sets the `border-top-width` CSS property."
                      | optional,
                  }
                  | optional,
                width
                  | std.contract.any_of
                    [
                      String,
                      std.contract.Sequence
                        [ refs."definitions.refComplete", { _ | Dyn } ]
                    ]
                  | doc "Sets the `border-width` CSS property."
                  | optional,
              }
              | doc "Border styles."
              | optional,
            color
              | {
                background
                  | std.contract.any_of
                    [
                      String,
                      std.contract.Sequence
                        [ refs."definitions.refComplete", { _ | Dyn } ]
                    ]
                  | doc "Sets the `background-color` CSS property."
                  | optional,
                gradient
                  | std.contract.any_of
                    [
                      String,
                      std.contract.Sequence
                        [ refs."definitions.refComplete", { _ | Dyn } ]
                    ]
                  | doc "Sets the `background` CSS property."
                  | optional,
                text
                  | std.contract.any_of
                    [
                      String,
                      std.contract.Sequence
                        [ refs."definitions.refComplete", { _ | Dyn } ]
                    ]
                  | doc "Sets the `color` CSS property."
                  | optional,
              }
              | doc "Color styles."
              | optional,
            css
              | String
              | doc "Sets custom CSS to apply styling not covered by other theme.json properties."
              | optional,
            dimensions
              | {
                aspectRatio
                  | std.contract.any_of
                    [
                      String,
                      std.contract.Sequence
                        [ refs."definitions.refComplete", { _ | Dyn } ]
                    ]
                  | doc "Sets the `aspect-ratio` CSS property."
                  | optional,
                minHeight
                  | std.contract.any_of
                    [
                      String,
                      std.contract.Sequence
                        [ refs."definitions.refComplete", { _ | Dyn } ]
                    ]
                  | doc "Sets the `min-height` CSS property."
                  | optional,
                ..
              }
              | doc "Dimensions styles."
              | optional,
            filter
              | {
                duotone
                  | std.contract.any_of
                    [
                      String,
                      std.contract.Sequence
                        [ refs."definitions.refComplete", { _ | Dyn } ]
                    ]
                  | doc "Sets the duotone filter."
                  | optional,
              }
              | doc "CSS and SVG filter styles."
              | optional,
            outline
              | {
                color
                  | std.contract.any_of
                    [
                      String,
                      std.contract.Sequence
                        [ refs."definitions.refComplete", { _ | Dyn } ]
                    ]
                  | doc "Sets the `outline-color` CSS property."
                  | optional,
                offset
                  | std.contract.any_of
                    [
                      String,
                      std.contract.Sequence
                        [ refs."definitions.refComplete", { _ | Dyn } ]
                    ]
                  | doc "Sets the `outline-offset` CSS property."
                  | optional,
                style
                  | std.contract.any_of
                    [
                      String,
                      std.contract.Sequence
                        [ refs."definitions.refComplete", { _ | Dyn } ]
                    ]
                  | doc "Sets the `outline-style` CSS property."
                  | optional,
                width
                  | std.contract.any_of
                    [
                      String,
                      std.contract.Sequence
                        [ refs."definitions.refComplete", { _ | Dyn } ]
                    ]
                  | doc "Sets the `outline-width` CSS property."
                  | optional,
              }
              | doc "Outline styles."
              | optional,
            shadow
              | std.contract.any_of
                [
                  String,
                  std.contract.Sequence
                    [ refs."definitions.refComplete", { _ | Dyn } ]
                ]
              | doc "Box shadow styles."
              | optional,
            spacing
              | {
                blockGap
                  | std.contract.any_of
                    [
                      String,
                      std.contract.Sequence
                        [ refs."definitions.refComplete", { _ | Dyn } ]
                    ]
                  | doc "Sets the `--wp--style--block-gap` CSS custom property when settings.spacing.blockGap is true."
                  | optional,
                margin
                  | {
                    bottom
                      | std.contract.any_of
                        [
                          String,
                          std.contract.Sequence
                            [ refs."definitions.refComplete", { _ | Dyn } ]
                        ]
                      | doc "Sets the `margin-bottom` CSS property."
                      | optional,
                    left
                      | std.contract.any_of
                        [
                          String,
                          std.contract.Sequence
                            [ refs."definitions.refComplete", { _ | Dyn } ]
                        ]
                      | doc "Sets the `margin-left` CSS property."
                      | optional,
                    right
                      | std.contract.any_of
                        [
                          String,
                          std.contract.Sequence
                            [ refs."definitions.refComplete", { _ | Dyn } ]
                        ]
                      | doc "Sets the `margin-right` CSS property."
                      | optional,
                    top
                      | std.contract.any_of
                        [
                          String,
                          std.contract.Sequence
                            [ refs."definitions.refComplete", { _ | Dyn } ]
                        ]
                      | doc "Sets the `margin-top` CSS property."
                      | optional,
                  }
                  | doc "Margin styles."
                  | optional,
                padding
                  | {
                    bottom
                      | std.contract.any_of
                        [
                          String,
                          std.contract.Sequence
                            [ refs."definitions.refComplete", { _ | Dyn } ]
                        ]
                      | doc "Sets the `padding-bottom` CSS property."
                      | optional,
                    left
                      | std.contract.any_of
                        [
                          String,
                          std.contract.Sequence
                            [ refs."definitions.refComplete", { _ | Dyn } ]
                        ]
                      | doc "Sets the `padding-left` CSS property."
                      | optional,
                    right
                      | std.contract.any_of
                        [
                          String,
                          std.contract.Sequence
                            [ refs."definitions.refComplete", { _ | Dyn } ]
                        ]
                      | doc "Sets the `padding-right` CSS property."
                      | optional,
                    top
                      | std.contract.any_of
                        [
                          String,
                          std.contract.Sequence
                            [ refs."definitions.refComplete", { _ | Dyn } ]
                        ]
                      | doc "Sets the `padding-top` CSS property."
                      | optional,
                  }
                  | doc "Padding styles."
                  | optional,
              }
              | doc "Spacing styles."
              | optional,
            typography
              | {
                fontFamily
                  | std.contract.any_of
                    [
                      String,
                      std.contract.Sequence
                        [ refs."definitions.refComplete", { _ | Dyn } ]
                    ]
                  | doc "Sets the `font-family` CSS property."
                  | optional,
                fontSize
                  | std.contract.any_of
                    [
                      String,
                      std.contract.Sequence
                        [ refs."definitions.refComplete", { _ | Dyn } ]
                    ]
                  | doc "Sets the `font-size` CSS property."
                  | optional,
                fontStyle
                  | std.contract.any_of
                    [
                      String,
                      std.contract.Sequence
                        [ refs."definitions.refComplete", { _ | Dyn } ]
                    ]
                  | doc "Sets the `font-style` CSS property."
                  | optional,
                fontWeight
                  | std.contract.any_of
                    [
                      String,
                      std.contract.Sequence
                        [ refs."definitions.refComplete", { _ | Dyn } ]
                    ]
                  | doc "Sets the `font-weight` CSS property."
                  | optional,
                letterSpacing
                  | std.contract.any_of
                    [
                      String,
                      std.contract.Sequence
                        [ refs."definitions.refComplete", { _ | Dyn } ]
                    ]
                  | doc "Sets the `letter-spacing` CSS property."
                  | optional,
                lineHeight
                  | std.contract.any_of
                    [
                      String,
                      std.contract.Sequence
                        [ refs."definitions.refComplete", { _ | Dyn } ]
                    ]
                  | doc "Sets the `line-height` CSS property."
                  | optional,
                textAlign
                  | std.contract.any_of
                    [
                      String,
                      std.contract.Sequence
                        [ refs."definitions.refComplete", { _ | Dyn } ]
                    ]
                  | doc "Sets the `text-align` CSS property."
                  | optional,
                textColumns
                  | std.contract.any_of
                    [
                      String,
                      std.contract.Sequence
                        [ refs."definitions.refComplete", { _ | Dyn } ]
                    ]
                  | doc "Sets the `column-count` CSS property."
                  | optional,
                textDecoration
                  | std.contract.any_of
                    [
                      String,
                      std.contract.Sequence
                        [ refs."definitions.refComplete", { _ | Dyn } ]
                    ]
                  | doc "Sets the `text-decoration` CSS property."
                  | optional,
                textTransform
                  | std.contract.any_of
                    [
                      String,
                      std.contract.Sequence
                        [ refs."definitions.refComplete", { _ | Dyn } ]
                    ]
                  | doc "Sets the `text-transform` CSS property."
                  | optional,
                writingMode
                  | std.contract.any_of
                    [
                      String,
                      std.contract.Sequence
                        [ refs."definitions.refComplete", { _ | Dyn } ]
                    ]
                  | doc "Sets the `writing-mode` CSS property."
                  | optional,
              }
              | doc "Typography styles."
              | optional,
            ..
          },
      "definitions.stylesPropertiesAndElementsComplete" =
        std.contract.Sequence
            [
              refs."definitions.stylesProperties",
              js2n.record.PropertyNames
                (std.contract.any_of
                  [
                    std.contract.Sequence
                      [ refs."definitions.stylesPropertyNames", String ],
                    std.contract.Sequence
                      [ std.enum.TagOrString, [| 'variations, 'elements |] ]
                  ]),
              {
                elements
                  | refs."definitions.stylesElementsPropertiesComplete"
                  | { _ | Dyn }
                  | optional,
                variations
                  | refs."definitions.stylesVariationsPropertiesComplete"
                  | { _ | Dyn }
                  | optional,
                ..
              }
            ],
      "definitions.stylesPropertiesComplete" =
        std.contract.Sequence
            [
              refs."definitions.stylesProperties",
              js2n.record.PropertyNames
                (std.contract.Sequence
                  [ refs."definitions.stylesPropertyNames", String ])
            ],
      "definitions.stylesPropertyNames" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'typography,
                'spacing,
                'shadow,
                'outline,
                'filter,
                'dimensions,
                'css,
                'color,
                'border,
                'background
              |]
            ],
      "definitions.stylesVariationBlockPropertiesComplete" =
        std.contract.Sequence
            [
              refs."definitions.stylesProperties",
              js2n.record.PropertyNames
                (std.contract.any_of
                  [
                    std.contract.Sequence
                      [ refs."definitions.stylesPropertyNames", String ],
                    std.contract.Sequence
                      [ std.enum.TagOrString, [| 'elements |] ]
                  ]),
              {
                elements
                  | refs."definitions.stylesElementsPropertiesComplete"
                  | { _ | Dyn }
                  | optional,
                ..
              }
            ],
      "definitions.stylesVariationBlocksPropertiesComplete" =
        js2n.record.Record
            {
              additional = 'None,
              patterns =
                {
                    "^[a-z][a-z0-9-]*/[a-z][a-z0-9-]*$" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesVariationBlockPropertiesComplete",
                            { _ | Dyn }
                          ],
                  },
              properties =
                {
                    "core/archives" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesVariationBlockPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/audio" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesVariationBlockPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/avatar" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesVariationBlockPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/block" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesVariationBlockPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/button" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesVariationBlockPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/buttons" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesVariationBlockPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/calendar" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesVariationBlockPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/categories" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesVariationBlockPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/code" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesVariationBlockPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/column" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesVariationBlockPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/columns" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesVariationBlockPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/comment-author-avatar" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesVariationBlockPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/comment-author-name" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesVariationBlockPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/comment-content" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesVariationBlockPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/comment-date" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesVariationBlockPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/comment-edit-link" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesVariationBlockPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/comment-reply-link" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesVariationBlockPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/comment-template" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesVariationBlockPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/comments" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesVariationBlockPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/comments-pagination" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesVariationBlockPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/comments-pagination-next" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesVariationBlockPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/comments-pagination-numbers" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesVariationBlockPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/comments-pagination-previous" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesVariationBlockPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/comments-title" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesVariationBlockPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/cover" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesVariationBlockPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/details" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesVariationBlockPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/embed" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesVariationBlockPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/file" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesVariationBlockPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/footnotes" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesVariationBlockPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/freeform" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesVariationBlockPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/gallery" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesVariationBlockPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/group" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesVariationBlockPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/heading" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesVariationBlockPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/home-link" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesVariationBlockPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/html" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesVariationBlockPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/image" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesVariationBlockPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/latest-comments" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesVariationBlockPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/latest-posts" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesVariationBlockPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/legacy-widget" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesVariationBlockPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/list" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesVariationBlockPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/list-item" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesVariationBlockPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/loginout" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesVariationBlockPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/media-text" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesVariationBlockPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/missing" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesVariationBlockPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/more" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesVariationBlockPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/navigation" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesVariationBlockPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/navigation-link" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesVariationBlockPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/navigation-submenu" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesVariationBlockPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/nextpage" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesVariationBlockPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/page-list" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesVariationBlockPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/page-list-item" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesVariationBlockPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/paragraph" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesVariationBlockPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/post-author" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesVariationBlockPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/post-author-biography" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesVariationBlockPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/post-author-name" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesVariationBlockPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/post-comment" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesVariationBlockPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/post-comments-count" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesVariationBlockPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/post-comments-form" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesVariationBlockPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/post-comments-link" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesVariationBlockPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/post-content" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesVariationBlockPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/post-date" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesVariationBlockPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/post-excerpt" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesVariationBlockPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/post-featured-image" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesVariationBlockPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/post-navigation-link" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesVariationBlockPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/post-template" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesVariationBlockPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/post-terms" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesVariationBlockPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/post-title" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesVariationBlockPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/preformatted" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesVariationBlockPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/pullquote" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesVariationBlockPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/query" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesVariationBlockPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/query-no-results" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesVariationBlockPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/query-pagination" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesVariationBlockPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/query-pagination-next" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesVariationBlockPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/query-pagination-numbers" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesVariationBlockPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/query-pagination-previous" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesVariationBlockPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/query-title" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesVariationBlockPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/query-total" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesPropertiesAndElementsComplete",
                            { _ | Dyn }
                          ],
                    "core/quote" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesVariationBlockPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/read-more" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesVariationBlockPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/rss" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesVariationBlockPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/search" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesVariationBlockPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/separator" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesVariationBlockPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/shortcode" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesVariationBlockPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/site-logo" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesVariationBlockPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/site-tagline" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesVariationBlockPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/site-title" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesVariationBlockPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/social-link" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesVariationBlockPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/social-links" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesVariationBlockPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/spacer" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesVariationBlockPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/table" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesVariationBlockPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/tag-cloud" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesVariationBlockPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/template-part" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesVariationBlockPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/term-description" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesVariationBlockPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/text-columns" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesVariationBlockPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/verse" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesVariationBlockPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/video" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesVariationBlockPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/widget-area" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesVariationBlockPropertiesComplete",
                            { _ | Dyn }
                          ],
                    "core/widget-group" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesVariationBlockPropertiesComplete",
                            { _ | Dyn }
                          ],
                  },
              required = {},
            },
      "definitions.stylesVariationProperties" =
        std.contract.Sequence
            [
              refs."definitions.stylesProperties",
              js2n.record.PropertyNames
                (std.contract.any_of
                  [
                    std.contract.Sequence
                      [ refs."definitions.stylesPropertyNames", String ],
                    std.contract.Sequence
                      [ std.enum.TagOrString, [| 'blocks, 'elements |] ]
                  ]),
              {
                blocks
                  | refs."definitions.stylesVariationBlocksPropertiesComplete"
                  | { _ | Dyn }
                  | optional,
                elements
                  | refs."definitions.stylesElementsPropertiesComplete"
                  | { _ | Dyn }
                  | optional,
                ..
              }
            ],
      "definitions.stylesVariationPropertiesComplete" =
        std.contract.Sequence
            [
              refs."definitions.stylesProperties",
              js2n.record.PropertyNames
                (std.contract.any_of
                  [
                    std.contract.Sequence
                      [ refs."definitions.stylesPropertyNames", String ],
                    std.contract.Sequence
                      [ std.enum.TagOrString, [| 'blocks, 'elements |] ]
                  ]),
              {
                blocks
                  | refs."definitions.stylesVariationBlocksPropertiesComplete"
                  | { _ | Dyn }
                  | optional,
                elements
                  | refs."definitions.stylesElementsPropertiesComplete"
                  | { _ | Dyn }
                  | optional,
                ..
              }
            ],
      "definitions.stylesVariationsProperties" =
        js2n.record.Record
            {
              additional = 'Some Dyn,
              patterns =
                {
                    "^[a-z][a-z0-9-]*$" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesVariationProperties",
                            { _ | Dyn }
                          ],
                  },
              properties = {},
              required = {},
            },
      "definitions.stylesVariationsPropertiesComplete" =
        js2n.record.Record
            {
              additional = 'Some Dyn,
              patterns =
                {
                    "^[a-z][a-z0-9-]*$" =
                      std.contract.Sequence
                          [
                            refs."definitions.stylesVariationPropertiesComplete",
                            { _ | Dyn }
                          ],
                  },
              properties = {},
              required = {},
            },
    }
    in
  {
      "$schema" | String | doc "JSON schema URI for theme.json." | optional,
      blockTypes
        | Array String
        | doc "List of block types that can use the block style variation this theme.json file represents."
        | optional,
      customTemplates
        | Array
          {
            name
              | String
              | doc "Filename, without extension, of the template in the templates folder.",
            postTypes
              | Array String
              | doc "List of post types that can use this custom template."
              | optional,
            title | String | doc "Title of the template, translatable.",
          }
        | doc "Additional metadata for custom templates defined in the templates folder."
        | optional,
      description
        | String
        | doc "Description of the styles variation."
        | optional,
      patterns
        | Array String
        | doc "An array of pattern slugs to be registered from the Pattern Directory."
        | optional,
      settings
        | refs."definitions.settingsProperties"
        | js2n.record.PropertyNames
          (std.contract.any_of
            [
              refs."definitions.settingsPropertyNames",
              std.contract.Sequence
                [
                  std.enum.TagOrString,
                  [| 'blocks, 'useRootPaddingAwareAlignments |]
                ]
            ])
        | {
          blocks
            | refs."definitions.settingsBlocksPropertiesComplete"
            | optional,
          useRootPaddingAwareAlignments
            | Bool
            | doc m%"
              Enables root padding (the values from `styles.spacing.padding`) to be applied to the contents of full-width blocks instead of the root block.
              
              Please note that when using this setting, `styles.spacing.padding` should always be set as an object with `top`, `right`, `bottom`, `left` values declared separately.
            "%
            | optional,
          ..
        }
        | doc m%"
          Settings for the block editor and individual blocks. These include things like:
          - Which customization options should be available to the user. 
          - The default colors, font sizes... available to the user. 
          - CSS custom properties and class names used in styles.
          - And the default layout of the editor (widths and available alignments).
        "%
        | optional,
      slug
        | String
        | doc "Slug of the styles variation. If not defined, the kebab-case title will be used."
        | optional,
      styles
        | refs."definitions.stylesProperties"
        | js2n.record.PropertyNames
          (std.contract.any_of
            [
              refs."definitions.stylesPropertyNames",
              std.contract.Sequence
                [ std.enum.TagOrString, [| 'variations, 'blocks, 'elements |] ]
            ])
        | {
          blocks | refs."definitions.stylesBlocksPropertiesComplete" | optional,
          elements
            | refs."definitions.stylesElementsPropertiesComplete"
            | optional,
          variations | refs."definitions.stylesVariationsProperties" | optional,
          ..
        }
        | doc "Organized way to set CSS properties. Styles in the top-level will be added in the `body` selector."
        | optional,
      templateParts
        | Array
          {
            area
              | String
              | doc "The area the template part is used for. Block variations for `header` and `footer` values exist and will be used when the area is set to one of those."
              | optional,
            name
              | String
              | doc "Filename, without extension, of the template in the parts folder.",
            title
              | String
              | doc "Title of the template, translatable."
              | optional,
          }
        | doc "Additional metadata for template parts defined in the parts folder."
        | optional,
      title
        | String
        | doc "Title of the styles variation. If not defined, the file name will be used."
        | optional,
      version
        | std.number.Integer
        | std.contract.Equal 3
        | doc "Version of theme.json to use.",
    }