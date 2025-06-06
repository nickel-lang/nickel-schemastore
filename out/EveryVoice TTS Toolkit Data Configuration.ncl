# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      audio
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        | doc "Configuration settings for audio."
        | optional,
      dataset | String | doc "The name of the dataset." | optional,
      dataset_split_seed
        | std.number.Integer
        | doc "The seed to use when splitting the dataset into train and validation sets."
        | optional,
      path_to_audio_config_file
        | js2n.Nullable String
        | doc "The path to an audio configuration file."
        | optional,
      save_dir
        | String
        | doc "The directory to save preprocessed files to."
        | optional,
      source_data
        | Array (
          std.contract.any_of
            [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        )
        | doc "A list of datasets."
        | optional,
      train_split
        | js2n.number.Maximum 1
        | js2n.number.Minimum 0
        | doc "The amount of the dataset to use for training. The rest will be used as validation. Hold some of the validation set out for a test set if you are performing experiments."
        | optional,
    }