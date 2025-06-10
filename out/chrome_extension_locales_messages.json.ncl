# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  std.contract.Sequence
      [
        {
          _ | {
            description
              | String
              | doc "Optional. A description of the message, intended to give context or details to help the translator make the best possible translation."
              | optional,
            message
              | String
              | doc m%"
                The translated message, in the form of a string that can contain placeholders. Use `$_placeholder_name_$` (case insensitive) to refer to a particular placeholder. For example, you can refer to a placeholder named "our_site" as `$our_site$`, `$OUR_SITE$`, or `$oUR_sITe$`.
                To put a dollar sign (`$`) into the string, use `$$`.
                Although placeholders such as `$USER$` are the preferred way of referring to substitution strings (strings specified using the substitutions parameter of i18n.getMessage) you can also refer to substitution strings directly within the message.
              "%,
            placeholders
              | js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns =
                    {
                        "^[\\w@]+$" =
                          {
                              content
                                | String
                                | doc "The \"content\" item's value is a string that can refer to substitution strings, which are specified using the i18n.getMessage method's substitutions parameter. The value of a \"content\" item is typically something like \"Example.com\" or \"$1\". If you refer to a substitution string that doesn't exist, you get an empty string. The following table shows how `$_n_` strings correspond to strings specified by the substitutions parameter.",
                              example
                                | String
                                | doc "The \"example\" item (optional, but highly recommended) helps translators by showing how the content appears to the end user. For example, a placeholder for a dollar amount should have an example like `\"$23.45\"`."
                                | optional,
                              ..
                            },
                      },
                  properties = {},
                  required = {},
                }
              | doc m%"
                Optional. Defines one or more substrings to be used within the message.
                Each placeholder has a name, a "content" item, and an optional "example" item. A placeholder's name is case-insensitive and can contain the same characters as a message name.
                
              "%
              | optional,
            ..
          }
        },
        js2n.record.FieldsMatch "^(?!@@)[\\w@]+$"
      ]