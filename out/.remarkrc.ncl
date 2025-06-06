# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      plugins
        | std.contract.any_of
          [
            Array (
              std.contract.any_of
                [ String, js2n.array.Items [ String ] js2n.Always ]
            ),
            { _ | Dyn }
          ]
        | doc m%"
          The plugins field, related to plugins in options, has either an array of plugin names (or paths) or plugin–options tuples, or an object mapping plugins to their options.
          Plugin options can be false, which specifies that a plugin should not be used. In all other cases, they are treated as an object, and merged by the cascade. Thus, it's possible to specify part of the options from one configuration file, and overwrite or extend it from another file.
        "%
        | optional,
      settings
        | {
          bullet
            | std.enum.TagOrString
            | [| '"-", '"+", '"*" |]
            | doc "Marker to use to for bullets of items in unordered lists."
            | optional,
          closeAtx
            | Bool
            | doc "Whether to add the same number of number signs (#) at the end of an ATX heading as the opening sequence."
            | optional,
          emphasis
            | std.enum.TagOrString
            | [| '"_", '"*" |]
            | doc "Marker to use to serialize emphasis."
            | optional,
          fence
            | std.enum.TagOrString
            | [| '"~", '"`" |]
            | doc "Marker to use to serialize fenced code."
            | optional,
          fences
            | Bool
            | doc "Whether to use fenced code always. The default is to fenced code if there is a language defined, if the code is empty, or if it starts or ends in empty lines"
            | optional,
          incrementListMarker
            | Bool
            | doc "Whether to increment the value of bullets of items in ordered lists."
            | optional,
          listItemIndent
            | std.enum.TagOrString
            | [| 'mixed, 'tab, 'one |]
            | doc "Whether to indent the content of list items with the size of the bullet plus one space (when 'one') or a tab stop ('tab'), or depending on the item and its parent list ('mixed', uses 'one' if the item and list are tight and 'tab' otherwise)"
            | optional,
          quote
            | std.enum.TagOrString
            | [| '"'", '"\"" |]
            | doc "Marker to use to serialize titles."
            | optional,
          resourceLink
            | Bool
            | doc "Whether to use resource links ([text](url)) always. The default is to use autolinks (<https://example.com>) when possible."
            | optional,
          rule
            | std.enum.TagOrString
            | [| '"_", '"-", '"*" |]
            | doc "Marker to use for thematic breaks."
            | optional,
          ruleRepetition
            | std.number.Integer
            | js2n.number.Minimum 3
            | doc "Number of markers to use for thematic breaks."
            | optional,
          ruleSpaces
            | Bool
            | doc "Whether to add spaces between markers in thematic breaks."
            | optional,
          setext
            | Bool
            | doc "Whether to use setext headings when possible. Setext headings are not possible for headings with a rank more than 2 or when they're empty."
            | optional,
          strong
            | std.enum.TagOrString
            | [| '"_", '"*" |]
            | doc "Marker to use to serialize strong."
            | optional,
          tightDefinitions
            | Bool
            | doc "Whether to join definitions w/o a blank line."
            | optional,
        }
        | optional,
    }