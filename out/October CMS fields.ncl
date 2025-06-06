# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.datatableColumns" =
        js2n.record.Record
            {
              additional = 'Some Dyn,
              patterns =
                {
                    "^[^\\s]*$" =
                      std.contract.Sequence
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
                                      properties =
                                        {
                                            type =
                                              std.contract.Sequence
                                                  [
                                                    std.enum.TagOrString,
                                                    [|
                                                      'autocomplete,
                                                      'dropdown
                                                    |]
                                                  ],
                                          },
                                      required = {},
                                    },
                                  Array Dyn
                                ])
                              (std.contract.any_of
                                [
                                  js2n.Null,
                                  Bool,
                                  Number,
                                  String,
                                  {
                                    options
                                      | js2n.record.Record
                                        {
                                          additional = 'Some Dyn,
                                          patterns = { ".+" = String, },
                                          properties = {},
                                          required = {},
                                        }
                                      | doc "specifies the AJAX handler that will return the available options, as an array. The array key is used as the value of the option, and the array value is used as the option label."
                                      | optional,
                                    ..
                                  },
                                  Array Dyn
                                ]) js2n.Always,
                            {
                              readOnly
                                | Bool
                                | doc "whether this column is read-only"
                                | optional,
                              title
                                | String
                                | doc "defines the column's title."
                                | optional,
                              type
                                | std.enum.TagOrString
                                | [|
                                  'autocomplete,
                                  'dropdown,
                                  'checkbox,
                                  'string
                                |]
                                | doc "defines how this field should be rendered"
                                | optional,
                              validation
                                | {
                                  float
                                    | {
                                      allowNegative | Bool | optional,
                                      message | String | optional,
                                      ..
                                    }
                                    | doc "Validates the data as a float. An optional boolean allowNegative attribute can be provided, allowing for negative float numbers"
                                    | optional,
                                  integer
                                    | {
                                      allowNegative | Bool | optional,
                                      message | String | optional,
                                      ..
                                    }
                                    | doc "Validates the data as an integer. An optional boolean allowNegative attribute can be provided, allowing for negative integers."
                                    | optional,
                                  length
                                    | {
                                      max | std.number.Integer | optional,
                                      message | String | optional,
                                      min | std.number.Integer | optional,
                                      ..
                                    }
                                    | doc "Validates the data to be of a certain length. An integer min and max attribute must be provided, representing the minimum and maximum number of characters that must be entered."
                                    | optional,
                                  regex
                                    | {
                                      message | String | optional,
                                      pattern | String | optional,
                                      ..
                                    }
                                    | doc "Validates the data against a regular expression. A string pattern attribute must be provided, defining the regular expression to test the data against."
                                    | optional,
                                  required
                                    | { message | String | optional, .. }
                                    | doc "Validates that the data must be entered before saving."
                                    | optional,
                                  ..
                                }
                                | optional,
                              width | std.number.Integer | optional,
                              ..
                            }
                          ],
                  },
              properties = {},
              required = {},
            },
      "definitions.fields" =
        js2n.record.Record
            {
              additional = 'Some Dyn,
              patterns =
                {
                    "^[^\\s]*$" =
                      std.contract.Sequence
                          [
                            std.contract.any_of
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
                                          properties =
                                            {
                                                type =
                                                  std.contract.Sequence
                                                      [
                                                        std.enum.TagOrString,
                                                        [| 'number |]
                                                      ],
                                              },
                                          required = {},
                                        },
                                      Array Dyn
                                    ])
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
                                          properties =
                                            {
                                                max = std.number.Integer,
                                                min = std.number.Integer,
                                                step = std.number.Integer,
                                              },
                                          required = {},
                                        },
                                      Array Dyn
                                    ]) js2n.Always,
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
                                          properties =
                                            {
                                                type =
                                                  std.contract.Sequence
                                                      [
                                                        std.enum.TagOrString,
                                                        [| 'dropdown |]
                                                      ],
                                              },
                                          required = {},
                                        },
                                      Array Dyn
                                    ])
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
                                          properties =
                                            {
                                                emptyOption = String,
                                                options =
                                                  std.contract.any_of
                                                      [
                                                        js2n.record.Record
                                                          {
                                                            additional =
                                                              'Some Dyn,
                                                            patterns =
                                                              {
                                                                  ".+" = String,
                                                                },
                                                            properties = {},
                                                            required = {},
                                                          },
                                                        String
                                                      ],
                                                placeholder = String,
                                                showSearch = Bool,
                                              },
                                          required = {},
                                        },
                                      Array Dyn
                                    ]) js2n.Always,
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
                                          properties =
                                            {
                                                type =
                                                  std.contract.Sequence
                                                      [
                                                        std.enum.TagOrString,
                                                        [|
                                                          'checkboxlist,
                                                          'balloon-selector,
                                                          'radio
                                                        |]
                                                      ],
                                              },
                                          required = {},
                                        },
                                      Array Dyn
                                    ])
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
                                          properties =
                                            {
                                                options =
                                                  std.contract.any_of
                                                      [
                                                        js2n.record.Record
                                                          {
                                                            additional =
                                                              'Some Dyn,
                                                            patterns =
                                                              {
                                                                  ".+" = String,
                                                                },
                                                            properties = {},
                                                            required = {},
                                                          },
                                                        String
                                                      ],
                                              },
                                          required = {},
                                        },
                                      Array Dyn
                                    ]) js2n.Always,
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
                                          properties =
                                            {
                                                type =
                                                  std.contract.Sequence
                                                      [
                                                        std.enum.TagOrString,
                                                        [| 'switch |]
                                                      ],
                                              },
                                          required = {},
                                        },
                                      Array Dyn
                                    ])
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
                                          properties =
                                            { off = String, on = String, },
                                          required = {},
                                        },
                                      Array Dyn
                                    ]) js2n.Always,
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
                                          properties =
                                            {
                                                type =
                                                  std.contract.Sequence
                                                      [
                                                        std.enum.TagOrString,
                                                        [| 'hint, 'partial |]
                                                      ],
                                              },
                                          required = {},
                                        },
                                      Array Dyn
                                    ])
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
                                          properties = { path = String, },
                                          required = {},
                                        },
                                      Array Dyn
                                    ]) js2n.Always,
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
                                          properties =
                                            {
                                                type =
                                                  std.contract.Sequence
                                                      [
                                                        std.enum.TagOrString,
                                                        [| 'codeeditor |]
                                                      ],
                                              },
                                          required = {},
                                        },
                                      Array Dyn
                                    ])
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
                                          properties =
                                            {
                                                fontSize = Number,
                                                language =
                                                  std.contract.any_of
                                                      [
                                                        std.contract.Sequence
                                                          [
                                                            std.enum.TagOrString,
                                                            [|
                                                              'html,
                                                              'js,
                                                              'css,
                                                              'php
                                                            |]
                                                          ],
                                                        String
                                                      ],
                                                showGutter = Bool,
                                                wrapWords = Bool,
                                              },
                                          required = {},
                                        },
                                      Array Dyn
                                    ]) js2n.Always,
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
                                          properties =
                                            {
                                                type =
                                                  std.contract.Sequence
                                                      [
                                                        std.enum.TagOrString,
                                                        [| 'colorpicker |]
                                                      ],
                                              },
                                          required = {},
                                        },
                                      Array Dyn
                                    ])
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
                                          properties =
                                            {
                                                allowEmpty = Bool,
                                                availableColors =
                                                  std.contract.any_of
                                                      [ String, Array Dyn ],
                                              },
                                          required = {},
                                        },
                                      Array Dyn
                                    ]) js2n.Always,
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
                                          properties =
                                            {
                                                type =
                                                  std.contract.Sequence
                                                      [
                                                        std.enum.TagOrString,
                                                        [| 'datatable |]
                                                      ],
                                              },
                                          required = {},
                                        },
                                      Array Dyn
                                    ])
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
                                          properties =
                                            {
                                                adding = Bool,
                                                btnAddRowBelowLabel = String,
                                                btnAddRowLabel = String,
                                                btnDeleteRowLabel = String,
                                                columns =
                                                  std.contract.Sequence
                                                      [
                                                        refs."definitions.datatableColumns",
                                                        { _ | Dyn }
                                                      ],
                                                deleting = Bool,
                                                dynamicHeight = String,
                                                fieldName = String,
                                                height =
                                                  std.contract.any_of
                                                      [
                                                        Bool,
                                                        std.number.Integer
                                                      ],
                                                keyFrom = String,
                                                postbackHandlerName = String,
                                                recordsPerPage =
                                                  std.contract.any_of
                                                      [
                                                        Bool,
                                                        std.number.Integer
                                                      ],
                                                searching =
                                                  std.contract.any_of
                                                      [
                                                        js2n.Null,
                                                        Bool,
                                                        Number,
                                                        String,
                                                        { _ | Dyn },
                                                        Array Dyn
                                                      ],
                                                toolbar = Array Dyn,
                                              },
                                          required = {},
                                        },
                                      Array Dyn
                                    ]) js2n.Always,
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
                                          properties =
                                            {
                                                type =
                                                  std.contract.Sequence
                                                      [
                                                        std.enum.TagOrString,
                                                        [| 'datepicker |]
                                                      ],
                                              },
                                          required = {},
                                        },
                                      Array Dyn
                                    ])
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
                                          properties =
                                            {
                                                firstDay = std.number.Integer,
                                                format = String,
                                                ignoreTimezone = Bool,
                                                maxDate = String,
                                                minDate = String,
                                                mode =
                                                  std.contract.Sequence
                                                      [
                                                        std.enum.TagOrString,
                                                        [|
                                                          'time,
                                                          'datetime,
                                                          'date
                                                        |]
                                                      ],
                                                showWeekNumber = Bool,
                                              },
                                          required = {},
                                        },
                                      Array Dyn
                                    ]) js2n.Always,
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
                                          properties =
                                            {
                                                type =
                                                  std.contract.Sequence
                                                      [
                                                        std.enum.TagOrString,
                                                        [| 'fileupload |]
                                                      ],
                                              },
                                          required = {},
                                        },
                                      Array Dyn
                                    ])
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
                                          properties =
                                            {
                                                attachOnUpload = Bool,
                                                fileTypes = String,
                                                maxFilesize = Number,
                                                mimeTypes = String,
                                                mode =
                                                  std.contract.Sequence
                                                      [
                                                        std.enum.TagOrString,
                                                        [| 'image, 'file |]
                                                      ],
                                                useCaption = Bool,
                                              },
                                          required = {},
                                        },
                                      Array Dyn
                                    ]) js2n.Always,
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
                                          properties =
                                            {
                                                mode =
                                                  std.contract.Sequence
                                                      [
                                                        std.enum.TagOrString,
                                                        [| 'image |]
                                                      ],
                                                type =
                                                  std.contract.Sequence
                                                      [
                                                        std.enum.TagOrString,
                                                        [| 'fileupload |]
                                                      ],
                                              },
                                          required = {},
                                        },
                                      Array Dyn
                                    ])
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
                                          properties =
                                            {
                                                imageHeight = Number,
                                                imageWidth = Number,
                                                thumbOptions =
                                                  js2n.record.Record
                                                      {
                                                        additional = 'Some Dyn,
                                                        patterns = {},
                                                        properties =
                                                          {
                                                              extension =
                                                                std.contract.Sequence
                                                                    [
                                                                      std.enum.TagOrString,
                                                                      [|
                                                                        'gif,
                                                                        'png,
                                                                        'jpg,
                                                                        'auto
                                                                      |]
                                                                    ],
                                                              interlace = Bool,
                                                              mode =
                                                                std.contract.Sequence
                                                                    [
                                                                      std.enum.TagOrString,
                                                                      [|
                                                                        'fit,
                                                                        'crop,
                                                                        'landscape,
                                                                        'portrait,
                                                                        'exact,
                                                                        'auto
                                                                      |]
                                                                    ],
                                                              quality =
                                                                std.contract.Sequence
                                                                    [
                                                                      std.number.Integer,
                                                                      js2n.number.Maximum
                                                                        100,
                                                                      js2n.number.Minimum
                                                                        0
                                                                    ],
                                                            },
                                                        required = {},
                                                      },
                                              },
                                          required = {},
                                        },
                                      Array Dyn
                                    ]) js2n.Always,
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
                                          properties =
                                            {
                                                mode =
                                                  std.contract.Sequence
                                                      [
                                                        std.enum.TagOrString,
                                                        [| 'file |]
                                                      ],
                                                type =
                                                  std.contract.Sequence
                                                      [
                                                        std.enum.TagOrString,
                                                        [| 'fileupload |]
                                                      ],
                                              },
                                          required = {},
                                        },
                                      Array Dyn
                                    ])
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
                                          properties = { prompt = String, },
                                          required = {},
                                        },
                                      Array Dyn
                                    ]) js2n.Always,
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
                                          properties =
                                            {
                                                type =
                                                  std.contract.Sequence
                                                      [
                                                        std.enum.TagOrString,
                                                        [| 'markdown |]
                                                      ],
                                              },
                                          required = {},
                                        },
                                      Array Dyn
                                    ])
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
                                          properties =
                                            {
                                                mode =
                                                  std.contract.Sequence
                                                      [
                                                        std.enum.TagOrString,
                                                        [| 'split, 'tab |]
                                                      ],
                                              },
                                          required = {},
                                        },
                                      Array Dyn
                                    ]) js2n.Always,
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
                                          properties =
                                            {
                                                type =
                                                  std.contract.Sequence
                                                      [
                                                        std.enum.TagOrString,
                                                        [| 'mediafinder |]
                                                      ],
                                              },
                                          required = {},
                                        },
                                      Array Dyn
                                    ])
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
                                          properties =
                                            {
                                                imageWidth = String,
                                                mode =
                                                  std.contract.Sequence
                                                      [
                                                        std.enum.TagOrString,
                                                        [| 'image, 'file |]
                                                      ],
                                                prompt = String,
                                              },
                                          required = {},
                                        },
                                      Array Dyn
                                    ]) js2n.Always,
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
                                          properties =
                                            {
                                                mode =
                                                  std.contract.Sequence
                                                      [
                                                        std.enum.TagOrString,
                                                        [| 'image |]
                                                      ],
                                                type =
                                                  std.contract.Sequence
                                                      [
                                                        std.enum.TagOrString,
                                                        [| 'mediafinder |]
                                                      ],
                                              },
                                          required = {},
                                        },
                                      Array Dyn
                                    ])
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
                                          properties =
                                            {
                                                imageHeight = Number,
                                                imageWidth = Number,
                                              },
                                          required = {},
                                        },
                                      Array Dyn
                                    ]) js2n.Always,
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
                                          properties =
                                            {
                                                type =
                                                  std.contract.Sequence
                                                      [
                                                        std.enum.TagOrString,
                                                        [| 'nestedform |]
                                                      ],
                                              },
                                          required = {},
                                        },
                                      Array Dyn
                                    ])
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
                                          properties =
                                            {
                                                form =
                                                  js2n.record.Record
                                                      {
                                                        additional = 'Some Dyn,
                                                        patterns = {},
                                                        properties =
                                                          {
                                                              fields =
                                                                std.contract.Sequence
                                                                    [
                                                                      js2n.Always,
                                                                      {
                                                                        _ | Dyn
                                                                      }
                                                                    ],
                                                              secondaryTabs =
                                                                std.contract.Sequence
                                                                    [
                                                                      refs."definitions.tabs",
                                                                      {
                                                                        _ | Dyn
                                                                      }
                                                                    ],
                                                              tabs =
                                                                std.contract.Sequence
                                                                    [
                                                                      refs."definitions.tabs",
                                                                      {
                                                                        _ | Dyn
                                                                      }
                                                                    ],
                                                            },
                                                        required = {},
                                                      },
                                                usePanelStyles = Bool,
                                              },
                                          required = {},
                                        },
                                      Array Dyn
                                    ]) js2n.Always,
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
                                          properties =
                                            {
                                                type =
                                                  std.contract.Sequence
                                                      [
                                                        std.enum.TagOrString,
                                                        [| 'recordfinder |]
                                                      ],
                                              },
                                          required = {},
                                        },
                                      Array Dyn
                                    ])
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
                                          properties =
                                            {
                                                conditions = String,
                                                descriptionFrom = String,
                                                keyFrom = String,
                                                list =
                                                  std.contract.any_of
                                                      [ String, Array Dyn ],
                                                nameFrom = String,
                                                prompt = String,
                                                recordsPerPage =
                                                  std.number.Integer,
                                                scope = String,
                                                searchMode =
                                                  std.contract.Sequence
                                                      [
                                                        std.enum.TagOrString,
                                                        [| 'exact, 'any, 'all |]
                                                      ],
                                                searchScope = String,
                                                title = String,
                                                useRelation = Bool,
                                              },
                                          required = {},
                                        },
                                      Array Dyn
                                    ]) js2n.Always,
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
                                          properties =
                                            {
                                                type =
                                                  std.contract.Sequence
                                                      [
                                                        std.enum.TagOrString,
                                                        [| 'recordfinder |]
                                                      ],
                                                useRelation =
                                                  js2n.Enum [ false ],
                                              },
                                          required = {},
                                        },
                                      Array Dyn
                                    ])
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
                                          properties = { modelClass = String, },
                                          required = {},
                                        },
                                      Array Dyn
                                    ]) js2n.Always,
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
                                          properties =
                                            {
                                                type =
                                                  std.contract.Sequence
                                                      [
                                                        std.enum.TagOrString,
                                                        [| 'relation |]
                                                      ],
                                              },
                                          required = {},
                                        },
                                      Array Dyn
                                    ])
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
                                          properties =
                                            {
                                                emptyOption = String,
                                                nameFrom = String,
                                                order = String,
                                                scope = String,
                                                select = String,
                                              },
                                          required = {},
                                        },
                                      Array Dyn
                                    ]) js2n.Always,
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
                                          properties =
                                            {
                                                type =
                                                  std.contract.Sequence
                                                      [
                                                        std.enum.TagOrString,
                                                        [| 'repeater |]
                                                      ],
                                              },
                                          required = {},
                                        },
                                      Array Dyn
                                    ])
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
                                          properties =
                                            {
                                                form =
                                                  js2n.record.Record
                                                      {
                                                        additional = 'Some Dyn,
                                                        patterns = {},
                                                        properties =
                                                          {
                                                              fields =
                                                                std.contract.Sequence
                                                                    [
                                                                      js2n.Always,
                                                                      {
                                                                        _ | Dyn
                                                                      }
                                                                    ],
                                                              secondaryTabs =
                                                                std.contract.Sequence
                                                                    [
                                                                      refs."definitions.tabs",
                                                                      {
                                                                        _ | Dyn
                                                                      }
                                                                    ],
                                                              tabs =
                                                                std.contract.Sequence
                                                                    [
                                                                      refs."definitions.tabs",
                                                                      {
                                                                        _ | Dyn
                                                                      }
                                                                    ],
                                                            },
                                                        required = {},
                                                      },
                                                groups =
                                                  std.contract.any_of
                                                      [
                                                        js2n.record.Record
                                                          {
                                                            additional =
                                                              'Some Dyn,
                                                            patterns =
                                                              {
                                                                  "^[^\\s]*$" =
                                                                    js2n.record.Record
                                                                        {
                                                                          additional =
                                                                            'Some
                                                                                Dyn,
                                                                          patterns =
                                                                            {},
                                                                          properties =
                                                                            {
                                                                                description =
                                                                                  std.contract.any_of
                                                                                      [
                                                                                        js2n.Null,
                                                                                        Bool,
                                                                                        Number,
                                                                                        String,
                                                                                        {
                                                                                          _ | Dyn
                                                                                        },
                                                                                        Array
                                                                                          Dyn
                                                                                      ],
                                                                                fields =
                                                                                  std.contract.Sequence
                                                                                      [
                                                                                        js2n.Always,
                                                                                        {
                                                                                          _ | Dyn
                                                                                        }
                                                                                      ],
                                                                                icon =
                                                                                  js2n.string.Matches
                                                                                      "^icon-",
                                                                                name =
                                                                                  String,
                                                                              },
                                                                          required =
                                                                            {
                                                                                fields =
                                                                                  true,
                                                                              },
                                                                        },
                                                                },
                                                            properties = {},
                                                            required = {},
                                                          },
                                                        String
                                                      ],
                                                maxItems = std.number.Integer,
                                                minItems = std.number.Integer,
                                                prompt = String,
                                                titleFrom = String,
                                              },
                                          required = {},
                                        },
                                      Array Dyn
                                    ]) js2n.Always,
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
                                          properties =
                                            {
                                                type =
                                                  std.contract.Sequence
                                                      [
                                                        std.enum.TagOrString,
                                                        [| 'richeditor |]
                                                      ],
                                              },
                                          required = {},
                                        },
                                      Array Dyn
                                    ])
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
                                          properties =
                                            { toolbarButtons = String, },
                                          required = {},
                                        },
                                      Array Dyn
                                    ]) js2n.Always,
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
                                          properties =
                                            {
                                                type =
                                                  std.contract.Sequence
                                                      [
                                                        std.enum.TagOrString,
                                                        [| 'taglist |]
                                                      ],
                                              },
                                          required = {},
                                        },
                                      Array Dyn
                                    ])
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
                                          properties =
                                            {
                                                customTags = Bool,
                                                mode =
                                                  std.contract.Sequence
                                                      [
                                                        std.enum.TagOrString,
                                                        [|
                                                          'relation,
                                                          'array,
                                                          'string
                                                        |]
                                                      ],
                                                options =
                                                  std.contract.any_of
                                                      [
                                                        Bool,
                                                        String,
                                                        Array Dyn
                                                      ],
                                                separator =
                                                  std.contract.Sequence
                                                      [
                                                        std.enum.TagOrString,
                                                        [| 'space, 'comma |]
                                                      ],
                                                useKey = Bool,
                                              },
                                          required = {},
                                        },
                                      Array Dyn
                                    ]) js2n.Always,
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
                                          properties =
                                            {
                                                mode =
                                                  std.contract.Sequence
                                                      [
                                                        std.enum.TagOrString,
                                                        [| 'relation |]
                                                      ],
                                                type =
                                                  std.contract.Sequence
                                                      [
                                                        std.enum.TagOrString,
                                                        [| 'taglist |]
                                                      ],
                                              },
                                          required = {},
                                        },
                                      Array Dyn
                                    ])
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
                                          properties = { nameFrom = String, },
                                          required = {},
                                        },
                                      Array Dyn
                                    ]) js2n.Always
                              ],
                            {
                              attributes
                                | js2n.record.Record
                                  {
                                    additional = 'Some Dyn,
                                    patterns = { ".+" = String, },
                                    properties = {},
                                    required = {},
                                  }
                                | doc "specify custom HTML attributes to add to the form field element"
                                | optional,
                              comment
                                | String
                                | doc "places a descriptive comment below the field"
                                | optional,
                              commentAbove
                                | String
                                | doc "places a comment above the field"
                                | optional,
                              commentHtml
                                | Bool
                                | doc "allow HTML markup inside the comment"
                                | optional,
                              containerAttributes
                                | js2n.record.Record
                                  {
                                    additional = 'Some Dyn,
                                    patterns = { ".+" = String, },
                                    properties = {},
                                    required = {},
                                  }
                                | doc "specify custom HTML attributes to add to the form field container"
                                | optional,
                              context
                                | js2n.array.UniqueItems
                                | Array (
                                  std.contract.any_of
                                    [
                                      std.contract.Sequence
                                        [
                                          std.enum.TagOrString,
                                          [| 'preview, 'update, 'create |]
                                        ],
                                      String
                                    ]
                                )
                                | doc "specifies what context should be used when displaying the field. Context can also be passed by using an @ symbol in the field name, for example, name@update."
                                | optional,
                              cssClass
                                | String
                                | doc "assigns a CSS class to the field container"
                                | optional,
                              "default"
                                | std.contract.any_of
                                  [
                                    js2n.Null,
                                    Bool,
                                    Number,
                                    String,
                                    { _ | Dyn },
                                    Array Dyn
                                  ]
                                | doc "specifies the default value for the field"
                                | optional,
                              defaultFrom
                                | String
                                | doc "takes the default value from the value of another field"
                                | optional,
                              dependsOn
                                | std.contract.any_of [ String, Array Dyn ]
                                | doc "an array of other field names this field depends on, when the other fields are modified, this field will update"
                                | optional,
                              disabled
                                | Bool
                                | doc "prevents the field from being modified and excludes it from the saved data"
                                | optional,
                              hidden
                                | Bool
                                | doc "hides the field from the view and excludes it from the saved data"
                                | optional,
                              label
                                | String
                                | doc "a name when displaying the form field to the user"
                                | optional,
                              permissions
                                | std.contract.any_of [ Array String, String ]
                                | doc "the permissions that the current backend user must have in order for the field to be used. Supports either a string for a single permission or an array of permissions of which only one is needed to grant access."
                                | optional,
                              placeholder
                                | String
                                | doc "if the field supports a placeholder value"
                                | optional,
                              preset
                                | std.contract.any_of
                                  [
                                    {
                                      field
                                        | String
                                        | doc "defines the other field name to source the value from"
                                        | optional,
                                      prefixInput
                                        | String
                                        | doc "optional, prefixes the converted value with the value found in the supplied input element using a CSS selector"
                                        | optional,
                                      type
                                        | std.enum.TagOrString
                                        | [|
                                          'file,
                                          'camel,
                                          'url,
                                          'slug,
                                          'exact
                                        |]
                                        | doc "specifies the conversion type"
                                        | optional,
                                      ..
                                    },
                                    String
                                  ]
                                | doc "allows the field value to be initially set by the value of another field, converted using the input preset converter"
                                | optional,
                              readOnly
                                | Bool
                                | doc "prevents the field from being modified"
                                | optional,
                              required
                                | Bool
                                | doc "places a red asterisk next to the field label to indicate it is required (make sure to setup validation on the model as this is not enforced by the form controller)"
                                | optional,
                              size
                                | std.enum.TagOrString
                                | [| 'giant, 'huge, 'large, 'small, 'tiny |]
                                | doc "specifies a field size for fields that use it, for example, the textarea field"
                                | optional,
                              span
                                | std.enum.TagOrString
                                | [| 'full, 'row, 'right, 'left, 'auto |]
                                | doc "aligns the form field to one side. The parameter storm allows you to display the form as a Bootstrap grid, using the cssClass property, for example, cssClass: col-xs-4."
                                | optional,
                              stretch
                                | Bool
                                | doc "specifies if this field stretches to fit the parent height"
                                | optional,
                              tab
                                | String
                                | doc "assigns the field to a tab"
                                | optional,
                              trigger
                                | {
                                  action
                                    | std.enum.TagOrString
                                    | [|
                                      'empty,
                                      'disable,
                                      'enable,
                                      'hide,
                                      'show
                                    |]
                                    | doc "defines the action applied to this field when the condition is met"
                                    | optional,
                                  condition
                                    | std.contract.any_of
                                      [
                                        std.contract.Sequence
                                          [
                                            std.enum.TagOrString,
                                            [|
                                              '"value[somevalue]",
                                              'unchecked,
                                              'checked
                                            |]
                                          ],
                                        js2n.string.Matches "^value\\[.*\\]$"
                                      ]
                                    | doc "determines the condition the specified field should satisfy for the condition to be considered \"true\". Supported values: checked, unchecked, value[somevalue]"
                                    | optional,
                                  field
                                    | String
                                    | doc "defines the other field name that will trigger the action. Normally the field name refers to a field in the same level form. For example, if this field is in a repeater widget, only fields in that same repeater widget will be checked. However, if the field name is preceded by a caret symbol ^ like: ^parent_field, it will refer to a repeater widget or form one level higher than the field itself. Additionally, if more than one caret ^ is used, it will refer that many levels higher: ^^grand_parent_field, ^^^grand_grand_parent_field, etc."
                                    | optional,
                                  ..
                                }
                                | doc "specify conditions for this field using trigger events"
                                | optional,
                              type
                                | std.contract.any_of
                                  [
                                    std.contract.Sequence
                                      [
                                        std.enum.TagOrString,
                                        [|
                                          'hint,
                                          'partial,
                                          'section,
                                          'switch,
                                          'checkboxlist,
                                          'checkbox,
                                          'balloon-selector,
                                          'radio,
                                          'dropdown,
                                          'textarea,
                                          'email,
                                          'password,
                                          'number,
                                          'text
                                        |]
                                      ],
                                    std.contract.Sequence
                                      [
                                        std.enum.TagOrString,
                                        [|
                                          'taglist,
                                          'richeditor,
                                          'repeater,
                                          'relation,
                                          'recordfinder,
                                          'nestedform,
                                          'mediafinder,
                                          'markdown,
                                          'fileupload,
                                          'datepicker,
                                          'datatable,
                                          'colorpicker,
                                          'codeeditor
                                        |]
                                      ],
                                    String
                                  ]
                                | doc "defines how this field should be rendered"
                                | optional,
                              ..
                            }
                          ],
                  },
              properties = {},
              required = {},
            },
      "definitions.tabs" =
        {
            cssClass
              | String
              | doc "assigns a CSS class to the tab container"
              | optional,
            defaultTab
              | String
              | doc "the default tab to assign fields to"
              | optional,
            fields | refs."definitions.fields" | { _ | Dyn },
            icons
              | js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = { ".+" = js2n.string.Matches "^icon-", },
                  properties = {},
                  required = {},
                }
              | doc "assign icons to tabs using tab names as the key"
              | optional,
            lazy
              | Array String
              | doc "array of tabs to be loaded dynamically when clicked"
              | optional,
            paneCssClass
              | std.contract.any_of
                [
                  String,
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = { ".+" = String, },
                      properties = {},
                      required = {},
                    }
                ]
              | doc "assigns a CSS class to an individual tab pane. Value is an array, key is tab index or label, value is the CSS class. It can also be specified as a string, in which case the value will be applied to all tabs."
              | optional,
            stretch
              | Bool
              | doc "specifies if this tab stretches to fit the parent height"
              | optional,
            ..
          },
    }
    in
  {
      fields | refs."definitions.fields" | optional,
      secondaryTabs | refs."definitions.tabs" | doc "secondary tabs" | optional,
      tabs | refs."definitions.tabs" | doc "Primary tabs" | optional,
      ..
    }