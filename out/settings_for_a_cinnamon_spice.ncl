# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.button-definition" =
        {
            callback
              | refs."definitions.string-property-partial"
              | String
              | doc m%"
                A callback of the button without `.this`
                https://projects.linuxmint.com/reference/git/cinnamon-tutorials/xlet-settings-ref.html
              "%
              | optional,
            dependency
              | refs."definitions.string-property-partial"
              | String
              | doc m%"
                A checkbox or combobox the button depends on
                https://projects.linuxmint.com/reference/git/cinnamon-tutorials/xlet-settings-ref.html
              "%
              | optional,
            description
              | refs."definitions.string-property-partial"
              | String
              | doc m%"
                A description of the button
                https://projects.linuxmint.com/reference/git/cinnamon-tutorials/xlet-settings-ref.html
              "%
              | optional,
            indent
              | Bool
              | doc m%"
                Whether to indent the button
                https://projects.linuxmint.com/reference/git/cinnamon-tutorials/xlet-settings-ref.html
              "%
              | optional,
            tooltip
              | refs."definitions.string-property-partial"
              | String
              | doc m%"
                A tooltip of the the button
                https://projects.linuxmint.com/reference/git/cinnamon-tutorials/xlet-settings-ref.html
              "%
              | optional,
            type | refs."definitions.type-property" | String | optional,
          },
      "definitions.checkbox-definition" =
        {
            "default"
              | Bool
              | doc m%"
                A default value of the checkbox
                https://projects.linuxmint.com/reference/git/cinnamon-tutorials/xlet-settings-ref.html
              "%
              | optional,
            dependency
              | refs."definitions.string-property-partial"
              | String
              | doc m%"
                A checkbox or combobox the checkbox depends on
                https://projects.linuxmint.com/reference/git/cinnamon-tutorials/xlet-settings-ref.html
              "%
              | optional,
            description
              | refs."definitions.string-property-partial"
              | String
              | doc m%"
                A description of the checkbox
                https://projects.linuxmint.com/reference/git/cinnamon-tutorials/xlet-settings-ref.html
              "%
              | optional,
            indent
              | Bool
              | doc m%"
                Whether to indent the checkbox
                https://projects.linuxmint.com/reference/git/cinnamon-tutorials/xlet-settings-ref.html
              "%
              | optional,
            tooltip
              | refs."definitions.string-property-partial"
              | String
              | doc m%"
                A tooltip of the the checkbox
                https://projects.linuxmint.com/reference/git/cinnamon-tutorials/xlet-settings-ref.html
              "%
              | optional,
            type | refs."definitions.type-property" | String | optional,
          },
      "definitions.colorchooser-definition" =
        {
            "default"
              | js2n.string.MinLength 1
              | doc m%"
                A default value of the color chooser
                https://projects.linuxmint.com/reference/git/cinnamon-tutorials/xlet-settings-ref.html
              "%
              | optional,
            dependency
              | refs."definitions.string-property-partial"
              | String
              | doc m%"
                A checkbox or combobox the color chooser depends on
                https://projects.linuxmint.com/reference/git/cinnamon-tutorials/xlet-settings-ref.html
              "%
              | optional,
            description
              | refs."definitions.string-property-partial"
              | String
              | doc m%"
                A description of the the color chooser
                https://projects.linuxmint.com/reference/git/cinnamon-tutorials/xlet-settings-ref.html
              "%
              | optional,
            indent
              | Bool
              | doc m%"
                Whether to indent the color chooser
                https://projects.linuxmint.com/reference/git/cinnamon-tutorials/xlet-settings-ref.html
              "%
              | optional,
            tooltip
              | refs."definitions.string-property-partial"
              | String
              | doc m%"
                A tooltip of the the color chooser
                https://projects.linuxmint.com/reference/git/cinnamon-tutorials/xlet-settings-ref.html
              "%
              | optional,
            type | refs."definitions.type-property" | String | optional,
          },
      "definitions.combobox-definition" =
        {
            "default"
              | std.contract.any_of [ Bool, Number, String ]
              | doc m%"
                A default value of the combobox from `options`
                https://projects.linuxmint.com/reference/git/cinnamon-tutorials/xlet-settings-ref.html
              "%
              | optional,
            dependency
              | refs."definitions.string-property-partial"
              | String
              | doc m%"
                A checkbox or combobox the combobox depends on
                https://projects.linuxmint.com/reference/git/cinnamon-tutorials/xlet-settings-ref.html
              "%
              | optional,
            description
              | refs."definitions.string-property-partial"
              | String
              | doc m%"
                A description of the the combobox
                https://projects.linuxmint.com/reference/git/cinnamon-tutorials/xlet-settings-ref.html
              "%
              | optional,
            indent
              | Bool
              | doc m%"
                Whether to indent the combobox
                https://projects.linuxmint.com/reference/git/cinnamon-tutorials/xlet-settings-ref.html
              "%
              | optional,
            options
              | js2n.record.MinProperties 1
              | { _ | std.contract.any_of [ Bool, Number, String ] }
              | js2n.record.FieldsMatch "\\S"
              | doc m%"
                Options of the the combobox
                https://projects.linuxmint.com/reference/git/cinnamon-tutorials/xlet-settings-ref.html
              "%
              | optional,
            tooltip
              | refs."definitions.string-property-partial"
              | String
              | doc m%"
                A tooltip of the the combobox
                https://projects.linuxmint.com/reference/git/cinnamon-tutorials/xlet-settings-ref.html
              "%
              | optional,
            type | refs."definitions.type-property" | String | optional,
          },
      "definitions.entry-definition" =
        {
            "default"
              | String
              | doc m%"
                A default value of the text entry
                https://projects.linuxmint.com/reference/git/cinnamon-tutorials/xlet-settings-ref.html
              "%
              | optional,
            dependency
              | refs."definitions.string-property-partial"
              | String
              | doc m%"
                A checkbox or combobox the text entry depends on
                https://projects.linuxmint.com/reference/git/cinnamon-tutorials/xlet-settings-ref.html
              "%
              | optional,
            description
              | refs."definitions.string-property-partial"
              | String
              | doc m%"
                A description of the the text entry
                https://projects.linuxmint.com/reference/git/cinnamon-tutorials/xlet-settings-ref.html
              "%
              | optional,
            indent
              | Bool
              | doc m%"
                Whether to indent the text entry
                https://projects.linuxmint.com/reference/git/cinnamon-tutorials/xlet-settings-ref.html
              "%
              | optional,
            tooltip
              | refs."definitions.string-property-partial"
              | String
              | doc m%"
                A tooltip of the the text entry
                https://projects.linuxmint.com/reference/git/cinnamon-tutorials/xlet-settings-ref.html
              "%
              | optional,
            type | refs."definitions.type-property" | String | optional,
          },
      "definitions.filechooser-definition" =
        {
            "default"
              | String
              | doc m%"
                A default value of the file chooser
                https://projects.linuxmint.com/reference/git/cinnamon-tutorials/xlet-settings-ref.html
              "%
              | optional,
            dependency
              | refs."definitions.string-property-partial"
              | String
              | doc m%"
                A checkbox or combobox the file chooser depends on
                https://projects.linuxmint.com/reference/git/cinnamon-tutorials/xlet-settings-ref.html
              "%
              | optional,
            description
              | refs."definitions.string-property-partial"
              | String
              | doc m%"
                A description of the the file chooser
                https://projects.linuxmint.com/reference/git/cinnamon-tutorials/xlet-settings-ref.html
              "%
              | optional,
            indent
              | Bool
              | doc m%"
                Whether to indent the file chooser
                https://projects.linuxmint.com/reference/git/cinnamon-tutorials/xlet-settings-ref.html
              "%
              | optional,
            select-dir
              | Bool
              | doc m%"
                Whether to allow select just directories for the the file chooser
                https://projects.linuxmint.com/reference/git/cinnamon-tutorials/xlet-settings-ref.html
              "%
              | optional,
            tooltip
              | refs."definitions.string-property-partial"
              | String
              | doc m%"
                A tooltip of the the file chooser
                https://projects.linuxmint.com/reference/git/cinnamon-tutorials/xlet-settings-ref.html
              "%
              | optional,
            type | refs."definitions.type-property" | String | optional,
          },
      "definitions.generic-definition" =
        {
            "default"
              | std.contract.any_of
                [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ]
              | doc m%"
                A default value of the generic widget
                https://projects.linuxmint.com/reference/git/cinnamon-tutorials/xlet-settings-ref.html
              "%
              | optional,
            dependency
              | refs."definitions.string-property-partial"
              | String
              | doc m%"
                A checkbox or combobox the generic widget depends on
                https://projects.linuxmint.com/reference/git/cinnamon-tutorials/xlet-settings-ref.html
              "%
              | optional,
            description
              | refs."definitions.string-property-partial"
              | String
              | doc m%"
                A description of the generic widget
                https://projects.linuxmint.com/reference/git/cinnamon-tutorials/xlet-settings-ref.html
              "%
              | optional,
            indent
              | Bool
              | doc m%"
                Whether to indent the generic widget
                https://projects.linuxmint.com/reference/git/cinnamon-tutorials/xlet-settings-ref.html
              "%
              | optional,
            tooltip
              | refs."definitions.string-property-partial"
              | String
              | doc m%"
                A tooltip of the the generic widget
                https://projects.linuxmint.com/reference/git/cinnamon-tutorials/xlet-settings-ref.html
              "%
              | optional,
            type | refs."definitions.type-property" | String | optional,
          },
      "definitions.header-definition" =
        {
            dependency
              | refs."definitions.string-property-partial"
              | String
              | doc m%"
                A checkbox or combobox the header depends on
                https://projects.linuxmint.com/reference/git/cinnamon-tutorials/xlet-settings-ref.html
              "%
              | optional,
            description
              | refs."definitions.string-property-partial"
              | String
              | doc m%"
                A content of the header
                https://projects.linuxmint.com/reference/git/cinnamon-tutorials/xlet-settings-ref.html
              "%
              | optional,
            indent
              | Bool
              | doc m%"
                Whether to indent the header
                https://projects.linuxmint.com/reference/git/cinnamon-tutorials/xlet-settings-ref.html
              "%
              | optional,
            type | refs."definitions.type-property" | String | optional,
          },
      "definitions.iconfilechooser-definition" =
        {
            "default"
              | String
              | doc m%"
                A default value of the icon file chooser
                https://projects.linuxmint.com/reference/git/cinnamon-tutorials/xlet-settings-ref.html
              "%
              | optional,
            dependency
              | refs."definitions.string-property-partial"
              | String
              | doc m%"
                A checkbox or combobox the icon file chooser depends on
                https://projects.linuxmint.com/reference/git/cinnamon-tutorials/xlet-settings-ref.html
              "%
              | optional,
            description
              | refs."definitions.string-property-partial"
              | String
              | doc m%"
                A description of the the icon file chooser
                https://projects.linuxmint.com/reference/git/cinnamon-tutorials/xlet-settings-ref.html
              "%
              | optional,
            indent
              | Bool
              | doc m%"
                Whether to indent the icon file chooser
                https://projects.linuxmint.com/reference/git/cinnamon-tutorials/xlet-settings-ref.html
              "%
              | optional,
            tooltip
              | refs."definitions.string-property-partial"
              | String
              | doc m%"
                A tooltip of the the icon file chooser
                https://projects.linuxmint.com/reference/git/cinnamon-tutorials/xlet-settings-ref.html
              "%
              | optional,
            type | refs."definitions.type-property" | String | optional,
          },
      "definitions.keybinding-definition" =
        {
            "default"
              | String
              | doc m%"
                A default value of the keybinding
                https://projects.linuxmint.com/reference/git/cinnamon-tutorials/xlet-settings-ref.html
              "%
              | optional,
            dependency
              | refs."definitions.string-property-partial"
              | String
              | doc m%"
                A checkbox or combobox the keybinding depends on
                https://projects.linuxmint.com/reference/git/cinnamon-tutorials/xlet-settings-ref.html
              "%
              | optional,
            description
              | refs."definitions.string-property-partial"
              | String
              | doc m%"
                A description of the the keybinding
                https://projects.linuxmint.com/reference/git/cinnamon-tutorials/xlet-settings-ref.html
              "%
              | optional,
            indent
              | Bool
              | doc m%"
                Whether to indent the keybinding
                https://projects.linuxmint.com/reference/git/cinnamon-tutorials/xlet-settings-ref.html
              "%
              | optional,
            tooltip
              | refs."definitions.string-property-partial"
              | String
              | doc m%"
                A tooltip of the the keybinding
                https://projects.linuxmint.com/reference/git/cinnamon-tutorials/xlet-settings-ref.html
              "%
              | optional,
            type | refs."definitions.type-property" | String | optional,
          },
      "definitions.radiogroup-definition" =
        {
            "default"
              | std.contract.any_of [ Number, String ]
              | doc m%"
                A default value of the radiogroup from `options`
                https://projects.linuxmint.com/reference/git/cinnamon-tutorials/xlet-settings-ref.html
              "%
              | optional,
            dependency
              | refs."definitions.string-property-partial"
              | String
              | doc m%"
                A checkbox or combobox the radiogroup depends on
                https://projects.linuxmint.com/reference/git/cinnamon-tutorials/xlet-settings-ref.html
              "%
              | optional,
            description
              | refs."definitions.string-property-partial"
              | String
              | doc m%"
                A description of the the radiogroup
                https://projects.linuxmint.com/reference/git/cinnamon-tutorials/xlet-settings-ref.html
              "%
              | optional,
            indent
              | Bool
              | doc m%"
                Whether to indent the radiogroup
                https://projects.linuxmint.com/reference/git/cinnamon-tutorials/xlet-settings-ref.html
              "%
              | optional,
            options
              | js2n.record.MinProperties 1
              | { _ | std.contract.any_of [ Number, String ] }
              | js2n.record.FieldsMatch "\\S"
              | doc m%"
                Options of the the radiogroup
                https://projects.linuxmint.com/reference/git/cinnamon-tutorials/xlet-settings-ref.html
              "%
              | optional,
            tooltip
              | refs."definitions.string-property-partial"
              | String
              | doc m%"
                A tooltip of the the radiogroup
                https://projects.linuxmint.com/reference/git/cinnamon-tutorials/xlet-settings-ref.html
              "%
              | optional,
            type | refs."definitions.type-property" | String | optional,
          },
      "definitions.scale-definition" =
        {
            "default"
              | Number
              | doc m%"
                A default value of the scale
                https://projects.linuxmint.com/reference/git/cinnamon-tutorials/xlet-settings-ref.html
              "%
              | optional,
            dependency
              | refs."definitions.string-property-partial"
              | String
              | doc m%"
                A checkbox or combobox the scale depends on
                https://projects.linuxmint.com/reference/git/cinnamon-tutorials/xlet-settings-ref.html
              "%
              | optional,
            description
              | refs."definitions.string-property-partial"
              | String
              | doc m%"
                A description of the the scale
                https://projects.linuxmint.com/reference/git/cinnamon-tutorials/xlet-settings-ref.html
              "%
              | optional,
            indent
              | Bool
              | doc m%"
                Whether to indent the scale
                https://projects.linuxmint.com/reference/git/cinnamon-tutorials/xlet-settings-ref.html
              "%
              | optional,
            max
              | Number
              | doc m%"
                A maximum value of the scale
                https://projects.linuxmint.com/reference/git/cinnamon-tutorials/xlet-settings-ref.html
              "%
              | optional,
            min
              | Number
              | doc m%"
                A minimum value of the scale
                https://projects.linuxmint.com/reference/git/cinnamon-tutorials/xlet-settings-ref.html
              "%
              | optional,
            step
              | js2n.number.ExclusiveMinimum 0
              | doc m%"
                A step value of the scale
                https://projects.linuxmint.com/reference/git/cinnamon-tutorials/xlet-settings-ref.html
              "%
              | optional,
            tooltip
              | refs."definitions.string-property-partial"
              | String
              | doc m%"
                A tooltip of the the scale
                https://projects.linuxmint.com/reference/git/cinnamon-tutorials/xlet-settings-ref.html
              "%
              | optional,
            type | refs."definitions.type-property" | String | optional,
          },
      "definitions.separator-definition" =
        {
            dependency
              | refs."definitions.string-property-partial"
              | String
              | doc m%"
                A checkbox or combobox the separator depends on
                https://projects.linuxmint.com/reference/git/cinnamon-tutorials/xlet-settings-ref.html
              "%
              | optional,
            indent
              | Bool
              | doc m%"
                Whether to indent the separator
                https://projects.linuxmint.com/reference/git/cinnamon-tutorials/xlet-settings-ref.html
              "%
              | optional,
            type | refs."definitions.type-property" | String | optional,
          },
      "definitions.spinbutton-definition" =
        {
            "default"
              | Number
              | doc m%"
                A default value of the spinbutton
                https://projects.linuxmint.com/reference/git/cinnamon-tutorials/xlet-settings-ref.html
              "%
              | optional,
            dependency
              | refs."definitions.string-property-partial"
              | String
              | doc m%"
                A checkbox or combobox the spinbutton depends on
                https://projects.linuxmint.com/reference/git/cinnamon-tutorials/xlet-settings-ref.html
              "%
              | optional,
            description
              | refs."definitions.string-property-partial"
              | String
              | doc m%"
                A description of the the spinbutton
                https://projects.linuxmint.com/reference/git/cinnamon-tutorials/xlet-settings-ref.html
              "%
              | optional,
            indent
              | Bool
              | doc m%"
                Whether to indent the spinbutton
                https://projects.linuxmint.com/reference/git/cinnamon-tutorials/xlet-settings-ref.html
              "%
              | optional,
            max
              | Number
              | doc m%"
                A maximum value of the spinbutton
                https://projects.linuxmint.com/reference/git/cinnamon-tutorials/xlet-settings-ref.html
              "%
              | optional,
            min
              | Number
              | doc m%"
                A minimum value of the spinbutton
                https://projects.linuxmint.com/reference/git/cinnamon-tutorials/xlet-settings-ref.html
              "%
              | optional,
            step
              | js2n.number.ExclusiveMinimum 0
              | doc m%"
                A step value of the spinbutton
                https://projects.linuxmint.com/reference/git/cinnamon-tutorials/xlet-settings-ref.html
              "%
              | optional,
            tooltip
              | refs."definitions.string-property-partial"
              | String
              | doc m%"
                A tooltip of the the spinbutton
                https://projects.linuxmint.com/reference/git/cinnamon-tutorials/xlet-settings-ref.html
              "%
              | optional,
            type | refs."definitions.type-property" | String | optional,
            units
              | refs."definitions.string-property-partial"
              | String
              | doc m%"
                Units of the spinbutton
                https://projects.linuxmint.com/reference/git/cinnamon-tutorials/xlet-settings-ref.html
              "%
              | optional,
          },
      "definitions.string-property-partial" =
        std.contract.Sequence
            [ js2n.string.MinLength 1, js2n.string.Matches "\\S" ],
      "definitions.type-property" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'button,
                'separator,
                'header,
                'generic,
                'scale,
                'spinbutton,
                'combobox,
                'iconfilechooser,
                'filechooser,
                'radiogroup,
                'keybinding,
                'colorchooser,
                'entry,
                'checkbox
              |]
            ],
    }
    in
  std.contract.Sequence
      [
        {
          _ | std.contract.Sequence
            [
              js2n.IfThenElse
                (std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    js2n.record.Record
                      {
                        additional = 'Some Dyn,
                        patterns = {},
                        properties = { type = js2n.Const "checkbox", },
                        required = {},
                      },
                    Array Dyn
                  ]) refs."definitions.checkbox-definition" js2n.Always,
              js2n.IfThenElse
                (std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    js2n.record.Record
                      {
                        additional = 'Some Dyn,
                        patterns = {},
                        properties = { type = js2n.Const "entry", },
                        required = {},
                      },
                    Array Dyn
                  ]) refs."definitions.entry-definition" js2n.Always,
              js2n.IfThenElse
                (std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    js2n.record.Record
                      {
                        additional = 'Some Dyn,
                        patterns = {},
                        properties = { type = js2n.Const "colorchooser", },
                        required = {},
                      },
                    Array Dyn
                  ]) refs."definitions.colorchooser-definition" js2n.Always,
              js2n.IfThenElse
                (std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    js2n.record.Record
                      {
                        additional = 'Some Dyn,
                        patterns = {},
                        properties = { type = js2n.Const "keybinding", },
                        required = {},
                      },
                    Array Dyn
                  ]) refs."definitions.keybinding-definition" js2n.Always,
              js2n.IfThenElse
                (std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    js2n.record.Record
                      {
                        additional = 'Some Dyn,
                        patterns = {},
                        properties = { type = js2n.Const "radiogroup", },
                        required = {},
                      },
                    Array Dyn
                  ]) refs."definitions.radiogroup-definition" js2n.Always,
              js2n.IfThenElse
                (std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    js2n.record.Record
                      {
                        additional = 'Some Dyn,
                        patterns = {},
                        properties = { type = js2n.Const "filechooser", },
                        required = {},
                      },
                    Array Dyn
                  ]) refs."definitions.filechooser-definition" js2n.Always,
              js2n.IfThenElse
                (std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    js2n.record.Record
                      {
                        additional = 'Some Dyn,
                        patterns = {},
                        properties = { type = js2n.Const "iconfilechooser", },
                        required = {},
                      },
                    Array Dyn
                  ]) refs."definitions.iconfilechooser-definition" js2n.Always,
              js2n.IfThenElse
                (std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    js2n.record.Record
                      {
                        additional = 'Some Dyn,
                        patterns = {},
                        properties = { type = js2n.Const "combobox", },
                        required = {},
                      },
                    Array Dyn
                  ]) refs."definitions.combobox-definition" js2n.Always,
              js2n.IfThenElse
                (std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    js2n.record.Record
                      {
                        additional = 'Some Dyn,
                        patterns = {},
                        properties = { type = js2n.Const "spinbutton", },
                        required = {},
                      },
                    Array Dyn
                  ]) refs."definitions.spinbutton-definition" js2n.Always,
              js2n.IfThenElse
                (std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    js2n.record.Record
                      {
                        additional = 'Some Dyn,
                        patterns = {},
                        properties = { type = js2n.Const "scale", },
                        required = {},
                      },
                    Array Dyn
                  ]) refs."definitions.scale-definition" js2n.Always,
              js2n.IfThenElse
                (std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    js2n.record.Record
                      {
                        additional = 'Some Dyn,
                        patterns = {},
                        properties = { type = js2n.Const "generic", },
                        required = {},
                      },
                    Array Dyn
                  ]) refs."definitions.generic-definition" js2n.Always,
              js2n.IfThenElse
                (std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    js2n.record.Record
                      {
                        additional = 'Some Dyn,
                        patterns = {},
                        properties = { type = js2n.Const "header", },
                        required = {},
                      },
                    Array Dyn
                  ]) refs."definitions.header-definition" js2n.Always,
              js2n.IfThenElse
                (std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    js2n.record.Record
                      {
                        additional = 'Some Dyn,
                        patterns = {},
                        properties = { type = js2n.Const "separator", },
                        required = {},
                      },
                    Array Dyn
                  ]) refs."definitions.separator-definition" js2n.Always,
              js2n.IfThenElse
                (std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    js2n.record.Record
                      {
                        additional = 'Some Dyn,
                        patterns = {},
                        properties = { type = js2n.Const "button", },
                        required = {},
                      },
                    Array Dyn
                  ]) refs."definitions.button-definition" js2n.Always,
              js2n.record.Required [ "type" ]
            ]
        },
        js2n.record.FieldsMatch "\\S"
      ]