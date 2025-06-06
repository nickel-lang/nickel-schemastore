# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.css-beautify" = { _ | Dyn },
      "definitions.js-beautify" = { _ | Dyn },
    }
    in
  {
      "$schema" | String | optional,
      blank_line_after_tag | String | optional,
      blank_line_before_tag | String | optional,
      close_void_tags | Bool | optional,
      css | refs."definitions.css-beautify" | optional,
      custom_blocks | String | optional,
      custom_html | String | optional,
      exclude | String | optional,
      extend_exclude | String | optional,
      extension | String | optional,
      files | Array String | optional,
      format_attribute_template_tags | Bool | optional,
      format_css | Bool | optional,
      format_js | Bool | optional,
      ignore | String | optional,
      ignore_blocks | String | optional,
      ignore_case | Bool | optional,
      include | String | optional,
      indent | Number | optional,
      js | refs."definitions.js-beautify" | optional,
      line_break_after_multiline_tag | Bool | optional,
      linter_output_format | String | optional,
      max_attribute_length | Number | optional,
      max_blank_lines | Number | optional,
      max_line_length | Number | optional,
      no_function_formatting | Bool | optional,
      no_line_after_yaml | Bool | optional,
      no_set_formatting | Bool | optional,
      per-file-ignores | { _ | Dyn } | optional,
      preserve_blank_lines | Bool | optional,
      preserve_leading_space | Bool | optional,
      profile
        | std.enum.TagOrString
        | [|
          'angular,
          'golang,
          'handlebars,
          'nunjucks,
          'jinja,
          'django,
          'html
        |]
        | optional,
      require_pragma | Bool | optional,
      use_gitignore | Bool | optional,
    }