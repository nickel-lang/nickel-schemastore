# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      directories
        | Array String
        | doc "Required. Lists the directories that define modules to be included in the workspace. The directory paths must be relative to the buf.work.yaml, and can't point to a location outside of the directory where your buf.work.yaml is.",
      version
        | std.contract.Equal "v1"
        | doc "Required. Defines the current configuration version. The only accepted value is v1.",
      ..
    }