# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      WebJobs
        | Array { filePath | String | optional, }
        | doc "A list of Azure Webjobs.",
      ..
    }