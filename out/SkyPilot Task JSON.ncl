# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      envs
        | { _ | String }
        | js2n.record.FieldsMatch "^[a-zA-Z_][a-zA-Z0-9_]*$"
        | optional,
      event_callback | String | optional,
      file_mounts
        | {
          "/datasets-storage"
            | {
              mode
                | std.enum.TagOrString
                | [| 'COPY, 'MOUNT |]
                | doc "Either MOUNT or COPY. Optional."
                | optional,
              name
                | String
                | doc "Name of storage, optional when source is bucket URI"
                | optional,
              persistent
                | Bool
                | doc "Defaults to True; can be set to false. Optional."
                | optional,
              source
                | String
                | doc "Source path, can be local or s3/gcs URL. Optional, do not specify to create an empty bucket."
                | optional,
              store
                | std.enum.TagOrString
                | [| 'gcs, 's3 |]
                | doc "Could be either 's3' or 'gcs'; default: None. Optional."
                | optional,
            }
            | optional,
          ..
        }
        | optional,
      inputs | js2n.record.MaxProperties 1 | { _ | Number } | optional,
      name | String | optional,
      num_nodes | std.number.Integer | optional,
      outputs | js2n.record.MaxProperties 1 | { _ | Number } | optional,
      resources | { _ | Dyn } | optional,
      run | String | optional,
      service | { _ | Dyn } | optional,
      setup | String | optional,
      workdir | String | optional,
    }