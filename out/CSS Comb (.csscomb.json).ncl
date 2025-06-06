# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      always-semicolon
        | Bool
        | doc m%"
          Whether to add missing semicolon in the current project
          https://github.com/csscomb/csscomb.js/blob/dev/doc/configuration.md#create-custom-config
        "%
        | optional,
      block-indent
        | String
        | doc m%"
          A block indent style in the current project
          https://github.com/csscomb/csscomb.js/blob/dev/doc/configuration.md#create-custom-config
        "%
        | optional,
      color-case
        | std.enum.TagOrString
        | [| 'upper, 'lower |]
        | doc m%"
          A hexadecimal color style in the current project
          https://github.com/csscomb/csscomb.js/blob/dev/doc/configuration.md#create-custom-config
        "%
        | optional,
      color-shorthand
        | Bool
        | doc m%"
          Whether to expand hexadecimal color or use shorthand in the current project
          https://github.com/csscomb/csscomb.js/blob/dev/doc/configuration.md#create-custom-config
        "%
        | optional,
      element-case
        | std.enum.TagOrString
        | [| 'upper, 'lower |]
        | doc m%"
          Whether to unify case of element selector in the current project
          https://github.com/csscomb/csscomb.js/blob/dev/doc/configuration.md#create-custom-config
        "%
        | optional,
      eof-newline
        | Bool
        | doc m%"
          Whether to add a trailing line break in the current project
          https://github.com/csscomb/csscomb.js/blob/dev/doc/configuration.md#create-custom-config
        "%
        | optional,
      exclude
        | js2n.array.UniqueItems
        | Array (js2n.string.MinLength 1)
        | doc m%"
          A list of files to ignore in the current project
          https://github.com/csscomb/csscomb.js/blob/dev/doc/configuration.md#create-custom-config
        "%
        | optional,
      leading-zero
        | Bool
        | doc m%"
          Whether to add leading zero in a dimension in the current project
          https://github.com/csscomb/csscomb.js/blob/dev/doc/configuration.md#create-custom-config
        "%
        | optional,
      quotes
        | std.enum.TagOrString
        | [| 'double, 'single |]
        | doc m%"
          A quote style in the current project
          https://github.com/csscomb/csscomb.js/blob/dev/doc/configuration.md#create-custom-config
        "%
        | optional,
      remove-empty-rulesets
        | Bool
        | doc m%"
          Whether to remove empty rulesets
          https://github.com/csscomb/csscomb.js/blob/dev/doc/configuration.md#create-custom-config
        "%
        | optional,
      sort-order
        | Array (Array String)
        | doc m%"
          A sort order in the current project
          https://github.com/csscomb/csscomb.js/blob/dev/doc/configuration.md#create-custom-config
        "%
        | optional,
      sort-order-fallback
        | String
        | doc m%"
          A sort style of unknown properties in the current project
          https://github.com/csscomb/csscomb.js/blob/dev/doc/configuration.md#create-custom-config
        "%
        | optional,
      space-after-closing-brace
        | String
        | doc m%"
          A space style after a closing brace in the current project
          https://github.com/csscomb/csscomb.js/blob/dev/doc/configuration.md#create-custom-config
        "%
        | optional,
      space-after-colon
        | String
        | doc m%"
          A space style after a colon in the current project
          https://github.com/csscomb/csscomb.js/blob/dev/doc/configuration.md#create-custom-config
        "%
        | optional,
      space-after-combinator
        | String
        | doc m%"
          A space style after a combinator in the current project
          https://github.com/csscomb/csscomb.js/blob/dev/doc/configuration.md#create-custom-config
        "%
        | optional,
      space-after-opening-brace
        | String
        | doc m%"
          A space style after an opening brace in the current project
          https://github.com/csscomb/csscomb.js/blob/dev/doc/configuration.md#create-custom-config
        "%
        | optional,
      space-after-selector-delimiter
        | String
        | doc m%"
          A space style after a selector delimiter in the current project
          https://github.com/csscomb/csscomb.js/blob/dev/doc/configuration.md#create-custom-config
        "%
        | optional,
      space-before-colon
        | String
        | doc m%"
          A space style before a colon in the current project
          https://github.com/csscomb/csscomb.js/blob/dev/doc/configuration.md#create-custom-config
        "%
        | optional,
      space-before-combinator
        | String
        | doc m%"
          A space style before a combinator in the current project
          https://github.com/csscomb/csscomb.js/blob/dev/doc/configuration.md#create-custom-config
        "%
        | optional,
      space-before-opening-brace
        | String
        | doc m%"
          A space style before an opening brace in the current project
          https://github.com/csscomb/csscomb.js/blob/dev/doc/configuration.md#create-custom-config
        "%
        | optional,
      space-before-selector-delimiter
        | String
        | doc m%"
          A space style before a selector delimiter in the current project
          https://github.com/csscomb/csscomb.js/blob/dev/doc/configuration.md#create-custom-config
        "%
        | optional,
      space-between-declarations
        | String
        | doc m%"
          A space style between declarations in the current project
          https://github.com/csscomb/csscomb.js/blob/dev/doc/configuration.md#create-custom-config
        "%
        | optional,
      strip-spaces
        | Bool
        | doc m%"
          Whether to trim trailing space in the current project
          https://github.com/csscomb/csscomb.js/blob/dev/doc/configuration.md#create-custom-config
        "%
        | optional,
      tab-size | Bool | optional,
      unitless-zero
        | Bool
        | doc m%"
          Whether to remove unit in zero-valued dimension in the current project
          https://github.com/csscomb/csscomb.js/blob/dev/doc/configuration.md#create-custom-config
        "%
        | optional,
      vendor-prefix-align
        | Bool
        | doc m%"
          Whether to align prefix in property and value in the current project
          https://github.com/csscomb/csscomb.js/blob/dev/doc/configuration.md#create-custom-config
        "%
        | optional,
      verbose | Bool | optional,
      ..
    }