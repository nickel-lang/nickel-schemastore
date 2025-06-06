# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.CHJProperties" =
        {
            end_with_newline
              | Bool
              | doc "Ensure newline at end of file. [JS,CSS,HTML]"
              | optional,
            eol
              | String
              | doc "Character(s) to use as line terminators. [JS,CSS,HTML]"
              | optional,
            indent_char
              | js2n.string.MaxLength 1
              | doc "Indentation character. [JS,CSS,HTML]"
              | optional,
            indent_size
              | std.number.Integer
              | doc "Indent size. [JS,CSS,HTML]"
              | optional,
            indent_with_tabs
              | Bool
              | doc "Indent with tabs, overrides 'indent_size' and 'indent_char' [JS,CSS,HTML]"
              | optional,
            preserve_newlines
              | Bool
              | doc "Preserve line-breaks. [JS,CSS,HTML]"
              | optional,
            ..
          },
      "definitions.CProperties" =
        {
            newline_between_rules
              | Bool
              | doc "Add a newline between CSS rules. [CSS]"
              | optional,
            selector_separator_newline
              | Bool
              | doc "Add a newline between multiple selectors. [CSS]"
              | optional,
            space_around_combinator
              | Bool
              | doc "Ensure space around selector separators (>+~). [CSS]"
              | optional,
            space_around_selector_separator
              | Bool
              | doc "(Deprecated: use space_around_combinator) [CSS]"
              | optional,
            ..
          },
      "definitions.HJProperties" =
        {
            brace_style
              | std.enum.TagOrString
              | [|
                '"none,preserve-inline",
                '"end-expand,preserve-inline",
                '"expand,preserve-inline",
                '"collapse,preserve-inline",
                'none,
                'end-expand,
                'expand,
                'collapse
              |]
              | doc "[collapse|expand|end-expand|none][,preserve-inline]  [JS,HTML]"
              | optional,
            max_preserve_newlines
              | std.number.Integer
              | doc "Number of line-breaks to be preserved in one chunk. [JS,HTML]"
              | optional,
            wrap_line_length
              | std.number.Integer
              | doc "Wrap lines at next opportunity after N characters. [JS,HTML]"
              | optional,
            ..
          },
      "definitions.HProperties" =
        {
            content_unformatted
              | Array String
              | doc "List of tags whose content should not be reformatted. [HTML]"
              | optional,
            extra_liners
              | Array String
              | doc "List of tags that should have an extra newline before them. [HTML]"
              | optional,
            indent_body_inner_html
              | Bool
              | doc "Indent elements within html <body> element. [HTML]"
              | optional,
            indent_handlebars
              | Bool
              | doc "format and indent {{#foo}} and {{/foo}}. [HTML]"
              | optional,
            indent_head_inner_html
              | Bool
              | doc "Indent elements within html <head> element. [HTML]"
              | optional,
            indent_inner_html
              | Bool
              | doc "Indent <head> and <body> sections. [HTML]"
              | optional,
            indent_scripts
              | std.enum.TagOrString
              | [| 'normal, 'separate, 'keep |]
              | doc "[keep|separate|normal] [HTML]"
              | optional,
            unformatted
              | Array String
              | doc "List of tags that should not be reformatted. [HTML]"
              | optional,
            void_elements
              | Array String
              | doc "HTLM void elements - aka self-closing tags. [HTML]"
              | optional,
            wrap_attributes
              | std.enum.TagOrString
              | [| 'force-expand-multiline, 'force-aligned, '"force", 'auto |]
              | doc "Wrap attributes to new lines. [HTML]"
              | optional,
            wrap_attributes_indent_size
              | Number
              | doc "Indent wrapped attributes to after N characters. Defaults to 'indent_size'. [HTML]"
              | optional,
            ..
          },
      "definitions.JProperties" =
        {
            break_chained_methods
              | Bool
              | doc "Break chained method calls across subsequent lines. [JS]"
              | optional,
            comma_first
              | Bool
              | doc "Put commas at the beginning of new line instead of end. [JS]"
              | optional,
            e4x
              | Bool
              | doc "Pass E4X xml literals through untouched. [JS]"
              | optional,
            indent_level
              | std.number.Integer
              | doc "Initial indentation level. [JS]"
              | optional,
            jslint_happy
              | Bool
              | doc "Enable jslint-stricter mode. (Forces 'space_after_anon_function') [JS]"
              | optional,
            keep_array_indentation
              | Bool
              | doc "Preserve array indentation. [JS]"
              | optional,
            keep_function_indentation
              | Bool
              | doc "Preserve function indentation. [JS]"
              | optional,
            operator_position
              | std.enum.TagOrString
              | [| 'preserve-newline, 'after-newline, 'before-newline |]
              | doc "Move operators to before or after a new line, or keep as is. [JS]"
              | optional,
            space_after_anon_function
              | Bool
              | doc "Add a space before an anonymous function's parens, ie. function (). [JS]"
              | optional,
            space_before_conditional
              | Bool
              | doc "Ensure a space before conditional statement. [JS]"
              | optional,
            space_in_empty_paren
              | Bool
              | doc "Leave space in empty parentheses, ie. f( ). [JS]"
              | optional,
            space_in_paren
              | Bool
              | doc "Add padding spaces within parentheses, ie. f( a, b ). [JS]"
              | optional,
            unescape_strings
              | Bool
              | doc "Decode printable characters encoded in xNN notation. [JS]"
              | optional,
            unindent_chained_methods
              | Bool
              | doc "Unindent chained methods. [JS]"
              | optional,
            ..
          },
    }
    in
  std.contract.Sequence
      [
        refs."definitions.CHJProperties",
        refs."definitions.HJProperties",
        refs."definitions.CProperties",
        refs."definitions.HProperties",
        refs."definitions.JProperties"
      ]