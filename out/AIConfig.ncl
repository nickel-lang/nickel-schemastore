# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.Attachment" =
        {
            data
              | std.contract.any_of
                [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ]
              | doc "Data representing the attachment",
            metadata | {  .. } | doc "Attachment metadata." | optional,
            mime_type
              | String
              | doc "MIME type of the attachment. If not specified, the MIME type will be assumed to be text/plain."
              | optional,
            ..
          },
      "definitions.Output" =
        std.contract.any_of
            [
              js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = {},
                  properties =
                    {
                        data =
                          std.contract.any_of
                              [
                                js2n.Null,
                                Bool,
                                Number,
                                String,
                                { _ | Dyn },
                                Array Dyn
                              ],
                        execution_count = Number,
                        metadata = { _ | js2n.Always },
                        mime_type = String,
                        output_type = js2n.Const "execute_result",
                      },
                  required = { data = true, output_type = true, },
                },
              js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = {},
                  properties =
                    {
                        ename = String,
                        evalue = String,
                        output_type = js2n.Const "error",
                        traceback = js2n.array.ArrayOf String,
                      },
                  required =
                    {
                        ename = true,
                        evalue = true,
                        output_type = true,
                        traceback = true,
                      },
                }
            ],
      "definitions.PromptInput" =
        std.contract.any_of
            [
              {
                attachments
                  | Array (
                    std.contract.Sequence
                      [ refs."definitions.Attachment", { _ | Dyn } ]
                  )
                  | doc "Used to include non-text inputs (e.g. image, audio) of specified MIME types in the prompt"
                  | optional,
                data
                  | std.contract.any_of
                    [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ]
                  | doc m%"
                    Input to the model. This can represent a single input, or multiple inputs.
                    The structure of the data object is up to the ModelParser. Attachments field should be leveraged for non-text inputs (e.g. image, audio).
                  "%
                  | optional,
                ..
              },
              String
            ],
      "definitions.SchemaVersion" =
        std.contract.any_of
            [
              { major | Number, minor | Number, .. },
              std.contract.Sequence [ std.enum.TagOrString, [| 'v1, 'latest |] ]
            ],
    }
    in
  {
      description
        | String
        | doc m%"
          Description of the AIConfig.
          If you have a collection of different AIConfigs, this may be used for dynamic prompt routing.
        "%
        | optional,
      metadata
        | {
          default_model
            | String
            | doc "Default model to use for prompts that do not specify a model."
            | optional,
          model_parsers
            | { _ | String }
            | doc m%"
              Model ID to ModelParser ID mapping.
              This is useful if you want to use a custom ModelParser for a model, or if a single ModelParser can handle multiple models.
            "%
            | optional,
          models
            | { _ | {  .. } }
            | doc m%"
              Globally defined model settings. Any prompts that use these models will have these settings applied by default,
              unless they override them with their own model settings.
            "%
            | optional,
          parameters
            | {  .. }
            | doc m%"
              Parameter definitions that are accessible to all prompts in this AIConfig.
              These parameters can be referenced in the prompts using {{param_name}} handlebars syntax.
              For more information, see https://handlebarsjs.com/guide/#basic-usage.
            "%
            | optional,
          ..
        }
        | doc "Root-level metadata that applies to the entire AIConfig.",
      name
        | String
        | doc "Friendly name descriptor for the AIConfig. Could default to the filename if not specified.",
      prompts
        | Array
          {
            input
              | refs."definitions.PromptInput"
              | doc "The prompt string, or a more complex prompt object.",
            metadata
              | {
                model
                  | std.contract.any_of
                    [
                      {
                        name | String | doc "The ID of the model to use.",
                        settings
                          | {  .. }
                          | doc "Model inference settings that apply to this prompt."
                          | optional,
                        ..
                      },
                      String
                    ]
                  | doc m%"
                    Model name/settings that apply to this prompt.
                    These settings override any global model settings that may have been defined in the AIConfig metadata.
                    If this is a string, it is assumed to be the model name.
                    If this is undefined, the default model specified in the default_model property will be used for this Prompt.
                  "%
                  | optional,
                parameters
                  | {  .. }
                  | doc m%"
                    Parameter definitions that are accessible to this prompt.
                    These parameters can be referenced in the prompt using {{param_name}} handlebars syntax.
                    For more information, see https://handlebarsjs.com/guide/#basic-usage.
                  "%
                  | optional,
                tags
                  | Array String
                  | doc "Tags for this prompt. Tags must be unique, and must not contain commas."
                  | optional,
                ..
              }
              | optional,
            name
              | String
              | doc "A unique identifier for the prompt. This is used to reference the prompt in other parts of the AIConfig (such as other prompts)",
            outputs
              | Array refs."definitions.Output"
              | doc "Execution, display, or stream outputs."
              | optional,
            ..
          }
        | doc "Array of prompts that make up the AIConfig.",
      schema_version
        | refs."definitions.SchemaVersion"
        | doc "The version of the AIConfig schema.",
      ..
    }