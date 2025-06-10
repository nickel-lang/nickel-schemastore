# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      call_parentheses
        | std.enum.TagOrString
        | [| 'Input, 'None, 'NoSingleTable, 'NoSingleString, 'Always |]
        | doc "Whether parentheses should be applied on function calls with a single string/table argument."
        | optional,
      collapse_simple_statement
        | std.enum.TagOrString
        | [| 'Always, 'ConditionalOnly, 'FunctionOnly, 'Never |]
        | doc "Specify whether to collapse simple statements."
        | optional,
      column_width
        | std.number.Integer
        | doc m%"
          Approximate line length for printing.
          Used as a guide for line wrapping - this is not a hard requirement: lines may fall under or over the limit.
        "%
        | optional,
      indent_type
        | std.enum.TagOrString
        | [| 'Spaces, 'Tabs |]
        | doc "Indent type."
        | optional,
      indent_width
        | std.number.Integer
        | doc m%"
          Character size of single indentation.
          If indent_type is set to Tabs, this option is used as a heuristic to determine column width only.
        "%
        | optional,
      line_endings
        | std.enum.TagOrString
        | [| 'Windows, 'Unix |]
        | doc "Line endings type."
        | optional,
      quote_style
        | std.enum.TagOrString
        | [| 'ForceSingle, 'ForceDouble, 'AutoPreferSingle, 'AutoPreferDouble |]
        | doc "Quote style for string literals."
        | optional,
      sort_requires
        | { enabled | Bool | optional, .. }
        | doc m%"
          StyLua has built-in support for sorting require statements. We group consecutive require statements into a single "block", and then requires are sorted only within that block. Blocks of requires do not move around the file.
          
          StyLua only considers requires of the form local NAME = require(EXPR), and sorts lexicographically based on NAME. (StyLua can also sort Roblox services of the form local NAME = game:GetService(EXPR))
          
          Requires sorting is off by default.
        "%
        | optional,
      space_after_function_names
        | std.enum.TagOrString
        | [| 'Always, 'Calls, 'Definitions, 'Never |]
        | doc "Specify whether to add a space between the function name and parentheses."
        | optional,
      syntax
        | std.enum.TagOrString
        | [| 'Luau, 'LuaJIT, 'Lua54, 'Lua53, 'Lua52, 'Lua51, 'All |]
        | doc "Specify a disambiguation for the style of Lua syntax being formatted."
        | optional,
      ..
    }