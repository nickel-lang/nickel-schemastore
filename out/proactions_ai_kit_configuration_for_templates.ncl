# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "additionalProperties.items.oneOf.10.properties.form.additionalProperties.oneOf.0" =
        {
            accept
              | String
              | doc "Accepted file types for file input"
              | optional,
            "default"
              | std.contract.any_of [ Bool, Number, String ]
              | doc "Default value for the field"
              | optional,
            html | String | doc "HTML content for html component" | optional,
            label | String | doc "Label for the field" | optional,
            max | Number | doc "Maximum value for number inputs" | optional,
            maxSize
              | Number
              | doc "Maximum file size in bytes for file input"
              | optional,
            maxSizeMessage
              | String
              | doc "Error message for file size exceeding maxSize"
              | optional,
            min | Number | doc "Minimum value for number inputs" | optional,
            mode
              | std.enum.TagOrString
              | [| 'sentences, 'lines, 'words, 'chars |]
              | doc "Mode for diff component"
              | optional,
            multiple
              | Bool
              | doc "Whether multiple selection is allowed (for select and file inputs)"
              | optional,
            options
              | js2n.OneOf
                [
                  js2n.array.ArrayOf String,
                  js2n.array.ArrayOf
                    (js2n.record.Record
                      {
                        additional = 'Some Dyn,
                        patterns = {},
                        properties = { key = String, value = String, },
                        required = { key = true, value = true, },
                      })
                ]
              | doc "Options for select, radio components"
              | optional,
            placeholder
              | String
              | doc "Placeholder text for input fields"
              | optional,
            prevText
              | String
              | doc "Previous text for diff component"
              | optional,
            required | Bool | doc "Whether the field is required" | optional,
            requiredMessage
              | String
              | doc "Custom message to display if required field is empty"
              | optional,
            showDeletions
              | Bool
              | doc "Whether to show deletions in diff component"
              | optional,
            step | Number | doc "Step size for the range input" | optional,
            text
              | String
              | doc "Text content for headline, markdown, or diff components"
              | optional,
            tooltip | String | doc "Tooltip text for the field" | optional,
            type
              | std.enum.TagOrString
              | [|
                'markdown,
                'diff,
                'html,
                'hr,
                'headline,
                'file,
                'number,
                'textarea,
                'color,
                'range,
                'datetime,
                'date,
                'checkbox,
                'radio,
                'select,
                'password,
                'text
              |]
              | doc "Type of form component",
            validation
              | {
                errorMessage
                  | String
                  | doc "Error message to display when validation fails"
                  | optional,
                pattern
                  | String
                  | doc "Regular expression pattern for validation"
                  | optional,
                ..
              }
              | doc "Validation rules for the field"
              | optional,
            visibleIf
              | { _ | std.contract.any_of [ Bool, Number, String ] }
              | doc "Conditional visibility rules for the field"
              | optional,
            ..
          },
    }
    in
  {
      _ | Array (
        std.contract.Sequence
          [
            js2n.OneOf
              [
                std.contract.any_of
                  [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ],
                std.contract.any_of
                  [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ],
                std.contract.any_of
                  [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ],
                std.contract.any_of
                  [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ],
                std.contract.any_of
                  [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ],
                std.contract.any_of
                  [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ],
                std.contract.any_of
                  [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ],
                std.contract.any_of
                  [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ],
                std.contract.any_of
                  [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ],
                std.contract.any_of
                  [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ],
                js2n.record.Record
                  {
                    additional = 'Some Dyn,
                    patterns = {},
                    properties =
                      {
                          buttons =
                            js2n.array.ArrayOf
                                (js2n.record.Record
                                  {
                                    additional = 'Some Dyn,
                                    patterns = {},
                                    properties =
                                      {
                                          class = String,
                                          flowAttribute = String,
                                          label = String,
                                          name = String,
                                          title = String,
                                          type =
                                            std.contract.Sequence
                                                [
                                                  std.enum.TagOrString,
                                                  [| 'cancel, 'submit |]
                                                ],
                                        },
                                    required = { type = true, },
                                  }),
                          form =
                            js2n.record.Record
                                {
                                  additional =
                                    'Some
                                        (js2n.OneOf
                                          [
                                            js2n.record.Record
                                              {
                                                additional = 'Some Dyn,
                                                patterns = {},
                                                properties =
                                                  {
                                                      accept = String,
                                                      "default" =
                                                        std.contract.any_of
                                                            [
                                                              Bool,
                                                              Number,
                                                              String
                                                            ],
                                                      html = String,
                                                      label = String,
                                                      max = Number,
                                                      maxSize = Number,
                                                      maxSizeMessage = String,
                                                      min = Number,
                                                      mode =
                                                        std.contract.Sequence
                                                            [
                                                              std.enum.TagOrString,
                                                              [|
                                                                'sentences,
                                                                'lines,
                                                                'words,
                                                                'chars
                                                              |]
                                                            ],
                                                      multiple = Bool,
                                                      options =
                                                        js2n.OneOf
                                                            [
                                                              js2n.array.ArrayOf
                                                                String,
                                                              js2n.array.ArrayOf
                                                                (js2n.record.Record
                                                                  {
                                                                    additional =
                                                                      'Some Dyn,
                                                                    patterns =
                                                                      {},
                                                                    properties =
                                                                      {
                                                                          key =
                                                                            String,
                                                                          value =
                                                                            String,
                                                                        },
                                                                    required =
                                                                      {
                                                                          key =
                                                                            true,
                                                                          value =
                                                                            true,
                                                                        },
                                                                  })
                                                            ],
                                                      placeholder = String,
                                                      prevText = String,
                                                      required = Bool,
                                                      requiredMessage = String,
                                                      showDeletions = Bool,
                                                      step = Number,
                                                      text = String,
                                                      tooltip = String,
                                                      type =
                                                        std.contract.Sequence
                                                            [
                                                              std.enum.TagOrString,
                                                              [|
                                                                'markdown,
                                                                'diff,
                                                                'html,
                                                                'hr,
                                                                'headline,
                                                                'file,
                                                                'number,
                                                                'textarea,
                                                                'color,
                                                                'range,
                                                                'datetime,
                                                                'date,
                                                                'checkbox,
                                                                'radio,
                                                                'select,
                                                                'password,
                                                                'text
                                                              |]
                                                            ],
                                                      validation =
                                                        js2n.record.Record
                                                            {
                                                              additional =
                                                                'Some Dyn,
                                                              patterns = {},
                                                              properties =
                                                                {
                                                                    errorMessage =
                                                                      String,
                                                                    pattern =
                                                                      String,
                                                                  },
                                                              required = {},
                                                            },
                                                      visibleIf =
                                                        js2n.record.Record
                                                            {
                                                              additional =
                                                                'Some
                                                                    (std.contract.any_of
                                                                      [
                                                                        Bool,
                                                                        Number,
                                                                        String
                                                                      ]),
                                                              patterns = {},
                                                              properties = {},
                                                              required = {},
                                                            },
                                                    },
                                                required = { type = true, },
                                              },
                                            js2n.record.Record
                                              {
                                                additional = 'Some Dyn,
                                                patterns = {},
                                                properties =
                                                  {
                                                      fields =
                                                        js2n.record.Record
                                                            {
                                                              additional =
                                                                'Some
                                                                    refs."additionalProperties.items.oneOf.10.properties.form.additionalProperties.oneOf.0",
                                                              patterns = {},
                                                              properties = {},
                                                              required = {},
                                                            },
                                                      label = String,
                                                    },
                                                required =
                                                  {
                                                      fields = true,
                                                      label = true,
                                                    },
                                              }
                                          ]),
                                  patterns = {},
                                  properties = {},
                                  required = {},
                                },
                          step =
                            std.contract.Sequence
                                [ std.enum.TagOrString, [| 'FORM |] ],
                          title = String,
                        },
                    required = { form = true, step = true, },
                  },
                std.contract.any_of
                  [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ],
                std.contract.any_of
                  [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ],
                std.contract.any_of
                  [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ],
                std.contract.any_of
                  [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ],
                std.contract.any_of
                  [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ],
                std.contract.any_of
                  [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ],
                std.contract.any_of
                  [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ],
                std.contract.any_of
                  [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ],
                std.contract.any_of
                  [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ],
                std.contract.any_of
                  [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ],
                std.contract.any_of
                  [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ],
                std.contract.any_of
                  [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ],
                std.contract.any_of
                  [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ],
                std.contract.any_of
                  [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ],
                std.contract.any_of
                  [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ],
                std.contract.any_of
                  [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ],
                std.contract.any_of
                  [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ],
                std.contract.any_of
                  [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ],
                std.contract.any_of
                  [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ],
                std.contract.any_of
                  [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ],
                std.contract.any_of
                  [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ],
                std.contract.any_of
                  [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ],
                std.contract.any_of
                  [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ],
                std.contract.any_of
                  [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ],
                std.contract.any_of
                  [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ],
                std.contract.any_of
                  [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ],
                std.contract.any_of
                  [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ],
                std.contract.any_of
                  [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ],
                std.contract.any_of
                  [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ],
                std.contract.any_of
                  [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ],
                std.contract.any_of
                  [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ],
                std.contract.any_of
                  [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ],
                std.contract.any_of
                  [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ],
                std.contract.any_of
                  [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ],
                std.contract.any_of
                  [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ],
                std.contract.any_of
                  [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ],
                std.contract.any_of
                  [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ],
                std.contract.any_of
                  [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ],
                std.contract.any_of
                  [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ],
                std.contract.any_of
                  [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ],
                std.contract.any_of
                  [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ],
                std.contract.any_of
                  [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ],
                std.contract.any_of
                  [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ],
                std.contract.any_of
                  [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ],
                std.contract.any_of
                  [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ],
                std.contract.any_of
                  [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ],
                std.contract.any_of
                  [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ],
                std.contract.any_of
                  [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ],
                std.contract.any_of
                  [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ],
                std.contract.any_of
                  [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ],
                std.contract.any_of
                  [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ],
                std.contract.any_of
                  [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ],
                std.contract.any_of
                  [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ],
                std.contract.any_of
                  [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ],
                std.contract.any_of
                  [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ],
                std.contract.any_of
                  [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ],
                std.contract.any_of
                  [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ],
                std.contract.any_of
                  [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ],
                std.contract.any_of
                  [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ],
                std.contract.any_of
                  [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ],
                std.contract.any_of
                  [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
              ],
            js2n.record.Required [ "step" ]
          ]
      )
    }