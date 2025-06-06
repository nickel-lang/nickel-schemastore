# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      auth
        | std.contract.any_of
          [ std.contract.Equal false, js2n.string.Matches "^[^:]+:[^:]+$" ]
        | doc m%"
          Whether to provide user:password for basic authentication
          https://madness.dannyb.co/#configuration-file
        "%
        | optional,
      auth_zone
        | String
        | doc m%"
          An auth realm name
          https://madness.dannyb.co/#configuration-file
        "%
        | optional,
      auto_h1
        | Bool
        | doc m%"
          Whether to add H1 title to files that do not have one
          https://madness.dannyb.co/#configuration-file
        "%
        | optional,
      auto_nav
        | Bool
        | doc m%"
          Whether to append navigation to directory READMEs
          https://madness.dannyb.co/#configuration-file
        "%
        | optional,
      auto_toc
        | Bool
        | doc m%"
          Whether to enable table of contents
          https://madness.dannyb.co/#configuration-file
        "%
        | optional,
      base_uri
        | js2n.Nullable
          (std.contract.Sequence
            [
              js2n.string.MinLength 1,
              std.contract.not
                (std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    js2n.string.Matches "//",
                    { _ | Dyn },
                    Array Dyn
                  ])
            ])
        | doc m%"
          Server root URI
          https://madness.dannyb.co/#configuration-file
        "%
        | optional,
      bind
        | js2n.string.Matches "^\\d+\\.\\d+\\.\\d+\\.\\d+$"
        | doc m%"
          Server listening address
          https://madness.dannyb.co/#configuration-file
        "%
        | optional,
      copy_code
        | Bool
        | doc m%"
          Whether to enable the copy to clipboard icon for code snippets
          https://madness.dannyb.co/#configuration-file
        "%
        | optional,
      exclude
        | js2n.array.MinItems 1
        | js2n.array.UniqueItems
        | Array String
        | doc m%"
          Excluded directories
          https://madness.dannyb.co/#configuration-file
        "%
        | optional,
      expose_extensions
        | js2n.Nullable
          (std.contract.Sequence
            [
              std.contract.not
                (std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    js2n.string.Matches ",,|^,|,$",
                    { _ | Dyn },
                    Array Dyn
                  ]),
              String
            ])
        | doc m%"
          Show files with these extensions in the navigation
          https://madness.dannyb.co/#configuration-file
        "%
        | optional,
      highlighter
        | Bool
        | doc m%"
          Whether to enable syntax highlighter for code snippets
          https://madness.dannyb.co/#configuration-file
        "%
        | optional,
      mermaid
        | Bool
        | doc m%"
          Whether to enable support for mermaid diagrams
          https://madness.dannyb.co/#configuration-file
        "%
        | optional,
      open
        | Bool
        | doc m%"
          Whether to open the server URL in the browser
          https://madness.dannyb.co/#configuration-file
        "%
        | optional,
      path
        | js2n.string.MinLength 1
        | doc m%"
          Path to the documentation root
          https://madness.dannyb.co/#configuration-file
        "%
        | optional,
      port
        | std.number.Integer
        | js2n.number.Minimum 0
        | doc m%"
          Server port
          https://madness.dannyb.co/#configuration-file
        "%
        | optional,
      renderer
        | std.enum.TagOrString
        | [| 'pandoc, 'redcarpet |]
        | doc m%"
          The underlying markdown renderer to use
          https://madness.dannyb.co/#configuration-file
        "%
        | optional,
      shortlinks
        | Bool
        | doc m%"
          Whether to convert [[Links]] to [Links](Links)
          https://madness.dannyb.co/#configuration-file
        "%
        | optional,
      sidebar
        | Bool
        | doc m%"
          Whether to enable sidebar
          https://madness.dannyb.co/#configuration-file
        "%
        | optional,
      sort_order
        | std.enum.TagOrString
        | [| 'mixed, 'dirs_first |]
        | doc m%"
          Navigation sort order
          https://madness.dannyb.co/#configuration-file
        "%
        | optional,
      source_link
        | js2n.Nullable (js2n.string.MinLength 1)
        | doc m%"
          Template for source code links
          https://madness.dannyb.co/#configuration-file
        "%
        | optional,
      source_link_label
        | js2n.string.MinLength 1
        | doc m%"
          Label for the page source code link
          https://madness.dannyb.co/#configuration-file
        "%
        | optional,
      source_link_pos
        | std.enum.TagOrString
        | [| 'bottom, 'top |]
        | doc m%"
          The position of the page source code link
          https://madness.dannyb.co/#configuration-file
        "%
        | optional,
      theme
        | js2n.Nullable (js2n.string.MinLength 1)
        | doc m%"
          Theme directory
          https://madness.dannyb.co/#configuration-file
        "%
        | optional,
      toc
        | js2n.Nullable (js2n.string.MinLength 1)
        | doc m%"
          Whether to generate a table of contents file with this name
          https://madness.dannyb.co/#configuration-file
        "%
        | optional,
    }