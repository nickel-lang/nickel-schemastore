# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      authors
        | Array String
        | doc "Authors is a list of authors of the policy"
        | optional,
      changelog
        | String
        | doc "Changelog is the URL of the policy changelog"
        | optional,
      description
        | String
        | doc "Description is the policy description"
        | optional,
      documentation
        | String
        | doc "Documentation is the URL of the policy documentation"
        | optional,
      licenses | Array String | doc "Licenses is the policy license" | optional,
      source
        | String
        | doc "Source is the URL of the policy source code"
        | optional,
      url | String | doc "URL is the URL of the policy source code" | optional,
      vendor | String | doc "Vendor is the policy vendor" | optional,
      version
        | String
        | doc "Version is the policy version, it must be semantic versioning compliant without the leading v"
        | optional,
    }