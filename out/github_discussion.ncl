# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      body
        | Array
          {
            attributes
              | {
                description | String | optional,
                label | String | optional,
                placeholder | String | optional,
                ..
              }
              | optional,
            type
              | std.enum.TagOrString
              | [| 'checkboxes, 'dropdown, 'input, 'textarea, 'markdown |]
              | optional,
            validations | { required | Bool | optional, .. } | optional,
            ..
          }
        | doc "Definition of the input types in the discussion form",
      labels
        | std.contract.any_of [ String, Array String ]
        | doc "Labels that will automatically be added to discussions created with this template."
        | optional,
      title
        | String
        | doc "A default title that will be pre-populated in the discussion submission form."
        | optional,
    }