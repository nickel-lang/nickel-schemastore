# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      description
        | String
        | doc "The description of the web template"
        | optional,
      displayName
        | String
        | doc "The display name of the web template"
        | optional,
      params
        | Array
          {
            description
              | String
              | doc "The description to be displayed in the tooltip when editing a property in Studio. If no description is given, no tooltip will be displayed"
              | optional,
            displayName
              | String
              | doc "The label displayed when editing a property in Studio. If no displayName is given, the label will fallback on the id"
              | optional,
            id
              | String
              | doc "The id of the param. This correlates with the liquid tag's key for this property",
            type
              | std.enum.TagOrString
              | [| 'table |]
              | doc "Used to specify a property that correlates to a table's logical name"
              | optional,
            ..
          }
        | doc "The editable properties of the web template. These will be customizable in Studio"
        | optional,
      tables
        | Array String
        | doc "An array of table logical names that are used in the web template"
        | optional,
      type
        | std.enum.TagOrString
        | [| 'layout, 'functional |]
        | doc "The web template type. Use 'functional' for custom site components and 'layout' for custom layouts.",
    }