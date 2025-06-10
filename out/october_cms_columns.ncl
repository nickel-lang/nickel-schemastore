# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.columns" =
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
                                String,
                                {
                                  align
                                    | std.enum.TagOrString
                                    | [| 'center, 'right, 'left |]
                                    | doc "specifies the column alignment. Possible values are left, right and center."
                                    | optional,
                                  clickable
                                    | Bool
                                    | doc "if set to false, disables the default click behavior when the column is clicked"
                                    | optional,
                                  cssClass
                                    | String
                                    | doc "assigns a CSS class to the column container"
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
                                    | doc "specifies the default value for the column if value is empty"
                                    | optional,
                                  headCssClass
                                    | String
                                    | doc "assigns a CSS class to the column header container"
                                    | optional,
                                  invisible
                                    | Bool
                                    | doc "specifies if this column is hidden by default"
                                    | optional,
                                  label
                                    | String
                                    | doc "a name when displaying the list column to the user"
                                    | optional,
                                  permissions
                                    | std.contract.any_of [ String, Array Dyn ]
                                    | doc "the permissions that the current backend user must have in order for the column to be used. Supports either a string for a single permission or an array of permissions of which only one is needed to grant access."
                                    | optional,
                                  relation
                                    | String
                                    | doc "defines a model relationship column"
                                    | optional,
                                  searchable
                                    | Bool
                                    | doc "include this column in the list search results"
                                    | optional,
                                  select
                                    | String
                                    | doc "defines a custom SQL select statement to use for the value"
                                    | optional,
                                  sortable
                                    | Bool
                                    | doc "specifies if this column can be sorted"
                                    | optional,
                                  type
                                    | std.contract.any_of
                                      [
                                        std.contract.Sequence
                                          [
                                            std.enum.TagOrString,
                                            [|
                                              'colorpicker,
                                              'partial,
                                              'timetense,
                                              'timesince,
                                              'time,
                                              'date,
                                              'datetime,
                                              'switch,
                                              'number,
                                              'text
                                            |]
                                          ],
                                        String
                                      ]
                                    | doc "defines how this column should be rendered"
                                    | optional,
                                  useRelationCount
                                    | Bool
                                    | doc "use the count of the defined relation as the value for this column"
                                    | optional,
                                  valueFrom
                                    | String
                                    | doc "defines a model attribute to use for the value"
                                    | optional,
                                  width
                                    | String
                                    | doc "sets the column width, can be specified in percents (10%) or pixels (50px). There could be a single column without width specified, it will be stretched to take the available space."
                                    | optional,
                                  ..
                                }
                              ],
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
                                                        [| 'number, 'text |]
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
                                          properties = { format = String, },
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
                                                          'timetense,
                                                          'timesince,
                                                          'time,
                                                          'date,
                                                          'datetime
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
                                            { ignoreTimezone = Bool, },
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
                                                          'time,
                                                          'date,
                                                          'datetime
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
                                          properties = { format = String, },
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
                                                        [| 'partial |]
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
                                    ]) js2n.Always
                              ]
                          ],
                  },
              properties = {},
              required = {},
            },
    }
    in
  { columns | refs."definitions.columns" | optional, .. }