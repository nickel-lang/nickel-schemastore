# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.css" =
        {
            customMedia | Bool | optional,
            customProperty | Bool | optional,
            element | String | optional,
            enabled | Bool | optional,
            path | String | optional,
          },
      "definitions.drupal" = { breakpointsPath | String, themeName | String, },
      "definitions.drupal-breakpoints-css" =
        {
            css | refs."definitions.css" | { _ | Dyn } | optional,
            drupal | refs."definitions.drupal" | { _ | Dyn },
            js | refs."definitions.js" | { _ | Dyn } | optional,
            options | refs."definitions.options" | { _ | Dyn } | optional,
            prettier | refs."definitions.prettier" | { _ | Dyn } | optional,
          },
      "definitions.js" =
        {
            enabled | Bool | optional,
            path | String | optional,
            type | std.enum.TagOrString | [| 'commonjs, 'module |] | optional,
          },
      "definitions.options" =
        {
            maxWidth | Bool | optional,
            mediaQuery | Bool | optional,
            minWidth | Bool | optional,
            resolution | Bool | optional,
          },
      "definitions.prettier" = { configPath | String | optional, },
    }
    in
  refs."definitions.drupal-breakpoints-css"