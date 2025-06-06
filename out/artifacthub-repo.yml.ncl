# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      ignore
        | js2n.array.UniqueItems
        | Array
          {
            name | String | doc "A package name",
            version | String | doc "Regular expression" | optional,
          }
        | doc "Packages that should not be indexed by Artifact Hub"
        | optional,
      owners
        | js2n.array.UniqueItems
        | Array
          {
            email | String | doc "A repository owner email" | optional,
            name | String | doc "A repository owner name" | optional,
          }
        | doc "Repository owners"
        | optional,
      repositoryID
        | String
        | doc "An identifier of the Artifact Hub repository where the packages will be published to"
        | optional,
    }