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
          allowDangerousHtml
            | Bool
            | doc "Allow raw nodes and insert them as raw HTML. When falsey, encodes raw nodes. Note: Only set this if you completely trust the content."
            | optional,
          allowParseErrors
            | Bool
            | doc m%"
              Do not encode characters which cause parse errors (even though they work), to save bytes. Note: creates invalid (but working) markup.
              
              Not used in the SVG space.
            "%
            | optional,
          bogusComments
            | Bool
            | doc "Use \"bogus comments\" instead of comments to save byes: <?charlie> instead of <!--charlie-->. Note: creates invalid (but working) markup."
            | optional,
          closeEmptyElements
            | Bool
            | doc m%"
              Close SVG elements without any content with slash (/) on the opening tag instead of an end tag: <circle /> instead of <circle></circle>. See tightSelfClosing to control whether a space is used before the slash.
              
              Not used in the HTML space.
            "%
            | optional,
          closeSelfClosing
            | Bool
            | doc m%"
              Close self-closing nodes with an extra slash (/): <img /> instead of <img>. See tightSelfClosing to control whether a space is used before the slash.
              
              Not used in the SVG space.
            "%
            | optional,
          collapseEmptyAttributes
            | Bool
            | doc m%"
              Collapse empty attributes: get class instead of class="". Note: boolean attributes, such as hidden, are always collapsed.
              
              Not used in the SVG space.
            "%
            | optional,
          emitParseErrors
            | Bool
            | doc m%"
              Emit parse errors while parsing on the vfile.
              
              Setting this to true starts emitting HTML parse errors.
              
              Specific rules can be turned off by setting them to false (or 0). The default, when emitParseErrors: true, is true (or 1), and means that rules emit as warnings. Rules can also be configured with 2, to turn them into fatal errors.
            "%
            | optional,
          entities
            | {
              omitOptionalSemicolons
                | Bool
                | doc "Whether to omit semicolons when possible."
                | optional,
              useNamedReferences
                | Bool
                | doc "Prefer named character references (&amp;) where possible."
                | optional,
              useShortestReferences
                | Bool
                | doc "Prefer the shortest possible reference, if that results in less bytes."
                | optional,
            }
            | doc "Configuration for stringify-entities. Do not use escapeOnly, attribute, or subset (toHtml already passes those, so they won't work). However, useNamedReferences, useShortestReferences, and omitOptionalSemicolons are all fine."
            | optional,
          fragment
            | Bool
            | doc "Specify whether to parse a fragment, instead of a complete document. In document mode, unopened html, head, and body elements are opened in just the right places."
            | optional,
          omitOptionalTags
            | Bool
            | doc m%"
              Omit optional opening and closing tags. For example, in <ol><li>one</li><li>two</li></ol>, both </li> closing tags can be omitted. The first because it's followed by another li, the last because it's followed by nothing.
              
              Not used in the SVG space.
            "%
            | optional,
          preferUnquoted
            | Bool
            | doc m%"
              Leave attributes unquoted if that results in less bytes.
              
              Not used in the SVG space.
            "%
            | optional,
          quote
            | std.enum.TagOrString
            | [| '"'", '"\"" |]
            | doc "Preferred quote to use."
            | optional,
          quoteSmart
            | Bool
            | doc "Use the other quote if that results in less bytes."
            | optional,
          space
            | std.enum.TagOrString
            | [| 'html, 'svg |]
            | doc m%"
              Which space the document is in.
              
              If an svg element is found in the HTML space, parse automatically switches to the SVG space when entering the element, and switches back when exiting.
              
              Note: make sure to set fragment: true if space: 'svg'.
            "%
            | optional,
          tightAttributes
            | Bool
            | doc m%"
              Join attributes together, without whitespace, if possible: get class="a b"title="c d" instead of class="a b" title="c d" to save bytes. Note: creates invalid (but working) markup.
              
              Not used in the SVG space.
            "%
            | optional,
          tightCommaSeparatedLists
            | Bool
            | doc "Join known comma-separated attribute values with just a comma (,), instead of padding them on the right as well (,·, where · represents a space)."
            | optional,
          tightDoctype
            | Bool
            | doc "Drop unneeded spaces in doctypes: <!doctypehtml> instead of <!doctype html> to save bytes. Note: creates invalid (but working) markup."
            | optional,
          upperDoctype
            | Bool
            | doc "Use a <!DOCTYPE… instead of <!doctype…. Useless except for XHTML."
            | optional,
          verbose
            | Bool
            | doc "Patch extra positional information. If specified, the following element:"
            | optional,
          voids
            | Array String
            | doc m%"
              Tag names of elements to serialize without closing tag.
              
              Not used in the SVG space.
            "%
            | optional,
        }
        | optional,
    }