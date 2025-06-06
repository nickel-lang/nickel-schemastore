# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      demo
        | String
        | doc "Path to or URL of a demonstration of the component."
        | optional,
      dependencies
        | std.contract.any_of
          [
            std.contract.Sequence
              [
                js2n.array.MinItems 1,
                Array (std.contract.any_of [ { _ | Dyn }, String ])
              ],
            std.contract.Sequence
              [ js2n.record.MinProperties 1, { _ | String } ]
          ]
        | doc "Dependencies that are required by the component. Can be specified as an array of files or an object with named entries."
        | optional,
      description
        | String
        | doc "A brief description of the component's purpose and functionality."
        | optional,
      development
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        | doc "Development-specific configuration that extends the main configuration."
        | optional,
      files
        | std.contract.any_of
          [
            std.contract.Sequence
              [
                js2n.array.MinItems 1,
                Array (std.contract.any_of [ { _ | Dyn }, String ])
              ],
            std.contract.Sequence
              [ js2n.record.MinProperties 1, { _ | String } ]
          ]
        | doc "Additional files that are part of the component. Can be specified as an array of files or an object with named entries."
        | optional,
      fonts
        | std.contract.any_of
          [
            std.contract.Sequence
              [
                js2n.array.MinItems 1,
                Array (std.contract.any_of [ { _ | Dyn }, String ])
              ],
            std.contract.Sequence
              [ js2n.record.MinProperties 1, { _ | String } ]
          ]
        | doc "Fonts that are part of the component. Can be specified as an array of files or an object with named entries."
        | optional,
      framework
        | String
        | doc "Framework compatibility  (e.g., 'react', 'vue', 'angular', 'svelte', 'alpinejs', 'laravel', 'web-components')."
        | optional,
      images
        | std.contract.any_of
          [
            std.contract.Sequence
              [
                js2n.array.MinItems 1,
                Array (std.contract.any_of [ { _ | Dyn }, String ])
              ],
            std.contract.Sequence
              [ js2n.record.MinProperties 1, { _ | String } ]
          ]
        | doc "Image assets that are part of the component. Can be specified as an array of files or an object with named entries."
        | optional,
      json
        | std.contract.any_of
          [
            std.contract.Sequence
              [
                js2n.array.MinItems 1,
                Array (std.contract.any_of [ { _ | Dyn }, String ])
              ],
            std.contract.Sequence
              [ js2n.record.MinProperties 1, { _ | String } ]
          ]
        | doc "Json data that are part of the component. Can be specified as an array of files or an object with named entries."
        | optional,
      keywords
        | js2n.array.MinItems 1
        | Array String
        | doc "An array of keywords that describe the component, used for search and categorization."
        | optional,
      license
        | String
        | doc "The license identifier under which the component is distributed (e.g., 'MIT', 'Apache-2.0')."
        | optional,
      locals
        | std.contract.any_of
          [
            std.contract.Sequence
              [
                js2n.array.MinItems 1,
                Array (std.contract.any_of [ { _ | Dyn }, String ])
              ],
            std.contract.Sequence
              [ js2n.record.MinProperties 1, { _ | String } ]
          ]
        | doc "Local dependencies that are required by the component. Can be specified as an array of files or an object with named entries."
        | optional,
      main
        | String
        | doc "The primary entry point file of the component."
        | optional,
      name
        | js2n.string.Matches "^[0-9a-z-_]+$"
        | doc "The name of the component. Must be lowercase, can contain hyphens and underscores."
        | optional,
      paths
        | std.contract.any_of
          [
            std.contract.Sequence
              [
                js2n.array.MinItems 1,
                Array (std.contract.any_of [ { _ | Dyn }, String ])
              ],
            std.contract.Sequence
              [ js2n.record.MinProperties 1, { _ | String } ]
          ]
        | doc "Custom file paths configuration for the component."
        | optional,
      private
        | Bool
        | doc "Indicates whether the component should be treated as private and not published to public registries."
        | optional,
      remotes
        | std.contract.any_of
          [
            std.contract.Sequence
              [
                js2n.array.MinItems 1,
                Array (std.contract.any_of [ { _ | Dyn }, String ])
              ],
            std.contract.Sequence
              [ js2n.record.MinProperties 1, { _ | String } ]
          ]
        | doc "Remote dependencies that are required by the component. Can be specified as an array of files or an object with named entries."
        | optional,
      repo
        | String
        | doc "The repository location in the format 'username/repository'."
        | optional,
      scripts
        | std.contract.any_of
          [
            std.contract.Sequence
              [
                js2n.array.MinItems 1,
                Array (std.contract.any_of [ { _ | Dyn }, String ])
              ],
            std.contract.Sequence
              [ js2n.record.MinProperties 1, { _ | String } ]
          ]
        | doc "Scripts that are part of the component. Can be specified as an array of files or an object with named entries."
        | optional,
      styles
        | std.contract.any_of
          [
            std.contract.Sequence
              [
                js2n.array.MinItems 1,
                Array (std.contract.any_of [ { _ | Dyn }, String ])
              ],
            std.contract.Sequence
              [ js2n.record.MinProperties 1, { _ | String } ]
          ]
        | doc "Styles that are part of the component. Can be specified as an array of files or an object with named entries."
        | optional,
      templates
        | std.contract.any_of
          [
            std.contract.Sequence
              [
                js2n.array.MinItems 1,
                Array (std.contract.any_of [ { _ | Dyn }, String ])
              ],
            std.contract.Sequence
              [ js2n.record.MinProperties 1, { _ | String } ]
          ]
        | doc "Templates that can be imported to be used within the component."
        | optional,
      type
        | String
        | doc "Type of the component (e.g., 'component', 'block', 'template')."
        | optional,
      url | String | doc "URL to the component." | optional,
      version
        | String
        | doc "The semantic version number of the component (e.g., '1.0.0')."
        | optional,
      ..
    }