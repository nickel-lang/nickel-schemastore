# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.assignee" =
        std.contract.Sequence
            [
              js2n.string.MaxLength 39,
              js2n.string.Matches "^[a-zA-Z0-9](-?[a-zA-Z0-9])*$"
            ],
      "definitions.description" = String,
      "definitions.form_item" =
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
                        properties = { type = js2n.Const "markdown", },
                        required = {},
                      },
                    Array Dyn
                  ])
                {
                  attributes
                    | {
                      value
                        | js2n.string.MinLength 1
                        | doc "A markdown formatted text",
                    }
                    | doc m%"
                      Markdown attributes
                      https://docs.gitea.com/next/usage/issue-pull-request-templates#markdown
                    "%,
                  type | refs."definitions.type" | String,
                  visible | refs."definitions.visible" | Array Dyn | optional,
                } js2n.Always,
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
                        properties = { type = js2n.Const "textarea", },
                        required = {},
                      },
                    Array Dyn
                  ])
                {
                  attributes
                    | {
                      description
                        | refs."definitions.description"
                        | String
                        | doc m%"
                          A long textarea description
                          https://docs.gitea.com/next/usage/issue-pull-request-templates#textarea
                        "%
                        | optional,
                      label
                        | refs."definitions.label"
                        | String
                        | doc m%"
                          A short textarea description
                          https://docs.gitea.com/next/usage/issue-pull-request-templates#textarea
                        "%,
                      placeholder
                        | refs."definitions.placeholder"
                        | String
                        | doc m%"
                          A textarea placeholder
                          https://docs.gitea.com/next/usage/issue-pull-request-templates#textarea
                        "%
                        | optional,
                      render
                        | String
                        | doc m%"
                          A textarea syntax highlighting mode
                          All supported languages are mentioned at https://github.com/alecthomas/chroma/?tab=readme-ov-file#supported-languages
                        "%
                        | optional,
                      value
                        | refs."definitions.value"
                        | String
                        | doc m%"
                          A textarea value
                          https://docs.gitea.com/next/usage/issue-pull-request-templates#textarea
                        "%
                        | optional,
                    }
                    | doc m%"
                      Textarea attributes
                      https://docs.gitea.com/next/usage/issue-pull-request-templates#textarea
                    "%,
                  id
                    | refs."definitions.id"
                    | String
                    | doc "A textarea id"
                    | optional,
                  type | refs."definitions.type" | String,
                  validations
                    | refs."definitions.validations"
                    | { _ | Dyn }
                    | doc m%"
                      Textarea validations
                      https://docs.gitea.com/next/usage/issue-pull-request-templates#textarea
                    "%
                    | optional,
                  visible | refs."definitions.visible" | Array Dyn | optional,
                } js2n.Always,
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
                        properties = { type = js2n.Const "input", },
                        required = {},
                      },
                    Array Dyn
                  ])
                {
                  attributes
                    | {
                      description
                        | refs."definitions.description"
                        | String
                        | doc m%"
                          A long input description
                          https://docs.gitea.com/next/usage/issue-pull-request-templates#input
                        "%
                        | optional,
                      label
                        | refs."definitions.label"
                        | String
                        | doc m%"
                          A short input description
                          https://docs.gitea.com/next/usage/issue-pull-request-templates#input
                        "%,
                      placeholder
                        | refs."definitions.placeholder"
                        | String
                        | doc m%"
                          An input placeholder
                          https://docs.gitea.com/next/usage/issue-pull-request-templates#input
                        "%
                        | optional,
                      value
                        | refs."definitions.value"
                        | String
                        | doc m%"
                          An input value
                          https://docs.gitea.com/next/usage/issue-pull-request-templates#input
                        "%
                        | optional,
                    }
                    | doc m%"
                      Input attributes
                      https://docs.gitea.com/next/usage/issue-pull-request-templates#input
                    "%,
                  id
                    | refs."definitions.id"
                    | String
                    | doc "An input id"
                    | optional,
                  type | refs."definitions.type" | String,
                  validations
                    | refs."definitions.input_validations"
                    | { _ | Dyn }
                    | doc m%"
                      Input validations
                      https://docs.gitea.com/next/usage/issue-pull-request-templates#input
                    "%
                    | optional,
                  visible | refs."definitions.visible" | Array Dyn | optional,
                } js2n.Always,
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
                        properties = { type = js2n.Const "dropdown", },
                        required = {},
                      },
                    Array Dyn
                  ])
                {
                  attributes
                    | {
                      "default"
                        | std.number.Integer
                        | doc m%"
                          Index of the default option
                          https://docs.gitea.com/next/usage/issue-pull-request-templates#dropdown
                        "%
                        | optional,
                      description
                        | refs."definitions.description"
                        | String
                        | doc m%"
                          A long dropdown description
                          https://docs.gitea.com/next/usage/issue-pull-request-templates#dropdown
                        "%
                        | optional,
                      label
                        | refs."definitions.label"
                        | String
                        | doc m%"
                          A short dropdown description
                          https://docs.gitea.com/next/usage/issue-pull-request-templates#dropdown
                        "%,
                      multiple
                        | Bool
                        | doc m%"
                          Specify whether allow a multiple choices
                          https://docs.gitea.com/next/usage/issue-pull-request-templates#dropdown
                        "%
                        | optional,
                      options
                        | js2n.array.MinItems 1
                        | js2n.array.UniqueItems
                        | Array (js2n.string.MinLength 1)
                        | doc m%"
                          Dropdown choices
                          https://docs.gitea.com/next/usage/issue-pull-request-templates#dropdown
                        "%,
                    }
                    | doc m%"
                      Dropdown attributes
                      https://docs.gitea.com/next/usage/issue-pull-request-templates#dropdown
                    "%,
                  id
                    | refs."definitions.id"
                    | String
                    | doc "A dropdown id"
                    | optional,
                  type | refs."definitions.type" | String,
                  validations
                    | refs."definitions.validations"
                    | { _ | Dyn }
                    | doc m%"
                      Dropdown validations
                      https://docs.gitea.com/next/usage/issue-pull-request-templates#dropdown
                    "%
                    | optional,
                  visible | refs."definitions.visible" | Array Dyn | optional,
                } js2n.Always,
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
                        properties = { type = js2n.Const "checkboxes", },
                        required = {},
                      },
                    Array Dyn
                  ])
                {
                  attributes
                    | {
                      description
                        | refs."definitions.description"
                        | String
                        | doc m%"
                          A long checkbox list description
                          https://docs.gitea.com/next/usage/issue-pull-request-templates#checkboxes
                        "%
                        | optional,
                      label
                        | refs."definitions.label"
                        | String
                        | doc m%"
                          A short checkbox list description
                          https://docs.gitea.com/next/usage/issue-pull-request-templates#checkboxes
                        "%,
                      options
                        | js2n.array.MinItems 1
                        | Array
                          {
                            label
                              | js2n.string.MinLength 1
                              | doc m%"
                                A short checkbox list choice description
                                https://docs.gitea.com/next/usage/issue-pull-request-templates#checkboxes
                              "%,
                            required
                              | Bool
                              | doc m%"
                                Specify whether a choice is required
                                https://docs.gitea.com/next/usage/issue-pull-request-templates#checkboxes
                              "%
                              | optional,
                            visible
                              | refs."definitions.visible"
                              | Array Dyn
                              | optional,
                          }
                        | doc m%"
                          Checkbox list choices
                          https://docs.gitea.com/next/usage/issue-pull-request-templates#checkboxes
                        "%,
                    }
                    | doc m%"
                      Checkbox list attributes
                      https://docs.gitea.com/next/usage/issue-pull-request-templates#checkboxes
                    "%,
                  id
                    | refs."definitions.id"
                    | String
                    | doc "Checkbox list id"
                    | optional,
                  type | refs."definitions.type" | String,
                  visible | refs."definitions.visible" | Array Dyn | optional,
                } js2n.Always,
              { type | refs."definitions.type" | String, .. }
            ],
      "definitions.id" = js2n.string.Matches "^[a-zA-Z0-9_-]+$",
      "definitions.input_validations" =
        {
            is_number | Bool | doc "check if input must be a number" | optional,
            regex
              | String
              | doc "enforce specific pattern to an input by a regular expression"
              | optional,
            required
              | Bool
              | doc "Specify whether require a form item"
              | optional,
          },
      "definitions.label" = js2n.string.MinLength 1,
      "definitions.placeholder" = String,
      "definitions.type" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [| 'textarea, 'markdown, 'input, 'dropdown, 'checkboxes |]
            ],
      "definitions.validations" =
        {
            required
              | Bool
              | doc "Specify whether require a form item"
              | optional,
          },
      "definitions.value" = js2n.string.MinLength 1,
      "definitions.visible" =
        std.contract.Sequence
            [
              js2n.array.MaxItems 2,
              js2n.array.MinItems 1,
              Array (
                std.contract.Sequence
                  [ std.enum.TagOrString, [| 'content, 'form |] ]
              )
            ],
    }
    in
  {
      about
        | js2n.string.MinLength 1
        | doc m%"
          An issue template description
          https://docs.gitea.com/next/usage/issue-pull-request-templates#syntax-for-yaml-template
        "%,
      assignees
        | std.contract.any_of
          [
            std.contract.Sequence [ refs."definitions.assignee", String ],
            std.contract.Sequence
              [
                js2n.array.MinItems 1,
                js2n.array.UniqueItems,
                Array (
                  std.contract.Sequence [ refs."definitions.assignee", String ]
                )
              ]
          ]
        | doc m%"
          An issue template assignees
          https://docs.gitea.com/next/usage/issue-pull-request-templates#syntax-for-yaml-template
        "%
        | optional,
      body
        | js2n.array.MinItems 1
        | Array (
          std.contract.Sequence [ refs."definitions.form_item", { _ | Dyn } ]
        )
        | doc m%"
          An issue template body
          https://docs.gitea.com/next/usage/issue-pull-request-templates#syntax-for-yaml-template
        "%,
      labels
        | js2n.array.MinItems 1
        | js2n.array.UniqueItems
        | Array (js2n.string.MinLength 1)
        | doc m%"
          An issue template labels
          https://docs.gitea.com/next/usage/issue-pull-request-templates#syntax-for-yaml-template
        "%
        | optional,
      name
        | js2n.string.MinLength 1
        | doc m%"
          An issue template name
          https://docs.gitea.com/next/usage/issue-pull-request-templates#syntax-for-yaml-template
        "%,
      title
        | js2n.string.MinLength 1
        | doc m%"
          An issue template title
          https://docs.gitea.com/next/usage/issue-pull-request-templates#syntax-for-yaml-template
        "%
        | optional,
    }