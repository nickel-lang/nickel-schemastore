# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  Array (
      std.contract.any_of
        [
          js2n.Null,
          Bool,
          Number,
          String,
          {
            params
              | std.contract.any_of
                [
                  js2n.Null,
                  Bool,
                  Number,
                  String,
                  {
                    git
                      | std.contract.any_of
                        [
                          js2n.Null,
                          Bool,
                          { _ | Dyn },
                          Array Dyn,
                          Number,
                          String
                        ],
                    jfrogPlatform
                      | std.contract.any_of
                        [
                          js2n.Null,
                          Bool,
                          { _ | Dyn },
                          Array Dyn,
                          Number,
                          String
                        ]
                      | optional,
                    scan
                      | std.contract.any_of
                        [
                          js2n.Null,
                          Bool,
                          { _ | Dyn },
                          Array Dyn,
                          Number,
                          String
                        ]
                      | optional,
                  },
                  Array Dyn
                ]
              | doc "Includes the configuration of a single Git repository that needs to be scanned. For Azure Repos, Bitbucket Server and GitHub with JFrog Pipelines or Jenkins, you can define multiple 'params' sections one after the other, for scanning multiple Git repositories in the same organization.",
          },
          Array Dyn
        ]
    )