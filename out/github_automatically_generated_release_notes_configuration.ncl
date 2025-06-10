# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      changelog
        | {
          categories
            | Array
              {
                exclude
                  | {
                    authors
                      | Array (js2n.string.MinLength 1)
                      | doc "A list of user or bot login handles whose pull requests are to be excluded from this category"
                      | optional,
                    labels
                      | Array (js2n.string.MinLength 1)
                      | doc "A list of labels that exclude a pull request from appearing in this category"
                      | optional,
                  }
                  | optional,
                labels
                  | Array (js2n.string.MinLength 1)
                  | doc "Labels that qualify a pull request for this category. Use * as a catch-all for pull requests that didn't match any of the previous categories",
                title
                  | js2n.string.MinLength 1
                  | doc "The title of a category of changes in release notes",
                ..
              }
            | optional,
          exclude
            | {
              authors
                | Array (js2n.string.MinLength 1)
                | doc "A list of user or bot login handles whose pull requests are to be excluded from release notes"
                | optional,
              labels
                | Array (js2n.string.MinLength 1)
                | doc "A list of labels that exclude a pull request from appearing in release notes"
                | optional,
            }
            | optional,
        }
        | optional,
      ..
    }