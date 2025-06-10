# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      contact
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        | doc "EveryVoice requires a contact name and email to help prevent misuse. Please read our Guide <https://docs.everyvoice.ca/latest/> to understand more about the importance of misuse prevention with TTS.",
      model
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        | doc "The model configuration settings."
        | optional,
      path_to_model_config_file
        | js2n.Nullable String
        | doc "The path of a preprocessing configuration file."
        | optional,
      path_to_preprocessing_config_file
        | js2n.Nullable String
        | doc "The path of a preprocessing configuration file."
        | optional,
      path_to_text_config_file | js2n.Nullable String | optional,
      path_to_training_config_file
        | js2n.Nullable String
        | doc "The path of a preprocessing configuration file."
        | optional,
      preprocessing
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        | doc "The preprocessing configuration, including information about audio settings."
        | optional,
      text
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        | optional,
      training
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        | doc "The training configuration hyperparameters."
        | optional,
    }