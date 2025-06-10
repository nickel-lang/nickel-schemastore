# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.attribute" =
        {
            attributes
              | refs."definitions.attributes"
              | { _ | Dyn }
              | doc "RM type attributes."
              | optional,
            choice_key
              | String
              | doc "The name of the key in the choices to use for this attribute."
              | optional,
            choices
              | refs."definitions.choices"
              | Array Dyn
              | doc "Define a list of choices from which a random item will be used."
              | optional,
            define
              | refs."definitions.define"
              | { _ | Dyn }
              | doc "Define keys used in the rules. Example: weight: http://loinc.org/29463-7"
              | optional,
            elements
              | refs."definitions.elements"
              | { _ | Dyn }
              | doc "RM elements for the RM type attribute."
              | optional,
            interpretation_interval
              | refs."definitions.interpretation_interval"
              | { _ | Dyn }
              | doc "Interpretation interval for the value."
              | optional,
            interpretation_intervals
              | refs."definitions.interpretation_intervals"
              | { _ | Dyn }
              | doc "Interpretation intervals for each key (e.g. units)."
              | optional,
            value
              | String
              | doc "Value of the attribute. Can use formulas."
              | optional,
            value_interval | String | doc "Value interval." | optional,
            value_intervals
              | refs."definitions.value_intervals"
              | { _ | Dyn }
              | doc "Value intervals for each key (e.g. units)."
              | optional,
            value_type | String | doc "RM type of the attribute." | optional,
            vars
              | refs."definitions.vars"
              | { _ | Dyn }
              | doc "Define variables used in the rules. Example: default_bmi: randomNormalDistribution((27.6863+25.4960)/2, sqrt(18.65))"
              | optional,
          },
      "definitions.attributes" =
        std.contract.Sequence
            [
              {
                _ | std.contract.Sequence
                  [ refs."definitions.attribute", { _ | Dyn } ]
              },
              js2n.record.FieldsMatch "^.+$"
            ],
      "definitions.choices" =
        Array (
            std.contract.Sequence
              [ refs."definitions.choices_map_entry", { _ | Dyn } ]
          ),
      "definitions.choices_map_entry" =
        std.contract.Sequence
            [
              {
                _ | std.contract.any_of
                  [
                    Bool,
                    Number,
                    String,
                    std.contract.Sequence [ js2n.Always, { _ | Dyn } ]
                  ]
              },
              js2n.record.FieldsMatch "^.+$"
            ],
      "definitions.define" =
        std.contract.Sequence
            [ { _ | String }, js2n.record.FieldsMatch "^.+$" ],
      "definitions.element" =
        {
            attribute
              | String
              | doc "Used to specify an RM attribute."
              | optional,
            choice_key
              | String
              | doc "The name of the key in the choices to use for this element."
              | optional,
            elements
              | refs."definitions.elements"
              | { _ | Dyn }
              | doc "RM elements."
              | optional,
            interpretation_interval
              | refs."definitions.interpretation_interval"
              | { _ | Dyn }
              | doc "Interpretation interval for the value."
              | optional,
            interpretation_intervals
              | refs."definitions.interpretation_intervals"
              | { _ | Dyn }
              | doc "Interpretation intervals for each key (e.g. units)."
              | optional,
            path | String | doc "Used to specify an ADL path." | optional,
            value
              | String
              | doc "Value of the element. Can use formulas."
              | optional,
            value_interval | String | doc "Value interval." | optional,
            value_intervals
              | refs."definitions.value_intervals"
              | { _ | Dyn }
              | doc "Value intervals for each key (e.g. units)."
              | optional,
            value_type | String | doc "RM type of the element." | optional,
          },
      "definitions.elements" =
        std.contract.Sequence
            [
              {
                _ | js2n.Nullable
                  (std.contract.Sequence
                    [ refs."definitions.element", { _ | Dyn } ])
              },
              js2n.record.FieldsMatch "^.+$"
            ],
      "definitions.interpretation_interval" =
        {
            high | Number | doc "High value of the interpretation interval.",
            low | Number | doc "Low value of the interpretation interval.",
          },
      "definitions.interpretation_intervals" =
        std.contract.Sequence
            [
              {
                _ | std.contract.Sequence
                  [ refs."definitions.interpretation_interval", { _ | Dyn } ]
              },
              js2n.record.FieldsMatch "^.+$"
            ],
      "definitions.map" =
        {
            attribute
              | String
              | doc "Used to specify an RM attribute."
              | optional,
            define
              | refs."definitions.define"
              | { _ | Dyn }
              | doc "Define keys used in the rules. Example: weight: http://loinc.org/29463-7"
              | optional,
            element
              | refs."definitions.element"
              | { _ | Dyn }
              | doc "An RM element."
              | optional,
            elements
              | refs."definitions.elements"
              | { _ | Dyn }
              | doc "RM elements."
              | optional,
            formats
              | refs."definitions.map_formats"
              | { _ | Dyn }
              | doc "Define formats from/to which the data will be mapped."
              | optional,
            path | String | doc "Used to specify an ADL path." | optional,
            vars
              | refs."definitions.vars"
              | { _ | Dyn }
              | doc "Define variables used in the rules. Example: default_bmi: randomNormalDistribution((27.6863+25.4960)/2, sqrt(18.65))"
              | optional,
          },
      "definitions.map_format" =
        {
            attribute
              | String
              | doc "Used to specify an attribute to the element."
              | optional,
            define
              | refs."definitions.define"
              | { _ | Dyn }
              | doc "Define keys used in the rules. Example: weight: http://loinc.org/29463-7"
              | optional,
            element
              | refs."definitions.map_format_element"
              | { _ | Dyn }
              | doc "Format element."
              | optional,
            elements
              | refs."definitions.map_format_elements"
              | { _ | Dyn }
              | doc "Format elements."
              | optional,
            path
              | String
              | doc "Used to specify a path to the element."
              | optional,
            vars
              | refs."definitions.vars"
              | { _ | Dyn }
              | doc "Define variables used in the rules. Example: default_bmi: randomNormalDistribution((27.6863+25.4960)/2, sqrt(18.65))"
              | optional,
          },
      "definitions.map_format_element" =
        {
            attribute | String | doc "Used to specify an attribute." | optional,
            elements
              | refs."definitions.map_format_elements"
              | { _ | Dyn }
              | doc "Format elements."
              | optional,
            one_of
              | refs."definitions.one_of"
              | Array Dyn
              | doc "List of keys to look for."
              | optional,
            path | String | doc "Used to specify a path." | optional,
          },
      "definitions.map_format_elements" =
        std.contract.Sequence
            [
              {
                _ | js2n.Nullable
                  (std.contract.Sequence
                    [ refs."definitions.map_format_element", { _ | Dyn } ])
              },
              js2n.record.FieldsMatch "^.+$"
            ],
      "definitions.map_format_item" =
        Array (
            std.contract.Sequence [ refs."definitions.map_format", { _ | Dyn } ]
          ),
      "definitions.map_formats" =
        { fhir | refs."definitions.map_format_item" | Array Dyn | optional, },
      "definitions.one_of" = Array String,
      "definitions.rule" =
        std.contract.Sequence
            [
              {
                _ | std.contract.Sequence
                  [ refs."definitions.rule_code", { _ | Dyn } ]
              },
              js2n.record.FieldsMatch "^.+$"
            ],
      "definitions.rule_code" =
        std.contract.any_of
            [
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        define =
                          std.contract.Sequence
                              [ refs."definitions.define", { _ | Dyn } ],
                        description = String,
                        formats =
                          std.contract.Sequence
                              [ refs."definitions.rule_formats", { _ | Dyn } ],
                        keep_missing_target_elements = Bool,
                        map =
                          js2n.array.ArrayOf
                              (std.contract.Sequence
                                [ refs."definitions.map", { _ | Dyn } ]),
                        name = String,
                        uri = String,
                        vars =
                          std.contract.Sequence
                              [ refs."definitions.vars", { _ | Dyn } ],
                      },
                  required = { map = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        choices =
                          std.contract.Sequence
                              [ refs."definitions.choices", Array Dyn ],
                        define =
                          std.contract.Sequence
                              [ refs."definitions.define", { _ | Dyn } ],
                        description = String,
                        keep_missing_target_elements = Bool,
                        name = String,
                        set =
                          js2n.array.ArrayOf
                              (std.contract.Sequence
                                [ refs."definitions.set", { _ | Dyn } ]),
                        uri = String,
                        vars =
                          std.contract.Sequence
                              [ refs."definitions.vars", { _ | Dyn } ],
                      },
                  required = { set = true, },
                }
            ],
      "definitions.rule_format" =
        {
            description
              | String
              | doc "Description for the model in this format."
              | optional,
            name | String | doc "Name for the model in this format." | optional,
            resource
              | String
              | doc "Resource name for the model in this format."
              | optional,
            uri
              | String
              | doc "Full URI for the model in this format."
              | optional,
          },
      "definitions.rule_formats" =
        { fhir | refs."definitions.rule_format" | { _ | Dyn } | optional, },
      "definitions.rules" =
        std.contract.Sequence
            [
              {
                _ | std.contract.Sequence
                  [ refs."definitions.rule", { _ | Dyn } ]
              },
              js2n.record.FieldsMatch "^.+$"
            ],
      "definitions.set" =
        {
            attribute
              | String
              | doc "Used to specify an RM attribute."
              | optional,
            attributes
              | refs."definitions.attributes"
              | { _ | Dyn }
              | doc "RM type attributes."
              | optional,
            choices
              | refs."definitions.choices"
              | Array Dyn
              | doc "Define a list of choices from which a random item will be used."
              | optional,
            define
              | refs."definitions.define"
              | { _ | Dyn }
              | doc "Define keys used in the rules. Example: weight: http://loinc.org/29463-7"
              | optional,
            element
              | refs."definitions.element"
              | { _ | Dyn }
              | doc "An RM element."
              | optional,
            elements
              | refs."definitions.elements"
              | { _ | Dyn }
              | doc "RM elements."
              | optional,
            interpretation_intervals
              | refs."definitions.interpretation_intervals"
              | { _ | Dyn }
              | doc "Interpretation intervals for each key (e.g. units)."
              | optional,
            path | String | doc "Used to specify an ADL path." | optional,
            value_intervals
              | refs."definitions.value_intervals"
              | { _ | Dyn }
              | doc "Value intervals for each key (e.g. units)."
              | optional,
            vars
              | refs."definitions.vars"
              | { _ | Dyn }
              | doc "Define variables used in the rules. Example: default_bmi: randomNormalDistribution((27.6863+25.4960)/2, sqrt(18.65))"
              | optional,
          },
      "definitions.value_interval" = String,
      "definitions.value_intervals" =
        std.contract.Sequence
            [
              {
                _ | std.contract.Sequence
                  [ refs."definitions.value_interval", String ]
              },
              js2n.record.FieldsMatch "^.+$"
            ],
      "definitions.vars" =
        std.contract.Sequence
            [ { _ | String }, js2n.record.FieldsMatch "^.+$" ],
    }
    in
  {
      define
        | refs."definitions.define"
        | doc "Define keys used in the rules. Example: weight: http://loinc.org/29463-7"
        | optional,
      keep_missing_target_elements
        | Bool
        | doc "Keep the target elements for which there is not source data."
        | optional,
      rules
        | refs."definitions.rules"
        | doc "Rules for LOINC codes, archetypes, templates."
        | optional,
      vars
        | refs."definitions.vars"
        | doc "Define variables used in the rules. Example: default_bmi: randomNormalDistribution((27.6863+25.4960)/2, sqrt(18.65))"
        | optional,
    }