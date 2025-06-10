# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      "$schema" | String | optional,
      appdir
        | String
        | doc "The name of the application directory to which the page belongs."
        | optional,
      base | String | doc "The value of the HTML <base> element." | optional,
      charset | String | doc "The value of the charset meta tag." | optional,
      collection_name
        | String
        | doc "The name of the content collection variable. By default, this is the same as the directory name."
        | optional,
      content_collection
        | String
        | doc "The name of the directory for a content collection."
        | optional,
      direction
        | String
        | doc "The value of the `<html direction=\"{ direction }\">` attribute, which defines the text direction of the document. The default is \"ltr\" (left to right).."
        | optional,
      dist
        | String
        | doc "The output directory for the generated build files."
        | optional,
      exclude
        | Array String
        | doc "A list of assets to be excluded from a library directory."
        | optional,
      favicon | String | doc "The relative path to your favicon." | optional,
      generator
        | String
        | doc "The generator meta tag that identifies the software used to create the site. The default is \"Nue (nuejs.org)\" and is only rendered in production mode."
        | optional,
      globals
        | Array String
        | doc "An array of global directories, automatically included on all pages."
        | optional,
      heading_ids
        | Bool
        | doc "When set to true, all header levels (h2 and h3) will be generated with an id and an anchor (<a>) element."
        | optional,
      hotreload | Bool | doc "Whether to enable hot reloading." | optional,
      include
        | Array String
        | doc "A list of assets to be included from a library directory for all pages in the area. For example, a value like `include: [highlight, motion]` would include all files matching the strings `highlight` or `motion` in their filenames."
        | optional,
      inline_css
        | Bool
        | doc "Whether to inline all CSS directly into the HTML page."
        | optional,
      language
        | String
        | doc "The value of the `<html lang=\"{ language }\">` attribute. The default is \"en\"."
        | optional,
      libs
        | Array String
        | doc "An array of directories treated as libraries."
        | optional,
      lightning_css
        | Bool
        | doc "Whether to use Lightning CSS for processing of CSS."
        | optional,
      links
        | {  .. }
        | doc "A list of reference links for use in Markdown content. Links should be supplied in the `name: url \"title\"` format."
        | optional,
      native_css_nesting
        | Bool
        | doc "Whether to use native CSS nesting."
        | optional,
      og
        | String
        | doc "A shorthand alias for og_image, allowing for easier reference in the page settings."
        | optional,
      og_description
        | String
        | doc "A brief description of the page to be used in Open Graph meta tags. This description appears in social media previews, providing context about the content when shared."
        | optional,
      og_image
        | String
        | doc "The URL of the Open Graph image to represent the page on social media platforms."
        | optional,
      origin
        | String
        | doc "Your full domain name, including the protocol."
        | optional,
      port
        | std.number.Integer
        | doc "The port number for the development server. Defaults to 8080."
        | optional,
      prefetch
        | Array String
        | doc "An array of assets to prefetch before they are used. These can include images, scripts, or CSS files."
        | optional,
      robots
        | String
        | doc "The value for the robots meta property. Use \"noindex\" to exclude the entire website from search engine indexing."
        | optional,
      sections
        | std.contract.any_of [ Bool, Array String ]
        | doc "An array of CSS class names for the page sections, or `true` to render sections but not add any class names."
        | optional,
      syntax_highlight
        | Bool
        | doc "Whether to enable syntax highlighting for code blocks within your Markdown content."
        | optional,
      theme_color
        | String
        | doc "The value for the theme color meta property."
        | optional,
      unlisted
        | Bool
        | doc "A setting that prevents the page from being included in content collections."
        | optional,
      view_transitions
        | Bool
        | doc "Whether to enable view transitions for instant and smooth page switches."
        | optional,
      viewport
        | String
        | doc "The viewport value. The default is: \"width=device-width, initial-scale=1\"."
        | optional,
      ..
    }