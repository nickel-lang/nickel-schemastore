# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.basic" =
        std.contract.Sequence [ refs."definitions.feature_generator", {  .. } ],
      "definitions.deeplc" =
        std.contract.Sequence
            [
              refs."definitions.feature_generator",
              {
                calibration_set_size
                  | js2n.OneOf [ std.number.Integer, Number ]
                  | doc "Calibration set size"
                  | optional,
                ..
              }
            ],
      "definitions.feature_generator" = {  .. },
      "definitions.im2deep" =
        std.contract.Sequence
            [
              refs."definitions.feature_generator",
              {
                reference_dataset
                  | String
                  | doc "Path to IM2Deep reference dataset file"
                  | optional,
                ..
              }
            ],
      "definitions.ionmob" =
        std.contract.Sequence
            [
              refs."definitions.feature_generator",
              {
                ionmob_model
                  | String
                  | doc "Path to Ionmob model directory"
                  | optional,
                reference_dataset
                  | String
                  | doc "Path to Ionmob reference dataset file"
                  | optional,
                tokenizer
                  | String
                  | doc "Path to tokenizer json file"
                  | optional,
                ..
              }
            ],
      "definitions.maxquant" =
        std.contract.Sequence [ refs."definitions.feature_generator", {  .. } ],
      "definitions.mokapot" =
        std.contract.Sequence
            [
              refs."definitions.rescoring_engine",
              {
                train_fdr
                  | js2n.number.Maximum 1
                  | js2n.number.Minimum 0
                  | doc "FDR threshold for training Mokapot"
                  | optional,
                write_txt
                  | Bool
                  | doc "Write Mokapot results to a text file"
                  | optional,
                write_weights
                  | Bool
                  | doc "Write Mokapot weights to a text file"
                  | optional,
                ..
              }
            ],
      "definitions.ms2pip" =
        std.contract.Sequence
            [
              refs."definitions.feature_generator",
              {
                model
                  | String
                  | doc "MS²PIP model to use (see MS²PIP documentation)"
                  | optional,
                ms2_tolerance
                  | js2n.number.Minimum 0
                  | doc "MS2 error tolerance in Da"
                  | optional,
                ..
              }
            ],
      "definitions.percolator" =
        std.contract.Sequence
            [
              refs."definitions.rescoring_engine",
              {
                init-weights
                  | js2n.Nullable String
                  | doc "Weights file for scoring function"
                  | optional,
                ..
              }
            ],
      "definitions.rescoring_engine" = {  .. },
    }
    in
  {
      ms2rescore
        | {
          config_file
            | js2n.Nullable String
            | doc "Path to configuration file"
            | optional,
          fasta_file
            | js2n.Nullable String
            | doc "Path to FASTA file with protein sequences to use for protein inference"
            | optional,
          feature_generators
            | js2n.record.Record
              {
                additional = 'Some Dyn,
                patterns =
                  {
                      ".*" = refs."definitions.feature_generator",
                      basic =
                        std.contract.Sequence
                            [ refs."definitions.basic", { _ | Dyn } ],
                      deeplc =
                        std.contract.Sequence
                            [ refs."definitions.deeplc", { _ | Dyn } ],
                      im2deep =
                        std.contract.Sequence
                            [ refs."definitions.im2deep", { _ | Dyn } ],
                      ionmob =
                        std.contract.Sequence
                            [ refs."definitions.ionmob", { _ | Dyn } ],
                      maxquant =
                        std.contract.Sequence
                            [ refs."definitions.maxquant", { _ | Dyn } ],
                      ms2pip =
                        std.contract.Sequence
                            [ refs."definitions.ms2pip", { _ | Dyn } ],
                    },
                properties = {},
                required = {},
              }
            | doc "Feature generators and their configurations."
            | optional,
          fixed_modifications
            | {  .. }
            | doc "Mapping of amino acids with fixed modifications to the modification name."
            | optional,
          id_decoy_pattern
            | js2n.Nullable String
            | doc "Regex pattern used to identify the decoy PSMs in identification file."
            | optional,
          log_level
            | std.enum.TagOrString
            | [| 'critical, 'error, 'warning, 'info, 'debug |]
            | doc "Logging level"
            | optional,
          lower_score_is_better
            | Bool
            | doc "Bool indicating if lower score is better"
            | optional,
          max_psm_rank_input
            | js2n.number.Minimum 1
            | doc "Maximum rank of PSMs to use as input for rescoring"
            | optional,
          max_psm_rank_output
            | js2n.number.Minimum 1
            | doc "Maximum rank of PSMs to return after rescoring, before final FDR calculation"
            | optional,
          modification_mapping
            | { _ | Dyn }
            | doc "Mapping of modification labels to each replacement label."
            | optional,
          output_path
            | js2n.Nullable String
            | doc "Path and root name for output files"
            | optional,
          processes
            | js2n.number.MultipleOf 1
            | js2n.number.Minimum (-1)
            | doc "Number of parallel processes to use; -1 for all available"
            | optional,
          profile
            | Bool
            | doc "Write a txt report using cProfile for profiling"
            | optional,
          psm_file
            | std.contract.any_of [ String, js2n.Null, Array String ]
            | doc "Path to file with peptide-spectrum matches.",
          psm_file_type
            | String
            | doc "PSM file type. By default inferred from file extension."
            | optional,
          psm_id_im_pattern
            | js2n.Nullable String
            | doc "Regex pattern to extract ion mobility from PSM identifier. Requires at least one capturing group."
            | optional,
          psm_id_pattern
            | js2n.Nullable String
            | doc "Regex pattern to extract index or scan number from PSM file. Requires at least one capturing group."
            | optional,
          psm_id_rt_pattern
            | js2n.Nullable String
            | doc "Regex pattern to extract retention time from PSM identifier. Requires at least one capturing group."
            | optional,
          psm_reader_kwargs
            | { _ | Dyn }
            | doc "Keyword arguments passed to the PSM reader."
            | optional,
          rename_to_usi
            | Bool
            | doc "Convert spectrum IDs to their universal spectrum identifier"
            | optional,
          rescoring_engine
            | js2n.record.MaxProperties 1
            | js2n.record.MinProperties 0
            | js2n.record.Record
              {
                additional = 'Some Dyn,
                patterns =
                  {
                      ".*" = refs."definitions.rescoring_engine",
                      mokapot =
                        std.contract.Sequence
                            [ refs."definitions.mokapot", { _ | Dyn } ],
                      percolator =
                        std.contract.Sequence
                            [ refs."definitions.percolator", { _ | Dyn } ],
                    },
                properties = {},
                required = {},
              }
            | doc "Rescoring engine to use and its configuration. Leave empty to skip rescoring and write features to file."
            | optional,
          spectrum_id_pattern
            | js2n.Nullable String
            | doc "Regex pattern to extract index or scan number from spectrum file. Requires at least one capturing group."
            | optional,
          spectrum_path
            | js2n.Nullable String
            | doc "Path to spectrum file or directory with spectrum files"
            | optional,
          write_flashlfq
            | Bool
            | doc "Write results to a FlashLFQ-compatible file"
            | optional,
          write_report
            | Bool
            | doc "Write an HTML report with various QC metrics and charts"
            | optional,
        }
        | doc "General MS²Rescore settings.",
      ..
    }