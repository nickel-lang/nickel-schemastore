# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.include-pattern" =
        { apply_prototype | Bool | optional, include | String, .. },
      "definitions.match-pattern" =
        {
            captures
              | js2n.record.MinProperties 1
              | js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = { "^\\d+$" = String, },
                  properties = {},
                  required = {},
                }
              | doc "A mapping of numbers to scope, assigning scopes to captured portions of the match regex."
              | optional,
            embed
              | {
                branch
                  | {
                    branch_point
                      | String
                      | doc "This is the unique identifier for the branch and is specified when a match uses the fail action."
                      | optional,
                    ..
                  }
                  | doc "Accepts the names of two or more contexts, which are attempted in order. If a fail action is encountered, the highlighting of the file will be restarted at the character where the branch occurred, and the next context will be attempted."
                  | optional,
                embed_scope
                  | String
                  | doc "A scope assigned to all text matched after the match and before the escape. Similar in concept to meta_content_scope."
                  | optional,
                escape
                  | String
                  | doc "This key is required if embed is used, and is a regex used to exit from the embedded context. Any backreferences in this pattern will refer to capture groups in the match regex."
                  | optional,
                escape_captures
                  | js2n.record.MinProperties 1
                  | js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = { "^\\d+$" = String, },
                      properties = {},
                      required = {},
                    }
                  | doc "A mapping of capture groups to scope names, for the escape pattern. Use capture group 0 to apply a scope to the entire escape match."
                  | optional,
                fail
                  | String
                  | doc "Accepts the name of a branch_point to rewind to and retry the next context of. If a fail action specifies a branch_point that was never pushed on the stack, or has already been popped off of the stack, it will have no effect."
                  | optional,
                ..
              }
              | doc "Accepts the name of a single context to push into. While similar to push, it pops out of any number of nested contexts as soon as the escape pattern is found. This makes it an ideal tool for embedding one syntax within another."
              | optional,
            "match"
              | String
              | doc "The regex used to match against the text. YAML allows many strings to be written without quotes, which can help make the regex clearer, but it's important to understand when you need to quote the regex. If your regex includes the characters #, :, -, {, [ or > then you likely need to quote it. Regexes are only ever run against a single line of text at a time.",
            pop
              | Bool
              | doc "Pops contexts off the stack. The value true will pop a single context. An integer greater than zero will pop the corresponding number of contexts. The pop key can be combined with push, set, embed and branch. When combined, the specified number of contexts will be popped off of the stack before the other action is performed. For push, embed and branch actions, the pop treats the match as if it were a lookahead, which means the match will not receive the meta_scope of the contexts that are popped."
              | optional,
            push
              | refs."definitions.push"
              | doc "The contexts to push onto the stack. This may be either a single context name, a list of context names, or an inline, anonymous context."
              | optional,
            scope
              | js2n.string.Matches "^[_a-zA-Z][a-zA-Z0-9._ -]*$"
              | doc "The scope assigned to the matched text."
              | optional,
            set
              | refs."definitions.push"
              | doc "Accepts the same arguments as push, but will first pop this context off, and then push the given context(s) onto the stack. Any match will receive the meta_scope of the context being popped and the context being pushed."
              | optional,
            ..
          },
      "definitions.meta-pattern" =
        {
            clear_scopes
              | std.contract.any_of [ std.number.Integer, Bool ]
              | doc "This setting allows removing scope names from the current stack. It can be an integer, or the value true to remove all scope names. It is applied before meta_scope and meta_content_scope. This is typically only used when one syntax is embedding another."
              | optional,
            meta_append
              | Bool
              | doc "A boolean, controlling context name conflict resolution during inheritance. If this is specified, the rules in this context will be inserted after to any existing rules from a context with the same name in an ancestor syntax definition."
              | optional,
            meta_content_scope
              | String
              | doc "This assigns the given scope to all text within this context, including the patterns that push the context onto the stack and pop it off. But does not apply to the text that triggers the context (e.g., in the above string example, the content scope would not get applied to the quote characters)."
              | optional,
            meta_include_prototype
              | Bool
              | doc "Used to stop the current context from automatically including the prototype context."
              | optional,
            meta_prepend
              | Bool
              | doc "A boolean, controlling context name conflict resolution during inheritance. If this is specified, the rules in this context will be inserted before any existing rules from a context with the same name in an ancestor syntax definition."
              | optional,
            meta_scope
              | String
              | doc "This assigns the given scope to all text within this context, including the patterns that push the context onto the stack and pop it off."
              | optional,
            ..
          },
      "definitions.pattern" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ refs."definitions.meta-pattern", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."definitions.match-pattern", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."definitions.include-pattern", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."definitions.prototype-pattern", { _ | Dyn } ]
            ],
      "definitions.patterns" =
        std.contract.Sequence
            [
              js2n.array.MinItems 1,
              js2n.array.UniqueItems,
              Array refs."definitions.pattern"
            ],
      "definitions.prototype-pattern" = { meta_include_prototype | Bool, .. },
      "definitions.push" =
        std.contract.any_of
            [
              String,
              std.contract.Sequence
                [ js2n.array.MinItems 1, js2n.array.ArrayOf String ],
              std.contract.Sequence [ refs."definitions.patterns", Array Dyn ]
            ],
    }
    in
  {
      contexts
        | js2n.record.MinProperties 1
        | js2n.record.Record
          {
            additional = 'Some Dyn,
            patterns =
              {
                  "^[_a-zA-Z][a-zA-Z0-9_-]*$" =
                    std.contract.Sequence
                        [ refs."definitions.patterns", Array Dyn ],
                },
            properties = {},
            required = {},
          }
        | doc "https://www.sublimetext.com/docs/syntax.html#contexts",
      extends
        | String
        | doc "A string of a base syntax this syntax should inherit from. The base syntax must be specified using its package path, e.g. Packages/JavaScript/JavaScript.sublime-syntax. See Inheritance for an overview of syntax inheritance."
        | optional,
      file_extensions
        | js2n.array.MinItems 1
        | js2n.array.UniqueItems
        | Array String
        | doc "A list of strings, defining file extensions this syntax should be used for. Extensions listed here will be shown in file dialog dropdowns on some operating systems. If a file does not have a basename, e.g. .gitignore, the entirety of the filename including the leading . should be specified."
        | optional,
      first_line_match
        | String
        | doc "When a file is opened without a recognized extension, the first line of the file contents will be tested against this regex, to see if the syntax should be applied."
        | optional,
      hidden
        | Bool
        | doc "Hidden syntax definitions won’t be shown in the menu, but can still be assigned by plugins, or included by other syntax definitions."
        | optional,
      hidden_file_extensions
        | js2n.array.MinItems 1
        | js2n.array.UniqueItems
        | Array String
        | doc "A list of strings, also defining file extensions this syntax should be used for. These extensions are not listed in file dialogs."
        | optional,
      name
        | String
        | doc "This defines the name shown for the syntax in the menu. It’s optional, and will be derived from the file name if not used."
        | optional,
      scope
        | js2n.string.Matches "^[_a-zA-Z][a-zA-Z0-9._ -]*$"
        | doc "The default scope assigned to all text in the file",
      variables
        | js2n.record.MinProperties 1
        | js2n.record.Record
          {
            additional = 'Some Dyn,
            patterns = { "^[_a-zA-Z][a-zA-Z0-9_]*$" = String, },
            properties = {},
            required = {},
          }
        | doc m%"
          Variables must be defined at the top level of the .sublime-syntax file, and are referenced within regxes via {{varname}}. Variables may themselves include other variables. Note that any text that doesn’t match {{[A-Za-z0-9_]+}} won’t be considered as a variable, so regexes can still include literal {{ characters, for example.
          https://www.sublimetext.com/docs/syntax.html#variables
        "%
        | optional,
      version | std.number.Integer | js2n.Enum [ 1, 2 ] | optional,
      ..
    }