# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      _extends | String | optional,
      autolabeler
        | Array
          {
            body | Array String | optional,
            branch | Array String | optional,
            files | Array String | optional,
            label | String,
            title | Array String | optional,
          }
        | optional,
      categories
        | Array
          {
            collapse-after
              | std.number.Integer
              | js2n.number.Minimum 0
              | optional,
            label | String | optional,
            labels | Array String | optional,
            title | String,
          }
        | optional,
      category-template | String | optional,
      change-template | String | optional,
      change-title-escapes | String | optional,
      commitish | String | optional,
      exclude-contributors | Array String | optional,
      exclude-labels | Array String | optional,
      filter-by-commitish | Bool | optional,
      footer | String | optional,
      header | String | optional,
      include-labels | Array String | optional,
      include-paths | Array String | optional,
      include-pre-releases | Bool | optional,
      latest | String | optional,
      name-template | String | optional,
      no-changes-template | String | optional,
      no-contributors-template | String | optional,
      prerelease | Bool | optional,
      prerelease-identifier | String | optional,
      references | Array String | optional,
      replacers | Array { replace | String, search | String, } | optional,
      sort-by | std.enum.TagOrString | [| 'title, 'merged_at |] | optional,
      sort-direction
        | std.enum.TagOrString
        | [| 'descending, 'ascending |]
        | optional,
      tag-prefix | String | optional,
      tag-template | String | optional,
      template | String | optional,
      version-resolver
        | {
          "default"
            | std.enum.TagOrString
            | [| 'patch, 'minor, 'major |]
            | optional,
          major | { labels | Array String | optional, } | optional,
          minor | { labels | Array String | optional, } | optional,
          patch | { labels | Array String | optional, } | optional,
        }
        | optional,
      version-template | String | optional,
    }