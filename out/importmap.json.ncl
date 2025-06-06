# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      imports | { _ | String } | doc "The Imports field" | optional,
      scopes | { _ | { _ | String } } | doc "The Scopes field" | optional,
    }