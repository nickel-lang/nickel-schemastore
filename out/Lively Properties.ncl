# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      _ | std.contract.Sequence
        [
          js2n.OneOf
            [
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        max = Number,
                        min = Number,
                        step = Number,
                        text = String,
                        type = js2n.Const "slider",
                        value = Number,
                      },
                  required =
                    { max = true, min = true, step = true, text = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        text = String,
                        type = js2n.Const "textbox",
                        value = String,
                      },
                  required = { text = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        items = Array Dyn,
                        text = String,
                        type = js2n.Const "dropdown",
                        value = std.number.Integer,
                      },
                  required = { items = true, text = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        filter = String,
                        folder = String,
                        text = String,
                        type = js2n.Const "folderDropdown",
                        value = String,
                      },
                  required = { filter = true, folder = true, text = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        text = String,
                        type = js2n.Const "button",
                        value = String,
                      },
                  required = { text = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { type = js2n.Const "label", value = String, },
                  required = {},
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        text = String,
                        type = js2n.Const "color",
                        value = String,
                      },
                  required = { text = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        text = String,
                        type = js2n.Const "checkbox",
                        value = Bool,
                      },
                  required = { text = true, },
                }
            ],
          {
            type
              | std.enum.TagOrString
              | [|
                'checkbox,
                'color,
                'label,
                'button,
                'folderDropdown,
                'dropdown,
                'textbox,
                'slider
              |]
              | doc "https://github.com/rocksdanister/lively/wiki/Web-Guide-IV-:-Interaction#controls",
            value | js2n.Always,
            ..
          }
        ]
    }