# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      aligner
        | std.contract.any_of
          [
            js2n.Null,
            Bool,
            { _ | Dyn },
            Array Dyn,
            Number,
            String,
            js2n.Null,
            Bool,
            { _ | Dyn },
            Array Dyn,
            Number,
            String
          ]
        | optional,
      contact
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        | doc "EveryVoice requires a contact name and email to help prevent misuse. Please read our Guide <https://docs.everyvoice.ca/latest/> to understand more about the importance of misuse prevention with TTS.",
      feature_prediction
        | std.contract.any_of
          [
            js2n.Null,
            Bool,
            { _ | Dyn },
            Array Dyn,
            Number,
            String,
            js2n.Null,
            Bool,
            { _ | Dyn },
            Array Dyn,
            Number,
            String
          ]
        | optional,
      path_to_aligner_config_file | js2n.Nullable String | optional,
      path_to_feature_prediction_config_file | js2n.Nullable String | optional,
      path_to_training_config_file | js2n.Nullable String | optional,
      path_to_vocoder_config_file | js2n.Nullable String | optional,
      training
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        | optional,
      vocoder
        | std.contract.any_of
          [
            js2n.Null,
            Bool,
            { _ | Dyn },
            Array Dyn,
            Number,
            String,
            js2n.Null,
            Bool,
            { _ | Dyn },
            Array Dyn,
            Number,
            String
          ]
        | optional,
    }