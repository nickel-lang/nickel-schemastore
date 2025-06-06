# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  js2n.record.Record
      {
        additional = 'Some (std.contract.any_of [ Bool, { _ | Dyn } ]),
        patterns = {},
        properties =
          {
              "$schema" = String,
              MD001 = Bool,
              MD003 =
                std.contract.any_of
                    [
                      Bool,
                      {
                        style
                          | std.enum.TagOrString
                          | [|
                            'setext_with_atx_closed,
                            'setext_with_atx,
                            'setext,
                            'atx_closed,
                            'atx,
                            'consistent
                          |]
                          | doc "Heading style"
                          | optional,
                      }
                    ],
              MD004 =
                std.contract.any_of
                    [
                      Bool,
                      {
                        style
                          | std.enum.TagOrString
                          | [| 'sublist, 'dash, 'plus, 'asterisk, 'consistent |]
                          | doc "List style"
                          | optional,
                      }
                    ],
              MD005 = Bool,
              MD007 =
                std.contract.any_of
                    [
                      Bool,
                      {
                        indent
                          | std.number.Integer
                          | js2n.number.Minimum 1
                          | doc "Spaces for indent"
                          | optional,
                        start_indent
                          | std.number.Integer
                          | js2n.number.Minimum 1
                          | doc "Spaces for first level indent (when start_indented is set)"
                          | optional,
                        start_indented
                          | Bool
                          | doc "Whether to indent the first level of the list"
                          | optional,
                      }
                    ],
              MD009 =
                std.contract.any_of
                    [
                      Bool,
                      {
                        br_spaces
                          | std.number.Integer
                          | js2n.number.Minimum 0
                          | doc "Spaces for line break"
                          | optional,
                        list_item_empty_lines
                          | Bool
                          | doc "Allow spaces for empty lines in list items"
                          | optional,
                        strict
                          | Bool
                          | doc "Include unnecessary breaks"
                          | optional,
                      }
                    ],
              MD010 =
                std.contract.any_of
                    [
                      Bool,
                      {
                        code_blocks
                          | Bool
                          | doc "Include code blocks"
                          | optional,
                        ignore_code_languages
                          | Array String
                          | doc "Fenced code languages to ignore"
                          | optional,
                        spaces_per_tab
                          | std.number.Integer
                          | js2n.number.Minimum 0
                          | doc "Number of spaces for each hard tab"
                          | optional,
                      }
                    ],
              MD011 = Bool,
              MD012 =
                std.contract.any_of
                    [
                      Bool,
                      {
                        maximum
                          | std.number.Integer
                          | js2n.number.Minimum 1
                          | doc "Consecutive blank lines"
                          | optional,
                      }
                    ],
              MD013 =
                std.contract.any_of
                    [
                      Bool,
                      {
                        code_block_line_length
                          | std.number.Integer
                          | js2n.number.Minimum 1
                          | doc "Number of characters for code blocks"
                          | optional,
                        code_blocks
                          | Bool
                          | doc "Include code blocks"
                          | optional,
                        heading_line_length
                          | std.number.Integer
                          | js2n.number.Minimum 1
                          | doc "Number of characters for headings"
                          | optional,
                        headings | Bool | doc "Include headings" | optional,
                        line_length
                          | std.number.Integer
                          | js2n.number.Minimum 1
                          | doc "Number of characters"
                          | optional,
                        stern | Bool | doc "Stern length checking" | optional,
                        strict | Bool | doc "Strict length checking" | optional,
                        tables | Bool | doc "Include tables" | optional,
                      }
                    ],
              MD014 = Bool,
              MD018 = Bool,
              MD019 = Bool,
              MD020 = Bool,
              MD021 = Bool,
              MD022 =
                std.contract.any_of
                    [
                      Bool,
                      {
                        lines_above
                          | std.contract.any_of
                            [
                              std.contract.Sequence
                                [
                                  std.number.Integer,
                                  js2n.number.Minimum (-1)
                                ],
                              Array std.number.Integer
                            ]
                          | doc "Blank lines above heading"
                          | optional,
                        lines_below
                          | std.contract.any_of
                            [
                              std.contract.Sequence
                                [
                                  std.number.Integer,
                                  js2n.number.Minimum (-1)
                                ],
                              Array std.number.Integer
                            ]
                          | doc "Blank lines below heading"
                          | optional,
                      }
                    ],
              MD023 = Bool,
              MD024 =
                std.contract.any_of
                    [
                      Bool,
                      {
                        siblings_only
                          | Bool
                          | doc "Only check sibling headings"
                          | optional,
                      }
                    ],
              MD025 =
                std.contract.any_of
                    [
                      Bool,
                      {
                        front_matter_title
                          | String
                          | doc "RegExp for matching title in front matter"
                          | optional,
                        level
                          | std.number.Integer
                          | js2n.number.Maximum 6
                          | js2n.number.Minimum 1
                          | doc "Heading level"
                          | optional,
                      }
                    ],
              MD026 =
                std.contract.any_of
                    [
                      Bool,
                      {
                        punctuation
                          | String
                          | doc "Punctuation characters"
                          | optional,
                      }
                    ],
              MD027 =
                std.contract.any_of
                    [
                      Bool,
                      {
                        list_items | Bool | doc "Include list items" | optional,
                      }
                    ],
              MD028 = Bool,
              MD029 =
                std.contract.any_of
                    [
                      Bool,
                      {
                        style
                          | std.enum.TagOrString
                          | [| 'zero, 'one_or_ordered, 'ordered, 'one |]
                          | doc "List style"
                          | optional,
                      }
                    ],
              MD030 =
                std.contract.any_of
                    [
                      Bool,
                      {
                        ol_multi
                          | std.number.Integer
                          | js2n.number.Minimum 1
                          | doc "Spaces for multi-line ordered list items"
                          | optional,
                        ol_single
                          | std.number.Integer
                          | js2n.number.Minimum 1
                          | doc "Spaces for single-line ordered list items"
                          | optional,
                        ul_multi
                          | std.number.Integer
                          | js2n.number.Minimum 1
                          | doc "Spaces for multi-line unordered list items"
                          | optional,
                        ul_single
                          | std.number.Integer
                          | js2n.number.Minimum 1
                          | doc "Spaces for single-line unordered list items"
                          | optional,
                      }
                    ],
              MD031 =
                std.contract.any_of
                    [
                      Bool,
                      {
                        list_items | Bool | doc "Include list items" | optional,
                      }
                    ],
              MD032 = Bool,
              MD033 =
                std.contract.any_of
                    [
                      Bool,
                      {
                        allowed_elements
                          | Array String
                          | doc "Allowed elements"
                          | optional,
                      }
                    ],
              MD034 = Bool,
              MD035 =
                std.contract.any_of
                    [
                      Bool,
                      {
                        style | String | doc "Horizontal rule style" | optional,
                      }
                    ],
              MD036 =
                std.contract.any_of
                    [
                      Bool,
                      {
                        punctuation
                          | String
                          | doc "Punctuation characters"
                          | optional,
                      }
                    ],
              MD037 = Bool,
              MD038 = Bool,
              MD039 = Bool,
              MD040 =
                std.contract.any_of
                    [
                      Bool,
                      {
                        allowed_languages
                          | Array String
                          | doc "List of languages"
                          | optional,
                        language_only
                          | Bool
                          | doc "Require language only"
                          | optional,
                      }
                    ],
              MD041 =
                std.contract.any_of
                    [
                      Bool,
                      {
                        allow_preamble
                          | Bool
                          | doc "Allow content before first heading"
                          | optional,
                        front_matter_title
                          | String
                          | doc "RegExp for matching title in front matter"
                          | optional,
                        level
                          | std.number.Integer
                          | js2n.number.Maximum 6
                          | js2n.number.Minimum 1
                          | doc "Heading level"
                          | optional,
                      }
                    ],
              MD042 = Bool,
              MD043 =
                std.contract.any_of
                    [
                      Bool,
                      {
                        headings
                          | Array (
                            js2n.string.Matches
                              "^(\\*|\\+|\\?|#{1,6}\\s+\\S.*)$"
                          )
                          | doc "List of headings"
                          | optional,
                        match_case
                          | Bool
                          | doc "Match case of headings"
                          | optional,
                      }
                    ],
              MD044 =
                std.contract.any_of
                    [
                      Bool,
                      {
                        code_blocks
                          | Bool
                          | doc "Include code blocks"
                          | optional,
                        html_elements
                          | Bool
                          | doc "Include HTML elements"
                          | optional,
                        names
                          | Array String
                          | doc "List of proper names"
                          | optional,
                      }
                    ],
              MD045 = Bool,
              MD046 =
                std.contract.any_of
                    [
                      Bool,
                      {
                        style
                          | std.enum.TagOrString
                          | [| 'indented, 'fenced, 'consistent |]
                          | doc "Block style"
                          | optional,
                      }
                    ],
              MD047 = Bool,
              MD048 =
                std.contract.any_of
                    [
                      Bool,
                      {
                        style
                          | std.enum.TagOrString
                          | [| 'tilde, 'backtick, 'consistent |]
                          | doc "Code fence style"
                          | optional,
                      }
                    ],
              MD049 =
                std.contract.any_of
                    [
                      Bool,
                      {
                        style
                          | std.enum.TagOrString
                          | [| 'underscore, 'asterisk, 'consistent |]
                          | doc "Emphasis style"
                          | optional,
                      }
                    ],
              MD050 =
                std.contract.any_of
                    [
                      Bool,
                      {
                        style
                          | std.enum.TagOrString
                          | [| 'underscore, 'asterisk, 'consistent |]
                          | doc "Strong style"
                          | optional,
                      }
                    ],
              MD051 =
                std.contract.any_of
                    [
                      Bool,
                      {
                        ignore_case
                          | Bool
                          | doc "Ignore case of fragments"
                          | optional,
                        ignored_pattern
                          | String
                          | doc "Pattern for ignoring additional fragments"
                          | optional,
                      }
                    ],
              MD052 =
                std.contract.any_of
                    [
                      Bool,
                      {
                        ignored_labels
                          | Array String
                          | doc "Ignored link labels"
                          | optional,
                        shortcut_syntax
                          | Bool
                          | doc "Include shortcut syntax"
                          | optional,
                      }
                    ],
              MD053 =
                std.contract.any_of
                    [
                      Bool,
                      {
                        ignored_definitions
                          | Array String
                          | doc "Ignored definitions"
                          | optional,
                      }
                    ],
              MD054 =
                std.contract.any_of
                    [
                      Bool,
                      {
                        autolink | Bool | doc "Allow autolinks" | optional,
                        collapsed
                          | Bool
                          | doc "Allow collapsed reference links and images"
                          | optional,
                        full
                          | Bool
                          | doc "Allow full reference links and images"
                          | optional,
                        inline
                          | Bool
                          | doc "Allow inline links and images"
                          | optional,
                        shortcut
                          | Bool
                          | doc "Allow shortcut reference links and images"
                          | optional,
                        url_inline
                          | Bool
                          | doc "Allow URLs as inline links"
                          | optional,
                      }
                    ],
              MD055 =
                std.contract.any_of
                    [
                      Bool,
                      {
                        style
                          | std.enum.TagOrString
                          | [|
                            'no_leading_or_trailing,
                            'leading_and_trailing,
                            'trailing_only,
                            'leading_only,
                            'consistent
                          |]
                          | doc "Table pipe style"
                          | optional,
                      }
                    ],
              MD056 = Bool,
              MD058 = Bool,
              MD059 =
                std.contract.any_of
                    [
                      Bool,
                      {
                        prohibited_texts
                          | Array String
                          | doc "Prohibited link texts"
                          | optional,
                      }
                    ],
              accessibility = Bool,
              atx = Bool,
              atx_closed = Bool,
              blank_lines = Bool,
              blanks-around-fences =
                std.contract.any_of
                    [
                      Bool,
                      {
                        list_items | Bool | doc "Include list items" | optional,
                      }
                    ],
              blanks-around-headings =
                std.contract.any_of
                    [
                      Bool,
                      {
                        lines_above
                          | std.contract.any_of
                            [
                              std.contract.Sequence
                                [
                                  std.number.Integer,
                                  js2n.number.Minimum (-1)
                                ],
                              Array std.number.Integer
                            ]
                          | doc "Blank lines above heading"
                          | optional,
                        lines_below
                          | std.contract.any_of
                            [
                              std.contract.Sequence
                                [
                                  std.number.Integer,
                                  js2n.number.Minimum (-1)
                                ],
                              Array std.number.Integer
                            ]
                          | doc "Blank lines below heading"
                          | optional,
                      }
                    ],
              blanks-around-lists = Bool,
              blanks-around-tables = Bool,
              blockquote = Bool,
              bullet = Bool,
              code = Bool,
              code-block-style =
                std.contract.any_of
                    [
                      Bool,
                      {
                        style
                          | std.enum.TagOrString
                          | [| 'indented, 'fenced, 'consistent |]
                          | doc "Block style"
                          | optional,
                      }
                    ],
              code-fence-style =
                std.contract.any_of
                    [
                      Bool,
                      {
                        style
                          | std.enum.TagOrString
                          | [| 'tilde, 'backtick, 'consistent |]
                          | doc "Code fence style"
                          | optional,
                      }
                    ],
              commands-show-output = Bool,
              "default" = Bool,
              descriptive-link-text =
                std.contract.any_of
                    [
                      Bool,
                      {
                        prohibited_texts
                          | Array String
                          | doc "Prohibited link texts"
                          | optional,
                      }
                    ],
              emphasis = Bool,
              emphasis-style =
                std.contract.any_of
                    [
                      Bool,
                      {
                        style
                          | std.enum.TagOrString
                          | [| 'underscore, 'asterisk, 'consistent |]
                          | doc "Emphasis style"
                          | optional,
                      }
                    ],
              extends = js2n.Nullable String,
              fenced-code-language =
                std.contract.any_of
                    [
                      Bool,
                      {
                        allowed_languages
                          | Array String
                          | doc "List of languages"
                          | optional,
                        language_only
                          | Bool
                          | doc "Require language only"
                          | optional,
                      }
                    ],
              first-line-h1 =
                std.contract.any_of
                    [
                      Bool,
                      {
                        allow_preamble
                          | Bool
                          | doc "Allow content before first heading"
                          | optional,
                        front_matter_title
                          | String
                          | doc "RegExp for matching title in front matter"
                          | optional,
                        level
                          | std.number.Integer
                          | js2n.number.Maximum 6
                          | js2n.number.Minimum 1
                          | doc "Heading level"
                          | optional,
                      }
                    ],
              first-line-heading =
                std.contract.any_of
                    [
                      Bool,
                      {
                        allow_preamble
                          | Bool
                          | doc "Allow content before first heading"
                          | optional,
                        front_matter_title
                          | String
                          | doc "RegExp for matching title in front matter"
                          | optional,
                        level
                          | std.number.Integer
                          | js2n.number.Maximum 6
                          | js2n.number.Minimum 1
                          | doc "Heading level"
                          | optional,
                      }
                    ],
              hard_tab = Bool,
              heading-increment = Bool,
              heading-start-left = Bool,
              heading-style =
                std.contract.any_of
                    [
                      Bool,
                      {
                        style
                          | std.enum.TagOrString
                          | [|
                            'setext_with_atx_closed,
                            'setext_with_atx,
                            'setext,
                            'atx_closed,
                            'atx,
                            'consistent
                          |]
                          | doc "Heading style"
                          | optional,
                      }
                    ],
              headings = Bool,
              hr = Bool,
              hr-style =
                std.contract.any_of
                    [
                      Bool,
                      {
                        style | String | doc "Horizontal rule style" | optional,
                      }
                    ],
              html = Bool,
              images = Bool,
              indentation = Bool,
              language = Bool,
              line-length =
                std.contract.any_of
                    [
                      Bool,
                      {
                        code_block_line_length
                          | std.number.Integer
                          | js2n.number.Minimum 1
                          | doc "Number of characters for code blocks"
                          | optional,
                        code_blocks
                          | Bool
                          | doc "Include code blocks"
                          | optional,
                        heading_line_length
                          | std.number.Integer
                          | js2n.number.Minimum 1
                          | doc "Number of characters for headings"
                          | optional,
                        headings | Bool | doc "Include headings" | optional,
                        line_length
                          | std.number.Integer
                          | js2n.number.Minimum 1
                          | doc "Number of characters"
                          | optional,
                        stern | Bool | doc "Stern length checking" | optional,
                        strict | Bool | doc "Strict length checking" | optional,
                        tables | Bool | doc "Include tables" | optional,
                      }
                    ],
              line_length = Bool,
              link-fragments =
                std.contract.any_of
                    [
                      Bool,
                      {
                        ignore_case
                          | Bool
                          | doc "Ignore case of fragments"
                          | optional,
                        ignored_pattern
                          | String
                          | doc "Pattern for ignoring additional fragments"
                          | optional,
                      }
                    ],
              link-image-reference-definitions =
                std.contract.any_of
                    [
                      Bool,
                      {
                        ignored_definitions
                          | Array String
                          | doc "Ignored definitions"
                          | optional,
                      }
                    ],
              link-image-style =
                std.contract.any_of
                    [
                      Bool,
                      {
                        autolink | Bool | doc "Allow autolinks" | optional,
                        collapsed
                          | Bool
                          | doc "Allow collapsed reference links and images"
                          | optional,
                        full
                          | Bool
                          | doc "Allow full reference links and images"
                          | optional,
                        inline
                          | Bool
                          | doc "Allow inline links and images"
                          | optional,
                        shortcut
                          | Bool
                          | doc "Allow shortcut reference links and images"
                          | optional,
                        url_inline
                          | Bool
                          | doc "Allow URLs as inline links"
                          | optional,
                      }
                    ],
              links = Bool,
              list-indent = Bool,
              list-marker-space =
                std.contract.any_of
                    [
                      Bool,
                      {
                        ol_multi
                          | std.number.Integer
                          | js2n.number.Minimum 1
                          | doc "Spaces for multi-line ordered list items"
                          | optional,
                        ol_single
                          | std.number.Integer
                          | js2n.number.Minimum 1
                          | doc "Spaces for single-line ordered list items"
                          | optional,
                        ul_multi
                          | std.number.Integer
                          | js2n.number.Minimum 1
                          | doc "Spaces for multi-line unordered list items"
                          | optional,
                        ul_single
                          | std.number.Integer
                          | js2n.number.Minimum 1
                          | doc "Spaces for single-line unordered list items"
                          | optional,
                      }
                    ],
              no-alt-text = Bool,
              no-bare-urls = Bool,
              no-blanks-blockquote = Bool,
              no-duplicate-heading =
                std.contract.any_of
                    [
                      Bool,
                      {
                        siblings_only
                          | Bool
                          | doc "Only check sibling headings"
                          | optional,
                      }
                    ],
              no-emphasis-as-heading =
                std.contract.any_of
                    [
                      Bool,
                      {
                        punctuation
                          | String
                          | doc "Punctuation characters"
                          | optional,
                      }
                    ],
              no-empty-links = Bool,
              no-hard-tabs =
                std.contract.any_of
                    [
                      Bool,
                      {
                        code_blocks
                          | Bool
                          | doc "Include code blocks"
                          | optional,
                        ignore_code_languages
                          | Array String
                          | doc "Fenced code languages to ignore"
                          | optional,
                        spaces_per_tab
                          | std.number.Integer
                          | js2n.number.Minimum 0
                          | doc "Number of spaces for each hard tab"
                          | optional,
                      }
                    ],
              no-inline-html =
                std.contract.any_of
                    [
                      Bool,
                      {
                        allowed_elements
                          | Array String
                          | doc "Allowed elements"
                          | optional,
                      }
                    ],
              no-missing-space-atx = Bool,
              no-missing-space-closed-atx = Bool,
              no-multiple-blanks =
                std.contract.any_of
                    [
                      Bool,
                      {
                        maximum
                          | std.number.Integer
                          | js2n.number.Minimum 1
                          | doc "Consecutive blank lines"
                          | optional,
                      }
                    ],
              no-multiple-space-atx = Bool,
              no-multiple-space-blockquote =
                std.contract.any_of
                    [
                      Bool,
                      {
                        list_items | Bool | doc "Include list items" | optional,
                      }
                    ],
              no-multiple-space-closed-atx = Bool,
              no-reversed-links = Bool,
              no-space-in-code = Bool,
              no-space-in-emphasis = Bool,
              no-space-in-links = Bool,
              no-trailing-punctuation =
                std.contract.any_of
                    [
                      Bool,
                      {
                        punctuation
                          | String
                          | doc "Punctuation characters"
                          | optional,
                      }
                    ],
              no-trailing-spaces =
                std.contract.any_of
                    [
                      Bool,
                      {
                        br_spaces
                          | std.number.Integer
                          | js2n.number.Minimum 0
                          | doc "Spaces for line break"
                          | optional,
                        list_item_empty_lines
                          | Bool
                          | doc "Allow spaces for empty lines in list items"
                          | optional,
                        strict
                          | Bool
                          | doc "Include unnecessary breaks"
                          | optional,
                      }
                    ],
              ol = Bool,
              ol-prefix =
                std.contract.any_of
                    [
                      Bool,
                      {
                        style
                          | std.enum.TagOrString
                          | [| 'zero, 'one_or_ordered, 'ordered, 'one |]
                          | doc "List style"
                          | optional,
                      }
                    ],
              proper-names =
                std.contract.any_of
                    [
                      Bool,
                      {
                        code_blocks
                          | Bool
                          | doc "Include code blocks"
                          | optional,
                        html_elements
                          | Bool
                          | doc "Include HTML elements"
                          | optional,
                        names
                          | Array String
                          | doc "List of proper names"
                          | optional,
                      }
                    ],
              reference-links-images =
                std.contract.any_of
                    [
                      Bool,
                      {
                        ignored_labels
                          | Array String
                          | doc "Ignored link labels"
                          | optional,
                        shortcut_syntax
                          | Bool
                          | doc "Include shortcut syntax"
                          | optional,
                      }
                    ],
              required-headings =
                std.contract.any_of
                    [
                      Bool,
                      {
                        headings
                          | Array (
                            js2n.string.Matches
                              "^(\\*|\\+|\\?|#{1,6}\\s+\\S.*)$"
                          )
                          | doc "List of headings"
                          | optional,
                        match_case
                          | Bool
                          | doc "Match case of headings"
                          | optional,
                      }
                    ],
              single-h1 =
                std.contract.any_of
                    [
                      Bool,
                      {
                        front_matter_title
                          | String
                          | doc "RegExp for matching title in front matter"
                          | optional,
                        level
                          | std.number.Integer
                          | js2n.number.Maximum 6
                          | js2n.number.Minimum 1
                          | doc "Heading level"
                          | optional,
                      }
                    ],
              single-title =
                std.contract.any_of
                    [
                      Bool,
                      {
                        front_matter_title
                          | String
                          | doc "RegExp for matching title in front matter"
                          | optional,
                        level
                          | std.number.Integer
                          | js2n.number.Maximum 6
                          | js2n.number.Minimum 1
                          | doc "Heading level"
                          | optional,
                      }
                    ],
              single-trailing-newline = Bool,
              spaces = Bool,
              spelling = Bool,
              strong-style =
                std.contract.any_of
                    [
                      Bool,
                      {
                        style
                          | std.enum.TagOrString
                          | [| 'underscore, 'asterisk, 'consistent |]
                          | doc "Strong style"
                          | optional,
                      }
                    ],
              table = Bool,
              table-column-count = Bool,
              table-pipe-style =
                std.contract.any_of
                    [
                      Bool,
                      {
                        style
                          | std.enum.TagOrString
                          | [|
                            'no_leading_or_trailing,
                            'leading_and_trailing,
                            'trailing_only,
                            'leading_only,
                            'consistent
                          |]
                          | doc "Table pipe style"
                          | optional,
                      }
                    ],
              ul = Bool,
              ul-indent =
                std.contract.any_of
                    [
                      Bool,
                      {
                        indent
                          | std.number.Integer
                          | js2n.number.Minimum 1
                          | doc "Spaces for indent"
                          | optional,
                        start_indent
                          | std.number.Integer
                          | js2n.number.Minimum 1
                          | doc "Spaces for first level indent (when start_indented is set)"
                          | optional,
                        start_indented
                          | Bool
                          | doc "Whether to indent the first level of the list"
                          | optional,
                      }
                    ],
              ul-style =
                std.contract.any_of
                    [
                      Bool,
                      {
                        style
                          | std.enum.TagOrString
                          | [| 'sublist, 'dash, 'plus, 'asterisk, 'consistent |]
                          | doc "List style"
                          | optional,
                      }
                    ],
              url = Bool,
              whitespace = Bool,
            },
        required = {},
      }