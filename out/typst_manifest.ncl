# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  std.contract.Sequence
      [
        js2n.IfThenElse
          (std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              js2n.record.Required [ "template" ],
              Array Dyn
            ])
          (std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                package
                  | std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      std.contract.Sequence
                        [
                          {
                            categories
                              | std.contract.any_of
                                [
                                  js2n.Null,
                                  Bool,
                                  Number,
                                  String,
                                  { _ | Dyn },
                                  js2n.array.MinItems 1
                                ],
                            ..
                          },
                          js2n.record.Required
                            [
                              "authors",
                              "description",
                              "entrypoint",
                              "license",
                              "name",
                              "version"
                            ]
                        ],
                      Array Dyn
                    ]
                  | optional,
                ..
              },
              Array Dyn
            ]) js2n.Always,
        {
          package
            | {
              authors
                | js2n.array.MinItems 1
                | Array String
                | doc "A list of the package's authors. Each author can provide an email address (<user@example.com>), homepage (<https://example.com>), or GitHub handle (<@typst>) in angle brackets. Required for Typst Universe submission."
                | optional,
              categories
                | js2n.array.MaxItems 3
                | js2n.array.UniqueItems
                | Array (
                  std.contract.Sequence
                    [
                      std.enum.TagOrString,
                      [|
                        'office,
                        'cv,
                        'presentation,
                        'flyer,
                        'poster,
                        'thesis,
                        'paper,
                        'report,
                        'book,
                        '"fun",
                        'utility,
                        'integration,
                        'scripting,
                        'languages,
                        'text,
                        'layout,
                        'model,
                        'visualization,
                        'components
                      |]
                    ]
                )
                | doc "An array with up to three categories from the official list to help users discover the package."
                | optional,
              compiler
                | js2n.string.Matches "^(0|[1-9]\\d*)(\\.(0|[1-9]\\d*)){0,2}$"
                | doc "The minimum Typst compiler version required for this package to work (SemVer format). Partial versions like '0' or '0.13' are supported. Pre-release tags are not supported."
                | optional,
              description
                | String
                | doc "A short, clear description of the package (one sentence recommended). Required for Typst Universe submission."
                | optional,
              disciplines
                | js2n.array.UniqueItems
                | Array (
                  std.contract.Sequence
                    [
                      std.enum.TagOrString,
                      [|
                        'transportation,
                        'theology,
                        'theater,
                        'sociology,
                        'psychology,
                        'politics,
                        'physics,
                        'photography,
                        'philosophy,
                        'painting,
                        'music,
                        'medicine,
                        'mathematics,
                        'literature,
                        'linguistics,
                        'law,
                        'journalism,
                        'history,
                        'geology,
                        'geography,
                        'film,
                        'fashion,
                        'engineering,
                        'education,
                        'economics,
                        'drawing,
                        'design,
                        'computer-science,
                        'communication,
                        'chemistry,
                        'business,
                        'biology,
                        'architecture,
                        'archaeology,
                        'anthropology,
                        'agriculture
                      |]
                    ]
                )
                | doc "An array of disciplines from the official list defining the target audience. Should be empty if generally applicable."
                | optional,
              entrypoint
                | String
                | doc "The path to the main Typst file (relative to the package root) that is evaluated when the package is imported.",
              exclude
                | Array String
                | doc "An array of globs specifying files (relative to package root) that should not be part of the published bundle. Do not exclude README or LICENSE."
                | optional,
              homepage
                | String
                | doc "A URL to the package's web presence (e.g., documentation website)."
                | optional,
              keywords
                | js2n.array.UniqueItems
                | Array String
                | doc "An array of search keywords for the package."
                | optional,
              license
                | String
                | doc "The package's license. Must contain a valid SPDX 2.3 expression describing one or multiple licenses that are either OSI-approved (https://opensource.org/licenses/) or CC-BY-4.0, CC-BY-SA-4.0, or CC0-1.0. See https://spdx.dev/learn/handling-license-info/. Required for Typst Universe submission."
                | optional,
              name
                | js2n.string.Matches "^[a-z0-9][a-z0-9\\-]*$"
                | doc "The package's identifier in its namespace. Should use kebab-case if it contains multiple words. Should not contain 'typst'. See https://github.com/typst/packages/tree/main?tab=readme-ov-file#submission-guidelines for detailed requirements.",
              repository
                | String
                | doc "A URL to the repository where this package is developed (e.g., GitHub, GitLab). Used if homepage is not set."
                | optional,
              version
                | js2n.string.Matches "^\\d+\\.\\d+\\.\\d+$"
                | doc "The package's version as a full major-minor-patch triple (following SemVer, no pre-release or build tags). See https://semver.org/",
            }
            | doc "Contains metadata about the package.",
          template
            | {
              entrypoint
                | String
                | doc "Path relative to the template 'path' directory pointing to the main file to be compiled after initialization.",
              path
                | String
                | doc "The directory within the package (relative to package root) containing files to be copied into the user's new project directory.",
              thumbnail
                | js2n.string.Matches "\\.(png|PNG|webp|WEBP)$"
                | doc "Path relative to the package root pointing to a PNG or lossless WebP thumbnail (min 1080px on longer edge, max 3MB) depicting the initialized template.",
            }
            | doc "If present, declares this package as a template."
            | optional,
          tool
            | {  .. }
            | doc "Namespace for third-party tools to store their own configuration."
            | optional,
        }
      ]