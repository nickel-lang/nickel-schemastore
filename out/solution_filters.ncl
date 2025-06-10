# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      solution
        | {
          path
            | String
            | doc "Path to filtered solution. Should be relative to current .slnf"
            | optional,
          projects
            | Array String
            | doc "List of projects that will be included in filitered solution. Paths should be relative to solution rather than to .slnf"
            | optional,
          ..
        }
        | doc "Solution filter description"
        | optional,
      ..
    }