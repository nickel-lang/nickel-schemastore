# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.base" =
        {
            level
              | std.enum.TagOrString
              | [| 'ignore, 'warn, 'error |]
              | doc "Determines the error level"
              | optional,
            ..
          },
    }
    in
  {
      arrow_spacing
        | refs."definitions.base"
        | doc "This rule checks to see that there is spacing before and after the arrow operator that declares a function. [default level: ignore]"
        | optional,
      braces_spacing
        | refs."definitions.base"
        | {
          empty_object_spaces
            | std.number.Integer
            | js2n.Enum [ 0, 1 ]
            | optional,
          spaces | std.number.Integer | js2n.Enum [ 0, 1 ] | optional,
          ..
        }
        | doc "This rule checks to see that there is the proper spacing inside curly braces. The spacing amount is specified by `spaces`. The spacing amount for empty objects is specified by `empty_object_spaces`. [default level: ignore]"
        | optional,
      camel_case_classes
        | refs."definitions.base"
        | doc "This rule mandates that all class names are CamelCased. Camel casing class names is a generally accepted way of distinguishing constructor functions - which require the `new` prefix to behave properly - from plain old functions. [default level: error]"
        | optional,
      coffeescript_error
        | refs."definitions.base"
        | doc "[default level: error]"
        | optional,
      colon_assignment_spacing
        | refs."definitions.base"
        | {
          spacing
            | {
              left | std.number.Integer | js2n.Enum [ 0, 1 ] | optional,
              right | std.number.Integer | js2n.Enum [ 0, 1 ] | optional,
              ..
            }
            | optional,
          ..
        }
        | doc "This rule checks to see that there is spacing before and after the colon in a colon assignment (i.e., classes, objects). [default level: ignore]"
        | optional,
      cyclomatic_complexity
        | refs."definitions.base"
        | { value | std.number.Integer | optional, .. }
        | doc "Examine the complexity of your application. [default level: ignore]"
        | optional,
      duplicate_key
        | refs."definitions.base"
        | doc "Prevents defining duplicate keys in object literals and classes. [default level: error]"
        | optional,
      empty_constructor_needs_parens
        | refs."definitions.base"
        | doc "Requires constructors with no parameters to include the parens. [default level: ignore]"
        | optional,
      ensure_comprehensions
        | refs."definitions.base"
        | doc "This rule makes sure that parentheses are around comprehensions. [default level: warn]"
        | optional,
      eol_last
        | refs."definitions.base"
        | doc "Checks that the file ends with a single newline. [default level: ignore]"
        | optional,
      indentation
        | refs."definitions.base"
        | { value | std.number.Integer | optional, .. }
        | doc "This rule imposes a standard number of spaces to be used for indentation. Since whitespace is significant in CoffeeScript, it's critical that a project chooses a standard indentation format and stays consistent. Other roads lead to darkness. [default level: error]"
        | optional,
      line_endings
        | refs."definitions.base"
        | {
          value | std.enum.TagOrString | [| 'windows, 'unix |] | optional,
          ..
        }
        | doc "This rule ensures your project uses only windows or unix line endings. [default level: ignore]"
        | optional,
      max_line_length
        | refs."definitions.base"
        | {
          limitComments | Bool | optional,
          value | std.number.Integer | optional,
          ..
        }
        | doc "This rule imposes a maximum line length on your code. [default level: error]"
        | optional,
      missing_fat_arrows
        | refs."definitions.base"
        | doc "Warns when you use `this` inside a function that wasn't defined with a fat arrow. This rule does not apply to methods defined in a class, since they have `this` bound to the class instance (or the class itself, for class methods). [default level: ignore]"
        | optional,
      newlines_after_classes
        | refs."definitions.base"
        | { value | std.number.Integer | optional, .. }
        | doc "Checks the number of newlines between classes and other code. [default level: ignore]"
        | optional,
      no_backticks
        | refs."definitions.base"
        | doc "Backticks allow snippets of JavaScript to be embedded in CoffeeScript. While some folks consider backticks useful in a few niche circumstances, they should be avoided because so none of JavaScript's 'bad parts', like with and eval, sneak into CoffeeScript. [default level: error]"
        | optional,
      no_debugger
        | refs."definitions.base"
        | doc "This rule detects the `debugger` statement. [default level: warn]"
        | optional,
      no_empty_functions
        | refs."definitions.base"
        | doc "Disallows declaring empty functions. The goal of this rule is that unintentional empty callbacks can be detected. [default level: ignore]"
        | optional,
      no_empty_param_list
        | refs."definitions.base"
        | doc "This rule prohibits empty parameter lists in function definitions. [default level: ignore]"
        | optional,
      no_implicit_braces
        | refs."definitions.base"
        | { strict | Bool | optional, .. }
        | doc "This rule prohibits implicit braces when declaring object literals. Implicit braces can make code more difficult to understand, especially when used in combination with optional parenthesis. [default level: ignore]"
        | optional,
      no_implicit_parens
        | refs."definitions.base"
        | doc "This rule prohibits implicit parens on function calls. [default level: ignore]"
        | optional,
      no_interpolation_in_single_quotes
        | refs."definitions.base"
        | doc "This rule prohibits string interpolation in a single quoted string. [default level: ignore]"
        | optional,
      no_nested_string_interpolation
        | refs."definitions.base"
        | doc "This rule warns about nested string interpolation, as it tends to make code harder to read and understand. [default level: warn]"
        | optional,
      no_plusplus
        | refs."definitions.base"
        | doc "This rule forbids the increment and decrement arithmetic operators. Some people believe the `++` and `--` to be cryptic and the cause of bugs due to misunderstandings of their precedence rules. [default level: ignore]"
        | optional,
      no_private_function_fat_arrows
        | refs."definitions.base"
        | doc "Warns when you use the fat arrow for a private function inside a class definition scope. It is not necessary and it does not do anything. [default level: warn]"
        | optional,
      no_stand_alone_at
        | refs."definitions.base"
        | doc "This rule checks that no stand alone `@` are in use, they are discouraged. [default level: ignore]"
        | optional,
      no_tabs
        | refs."definitions.base"
        | doc "This rule forbids tabs in indentation. Enough said. [default level: error]"
        | optional,
      no_this
        | refs."definitions.base"
        | doc "This rule prohibits `this`. Use `@` instead. [default level: ignore]"
        | optional,
      no_throwing_strings
        | refs."definitions.base"
        | doc "This rule forbids throwing string literals or interpolations. While JavaScript (and CoffeeScript by extension) allow any expression to be thrown, it is best to only throw `Error` objects, because they contain valuable debugging information like the stack trace. [default level: error]"
        | optional,
      no_trailing_semicolons
        | refs."definitions.base"
        | doc "This rule prohibits trailing semicolons, since they are needless cruft in CoffeeScript. [default level: error]"
        | optional,
      no_trailing_whitespace
        | refs."definitions.base"
        | {
          allowed_in_comments | Bool | optional,
          allowed_in_empty_lines | Bool | optional,
          ..
        }
        | doc "This rule forbids trailing whitespace in your code, since it is needless cruft. [default level: error]"
        | optional,
      no_unnecessary_double_quotes
        | refs."definitions.base"
        | doc "This rule prohibits double quotes unless string interpolation is used or the string contains single quotes. [default level: ignore]"
        | optional,
      no_unnecessary_fat_arrows
        | refs."definitions.base"
        | doc "Disallows defining functions with fat arrows when `this` is not used within the function.  [default level: warn]"
        | optional,
      non_empty_constructor_needs_parens
        | refs."definitions.base"
        | doc "Requires constructors with parameters to include the parens. [default level: ignore]"
        | optional,
      prefer_english_operator
        | refs."definitions.base"
        | doc "This rule prohibits `&&`, `||`, `==`, `!=` and `!`. Use `and`, `or`, `is`, `isnt`, and `not` instead. `!!` (for converting to a boolean) is ignored. [default level: ignore]"
        | optional,
      space_operators
        | refs."definitions.base"
        | doc "This rule enforces that operators have space around them.  [default level: ignore]"
        | optional,
      spacing_after_comma
        | refs."definitions.base"
        | doc "This rule checks to make sure you have a space after commas. [default level: ignore]"
        | optional,
      transform_messes_up_line_numbers
        | refs."definitions.base"
        | doc "This rule detects when changes are made by transform function, and warns that line numbers are probably incorrect. [default level: warn]"
        | optional,
      ..
    }