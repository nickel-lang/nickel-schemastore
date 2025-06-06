# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "properties.actions.items.properties.flow.items" =
        std.contract.Sequence
            [
              js2n.OneOf
                [
                  js2n.Always,
                  js2n.Always,
                  js2n.Always,
                  js2n.Always,
                  js2n.Always,
                  js2n.Always,
                  js2n.Always,
                  js2n.Always,
                  js2n.Always,
                  js2n.Always,
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
                                                                        'Some
                                                                            Dyn,
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
                                                        requiredMessage =
                                                          String,
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
                                                                      (std.contract.Sequence
                                                                        [
                                                                          refs."properties.actions.items.properties.flow.items.oneOf.10.properties.form.additionalProperties.oneOf.0",
                                                                          {
                                                                            _ | Dyn
                                                                          }
                                                                        ]),
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
                  js2n.Always,
                  js2n.Always,
                  js2n.Always,
                  js2n.Always,
                  js2n.Always,
                  js2n.Always,
                  js2n.Always,
                  js2n.Always,
                  js2n.Always,
                  js2n.Always,
                  js2n.Always,
                  js2n.Always,
                  js2n.Always,
                  js2n.Always,
                  js2n.Always,
                  js2n.Always,
                  js2n.Always,
                  js2n.Always,
                  js2n.Always,
                  js2n.Always,
                  js2n.Always,
                  js2n.Always,
                  js2n.Always,
                  js2n.Always,
                  js2n.Always,
                  js2n.Always,
                  js2n.Always,
                  js2n.Always,
                  js2n.Always,
                  js2n.Always,
                  js2n.Always,
                  js2n.Always,
                  js2n.Always,
                  js2n.Always,
                  js2n.Always,
                  js2n.Always,
                  js2n.Always,
                  js2n.Always,
                  js2n.Always,
                  js2n.Always,
                  js2n.Always,
                  js2n.Always,
                  js2n.Always,
                  js2n.Always,
                  js2n.Always,
                  js2n.Always,
                  js2n.Always,
                  js2n.Always,
                  js2n.Always,
                  js2n.Always,
                  js2n.Always,
                  js2n.Always,
                  js2n.Always,
                  js2n.Always,
                  js2n.Always,
                  js2n.Always,
                  js2n.Always,
                  js2n.Always,
                  js2n.Always,
                  js2n.Always,
                  js2n.Always
                ],
              js2n.record.Required [ "step" ]
            ],
      "properties.actions.items.properties.flow.items.oneOf.10.properties.form.additionalProperties.oneOf.0" =
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
      actions
        | Array
          {
            category
              | String
              | doc "Category for sub-grouping actions"
              | optional,
            context
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      std.enum.TagOrString,
                      [| 'dashboard, 'dwp, 'story, 'report, 'all |]
                    ],
                  Array (
                    std.contract.Sequence
                      [
                        std.enum.TagOrString,
                        [| 'dashboard, 'dwp, 'story, 'report, 'all |]
                      ]
                  )
                ]
              | doc "Document context where this action appears"
              | optional,
            flow
              | Array (
                std.contract.Sequence
                  [
                    js2n.OneOf
                      [
                        std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            { _ | Dyn },
                            Array Dyn,
                            Number,
                            String
                          ],
                        std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            { _ | Dyn },
                            Array Dyn,
                            Number,
                            String
                          ],
                        std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            { _ | Dyn },
                            Array Dyn,
                            Number,
                            String
                          ],
                        std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            { _ | Dyn },
                            Array Dyn,
                            Number,
                            String
                          ],
                        std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            { _ | Dyn },
                            Array Dyn,
                            Number,
                            String
                          ],
                        std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            { _ | Dyn },
                            Array Dyn,
                            Number,
                            String
                          ],
                        std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            { _ | Dyn },
                            Array Dyn,
                            Number,
                            String
                          ],
                        std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            { _ | Dyn },
                            Array Dyn,
                            Number,
                            String
                          ],
                        std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            { _ | Dyn },
                            Array Dyn,
                            Number,
                            String
                          ],
                        std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            { _ | Dyn },
                            Array Dyn,
                            Number,
                            String
                          ],
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
                                                              maxSizeMessage =
                                                                String,
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
                                                                              'Some
                                                                                  Dyn,
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
                                                              placeholder =
                                                                String,
                                                              prevText = String,
                                                              required = Bool,
                                                              requiredMessage =
                                                                String,
                                                              showDeletions =
                                                                Bool,
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
                                                                        'Some
                                                                            Dyn,
                                                                      patterns =
                                                                        {},
                                                                      properties =
                                                                        {
                                                                            errorMessage =
                                                                              String,
                                                                            pattern =
                                                                              String,
                                                                          },
                                                                      required =
                                                                        {},
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
                                                                      patterns =
                                                                        {},
                                                                      properties =
                                                                        {},
                                                                      required =
                                                                        {},
                                                                    },
                                                            },
                                                        required =
                                                          { type = true, },
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
                                                                            refs."properties.actions.items.properties.flow.items.oneOf.10.properties.form.additionalProperties.oneOf.0",
                                                                      patterns =
                                                                        {},
                                                                      properties =
                                                                        {},
                                                                      required =
                                                                        {},
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
                          [
                            js2n.Null,
                            Bool,
                            { _ | Dyn },
                            Array Dyn,
                            Number,
                            String
                          ],
                        std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            { _ | Dyn },
                            Array Dyn,
                            Number,
                            String
                          ],
                        std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            { _ | Dyn },
                            Array Dyn,
                            Number,
                            String
                          ],
                        std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            { _ | Dyn },
                            Array Dyn,
                            Number,
                            String
                          ],
                        std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            { _ | Dyn },
                            Array Dyn,
                            Number,
                            String
                          ],
                        std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            { _ | Dyn },
                            Array Dyn,
                            Number,
                            String
                          ],
                        std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            { _ | Dyn },
                            Array Dyn,
                            Number,
                            String
                          ],
                        std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            { _ | Dyn },
                            Array Dyn,
                            Number,
                            String
                          ],
                        std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            { _ | Dyn },
                            Array Dyn,
                            Number,
                            String
                          ],
                        std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            { _ | Dyn },
                            Array Dyn,
                            Number,
                            String
                          ],
                        std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            { _ | Dyn },
                            Array Dyn,
                            Number,
                            String
                          ],
                        std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            { _ | Dyn },
                            Array Dyn,
                            Number,
                            String
                          ],
                        std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            { _ | Dyn },
                            Array Dyn,
                            Number,
                            String
                          ],
                        std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            { _ | Dyn },
                            Array Dyn,
                            Number,
                            String
                          ],
                        std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            { _ | Dyn },
                            Array Dyn,
                            Number,
                            String
                          ],
                        std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            { _ | Dyn },
                            Array Dyn,
                            Number,
                            String
                          ],
                        std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            { _ | Dyn },
                            Array Dyn,
                            Number,
                            String
                          ],
                        std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            { _ | Dyn },
                            Array Dyn,
                            Number,
                            String
                          ],
                        std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            { _ | Dyn },
                            Array Dyn,
                            Number,
                            String
                          ],
                        std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            { _ | Dyn },
                            Array Dyn,
                            Number,
                            String
                          ],
                        std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            { _ | Dyn },
                            Array Dyn,
                            Number,
                            String
                          ],
                        std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            { _ | Dyn },
                            Array Dyn,
                            Number,
                            String
                          ],
                        std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            { _ | Dyn },
                            Array Dyn,
                            Number,
                            String
                          ],
                        std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            { _ | Dyn },
                            Array Dyn,
                            Number,
                            String
                          ],
                        std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            { _ | Dyn },
                            Array Dyn,
                            Number,
                            String
                          ],
                        std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            { _ | Dyn },
                            Array Dyn,
                            Number,
                            String
                          ],
                        std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            { _ | Dyn },
                            Array Dyn,
                            Number,
                            String
                          ],
                        std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            { _ | Dyn },
                            Array Dyn,
                            Number,
                            String
                          ],
                        std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            { _ | Dyn },
                            Array Dyn,
                            Number,
                            String
                          ],
                        std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            { _ | Dyn },
                            Array Dyn,
                            Number,
                            String
                          ],
                        std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            { _ | Dyn },
                            Array Dyn,
                            Number,
                            String
                          ],
                        std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            { _ | Dyn },
                            Array Dyn,
                            Number,
                            String
                          ],
                        std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            { _ | Dyn },
                            Array Dyn,
                            Number,
                            String
                          ],
                        std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            { _ | Dyn },
                            Array Dyn,
                            Number,
                            String
                          ],
                        std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            { _ | Dyn },
                            Array Dyn,
                            Number,
                            String
                          ],
                        std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            { _ | Dyn },
                            Array Dyn,
                            Number,
                            String
                          ],
                        std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            { _ | Dyn },
                            Array Dyn,
                            Number,
                            String
                          ],
                        std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            { _ | Dyn },
                            Array Dyn,
                            Number,
                            String
                          ],
                        std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            { _ | Dyn },
                            Array Dyn,
                            Number,
                            String
                          ],
                        std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            { _ | Dyn },
                            Array Dyn,
                            Number,
                            String
                          ],
                        std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            { _ | Dyn },
                            Array Dyn,
                            Number,
                            String
                          ],
                        std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            { _ | Dyn },
                            Array Dyn,
                            Number,
                            String
                          ],
                        std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            { _ | Dyn },
                            Array Dyn,
                            Number,
                            String
                          ],
                        std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            { _ | Dyn },
                            Array Dyn,
                            Number,
                            String
                          ],
                        std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            { _ | Dyn },
                            Array Dyn,
                            Number,
                            String
                          ],
                        std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            { _ | Dyn },
                            Array Dyn,
                            Number,
                            String
                          ],
                        std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            { _ | Dyn },
                            Array Dyn,
                            Number,
                            String
                          ],
                        std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            { _ | Dyn },
                            Array Dyn,
                            Number,
                            String
                          ],
                        std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            { _ | Dyn },
                            Array Dyn,
                            Number,
                            String
                          ],
                        std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            { _ | Dyn },
                            Array Dyn,
                            Number,
                            String
                          ],
                        std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            { _ | Dyn },
                            Array Dyn,
                            Number,
                            String
                          ],
                        std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            { _ | Dyn },
                            Array Dyn,
                            Number,
                            String
                          ],
                        std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            { _ | Dyn },
                            Array Dyn,
                            Number,
                            String
                          ],
                        std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            { _ | Dyn },
                            Array Dyn,
                            Number,
                            String
                          ],
                        std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            { _ | Dyn },
                            Array Dyn,
                            Number,
                            String
                          ],
                        std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            { _ | Dyn },
                            Array Dyn,
                            Number,
                            String
                          ],
                        std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            { _ | Dyn },
                            Array Dyn,
                            Number,
                            String
                          ],
                        std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            { _ | Dyn },
                            Array Dyn,
                            Number,
                            String
                          ],
                        std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            { _ | Dyn },
                            Array Dyn,
                            Number,
                            String
                          ],
                        std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            { _ | Dyn },
                            Array Dyn,
                            Number,
                            String
                          ],
                        std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            { _ | Dyn },
                            Array Dyn,
                            Number,
                            String
                          ]
                      ],
                    js2n.record.Required [ "step" ]
                  ]
              )
              | doc "List of steps to execute",
            hidden
              | Bool
              | doc "Whether this action is hidden from UI"
              | optional,
            icon | String | doc "Icon HTML for the action" | optional,
            id | String | doc "Unique identifier for the action" | optional,
            isAvailable
              | String
              | doc "Condition for when action is available"
              | optional,
            keywords
              | String
              | doc "Search keywords for finding this action"
              | optional,
            onError
              | Array (
                std.contract.Sequence
                  [
                    refs."properties.actions.items.properties.flow.items",
                    { _ | Dyn }
                  ]
              )
              | doc "Steps to execute if an error occurs"
              | optional,
            panelContext
              | Array
                {
                  forElement
                    | String
                    | doc "Element type for matching"
                    | optional,
                  forTextSelection
                    | Bool
                    | doc "Applies to text selections"
                    | optional,
                  forXPath
                    | String
                    | doc "XPath for context matching"
                    | optional,
                  ..
                }
              | doc "Context specifications for panel display"
              | optional,
            title | String | doc "Display title for the action",
            ..
          }
        | doc "List of actions in this section",
      app
        | std.enum.TagOrString
        | [| 'standalone, 'swing, 'prime |]
        | doc "Application where this section applies"
        | optional,
      category | String | doc "Category for grouping sections" | optional,
      context
        | std.contract.any_of
          [
            std.contract.Sequence
              [
                std.enum.TagOrString,
                [| 'dashboard, 'dwp, 'story, 'report, 'all |]
              ],
            Array (
              std.contract.Sequence
                [
                  std.enum.TagOrString,
                  [| 'dashboard, 'dwp, 'story, 'report, 'all |]
                ]
            )
          ]
        | doc "Document context where this section appears"
        | optional,
      hidden | Bool | doc "Whether this section is hidden from UI" | optional,
      icon | String | doc "Icon html for this section" | optional,
      keywords | String | doc "Search keywords for finding actions" | optional,
      section | String | doc "Section identifier",
      ..
    }