# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.string-property" =
        std.contract.Sequence
            [ js2n.string.MinLength 1, js2n.string.Matches "[^ ]" ],
    }
    in
  std.contract.Sequence
      [
        js2n.record.MinProperties 1,
        {
          _ | {
            category
              | std.enum.TagOrString
              | [|
                'Utilities,
                '"Pro Tools",
                '"Multimedia Tools",
                '"Microsoft Tools",
                'Games,
                'Document,
                'Development,
                'Communications,
                'Browsers
              |]
              | doc m%"
                A category of an application
                https://github.com/ChrisTitusTech/winutil/blob/main/config/applications.json
              "%,
            choco
              | refs."definitions.string-property"
              | String
              | doc m%"
                A Chocolatey package name of an application
                https://github.com/ChrisTitusTech/winutil/blob/main/config/applications.json
              "%,
            content
              | refs."definitions.string-property"
              | String
              | doc m%"
                A label of an application
                https://github.com/ChrisTitusTech/winutil/blob/main/config/applications.json
              "%,
            description
              | refs."definitions.string-property"
              | String
              | doc m%"
                A description of an application
                https://github.com/ChrisTitusTech/winutil/blob/main/config/applications.json
              "%,
            link
              | js2n.string.MinLength 1
              | js2n.string.Matches "^https?://"
              | doc m%"
                A link of an application
                https://github.com/ChrisTitusTech/winutil/blob/main/config/applications.json
              "%,
            winget
              | refs."definitions.string-property"
              | String
              | doc m%"
                A WinGet package name of an application
                https://github.com/ChrisTitusTech/winutil/blob/main/config/applications.json
              "%,
          }
        },
        js2n.record.FieldsMatch "."
      ]