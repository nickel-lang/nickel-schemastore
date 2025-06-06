# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.dependencies" = { _ | refs."definitions.dependency" },
      "definitions.dependency" =
        js2n.OneOf
            [
              refs."definitions.versionConstraint",
              js2n.Null,
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        sdk = String,
                        version = refs."definitions.versionConstraint",
                      },
                  required = { sdk = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        hosted =
                          std.contract.any_of
                              [
                                String,
                                js2n.record.Record
                                  {
                                    additional = 'Some Dyn,
                                    patterns = {},
                                    properties =
                                      { name = String, url = String, },
                                    required = { url = true, },
                                  }
                              ],
                        version = refs."definitions.versionConstraint",
                      },
                  required = { hosted = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        git =
                          std.contract.any_of
                              [
                                String,
                                js2n.record.Record
                                  {
                                    additional = 'Some Dyn,
                                    patterns = {},
                                    properties =
                                      {
                                          path = String,
                                          ref = String,
                                          url = String,
                                        },
                                    required = {},
                                  }
                              ],
                      },
                  required = { git = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { path = String, },
                  required = {},
                }
            ],
      "definitions.version" =
        js2n.string.Matches "^\\d+\\.\\d+\\.\\d+(?:[+-]\\S+)?$",
      "definitions.versionConstraint" =
        js2n.OneOf
            [
              std.contract.Sequence [ std.enum.TagOrString, [| '"", 'any |] ],
              std.contract.Sequence [ refs."definitions.version", String ],
              js2n.string.Matches
                "^(?:(?:>=|>|<=|<)\\d+\\.\\d+\\.\\d+(?:[+-]\\S+)?\\s*)+$",
              js2n.string.Matches "^\\^\\d+\\.\\d+\\.\\d+(?:[+-]\\S+)?$"
            ],
    }
    in
  {
      dependencies | refs."definitions.dependencies" | optional,
      dependency_overrides | refs."definitions.dependencies" | optional,
      description
        | String
        | doc "A short, plain text sales-pitch for your package in English. [Learn More](https://dart.dev/tools/pub/pubspec#description)"
        | optional,
      dev_dependencies | refs."definitions.dependencies" | optional,
      documentation
        | String
        | doc "A site that hosts documentation, separate from the main homepage and from the Pub-generated API reference. [Learn more](https://dart.dev/tools/pub/pubspec#documentation)"
        | optional,
      environment | { _ | refs."definitions.versionConstraint" } | optional,
      executables
        | { _ | js2n.Nullable String }
        | doc "A package may expose one or more of its scripts as executables that can be run directly from the command line. [Learn more](https://dart.dev/tools/pub/pubspec#executables)"
        | optional,
      false_secrets
        | Array Dyn
        | doc "Gitignore style list of files where pub will not search for accidentally exposed keys. [Learn more.](https://dart.dev/tools/pub/pubspec#false_secrets)"
        | optional,
      flutter
        | {
          assets
            | Array (
              std.contract.any_of
                [
                  String,
                  {
                    flavors
                      | Array String
                      | doc "A list of flavors that include the asset. [Learn more.](https://docs.flutter.dev/deployment/flavors#conditionally-bundling-assets-based-on-flavor)"
                      | optional,
                    path | String,
                    transformers
                      | Array
                        {
                          args
                            | js2n.array.MinItems 1
                            | Array String
                            | optional,
                          package
                            | String
                            | doc "A Dart command-line app that is invoked with dart run with at least two arguments: --input, which contains the path to the file to transform and --output, which is the location where the transformer code must write its output to",
                          ..
                        }
                      | doc "A list of transformers to apply to the asset. [Learn more.](https://docs.flutter.dev/ui/assets/asset-transformation)"
                      | optional,
                  }
                ]
            )
            | doc "A list of directories or files that contain images or other assets. [Learn more.](https://flutter.dev/docs/development/ui/assets-and-images)"
            | optional,
          fonts
            | Array
              {
                family
                  | String
                  | doc "The name of the typeface. You use this name in the `fontFamily` property of a `TextStyle` object.",
                fonts
                  | js2n.array.MinItems 1
                  | Array
                    {
                      asset
                        | js2n.string.Matches "^.+\\.(ttf|otf|ttc)$"
                        | doc "The path to the font file. Flutter supports the following font formats: OpenType font collections: .ttc, TrueType fonts: .ttf, OpenType fonts: .otf. Flutter does not support fonts in the Web Open Font Format, .woff and .woff2, on desktop platforms.",
                      style
                        | std.enum.TagOrString
                        | [| 'italic, 'normal |]
                        | doc "The style property specifies whether the glyphs in the font file display as either italic or normal. These values correspond to the FontStyle. You can use these styles in the fontStyle property of a TextStyle object. [Learn more.](https://docs.flutter.dev/cookbook/design/fonts#set-font-weight)"
                        | optional,
                      weight
                        | std.number.Integer
                        | js2n.Enum
                          [ 100, 200, 300, 400, 500, 600, 700, 800, 900 ]
                        | doc "The weight property specifies the weight of the outlines in the file. These values correspond to the FontWeight and can be used in the fontWeight property of a TextStyle object. You can't use the weight property to override the weight of the font. [Learn more.](https://docs.flutter.dev/cookbook/design/fonts#specify-the-font-weight)"
                        | optional,
                      ..
                    },
                ..
              }
            | doc "A list of font families and their fonts. [Learn more.](https://docs.flutter.dev/cookbook/design/fonts#declare-the-font-in-the-pubspec-yaml-file)"
            | optional,
          generate
            | Bool
            | doc "Enables generation of localized strings from arb files"
            | optional,
          shaders
            | Array (js2n.string.Matches "\\.frag$")
            | doc "Shaders, in the form of GLSL files with the .frag extension. The Flutter command-line tool compiles the shader to its appropriate backend format, and generates its necessary runtime metadata. The compiled shader is then included in the application just like an asset. [Learn more](https://docs.flutter.dev/ui/design/graphics/fragment-shaders#adding-shaders-to-an-application)"
            | optional,
          uses-material-design
            | Bool
            | doc "Whether this project uses the Material Design package. Required if you use the Material icon font"
            | optional,
          ..
        }
        | doc "Flutter-specific metadata. [Learn more.](https://docs.flutter.dev/tools/pubspec)"
        | optional,
      funding
        | Array String
        | doc "List of URLs where users can sponsor development of the package. [Learn more.](https://dart.dev/tools/pub/pubspec#funding)"
        | optional,
      homepage
        | String
        | doc "A URL pointing to the website for your package. [Learn more](https://dart.dev/tools/pub/pubspec#homepage)"
        | optional,
      ignored_advisories
        | Array String
        | doc "A list of security advisory identifiers that are ignored for this package. [See pub.dev Security Advisories](https://dart.dev/tools/pub/security-advisories) [Learn more.](https://dart.dev/tools/pub/pubspec#ignored_advisories)"
        | optional,
      issue_tracker
        | String
        | doc "A URL for the package's issue tracker, where existing bugs can be viewed and new bugs can be filed. [Learn more](https://dart.dev/tools/pub/pubspec#issue_tracker)"
        | optional,
      name
        | js2n.string.Matches "[a-z0-9_]"
        | doc "The name of this package. The name is how other packages refer to yours, should you publish it. [Learn more](https://dart.dev/tools/pub/pubspec#name)",
      platforms
        | {
          android | js2n.Null | optional,
          ios | js2n.Null | optional,
          linux | js2n.Null | optional,
          macos | js2n.Null | optional,
          web | js2n.Null | optional,
          windows | js2n.Null | optional,
        }
        | doc "The platforms field specifies which platforms the package supports. [Learn more](https://dart.dev/tools/pub/pubspec#platforms)"
        | optional,
      publish_to
        | js2n.OneOf
          [
            String,
            std.contract.Sequence [ std.enum.TagOrString, [| 'none |] ]
          ]
        | String
        | doc "Can be used to specify a custom pub package server to publish. Specify none to prevent a package from being published. [Learn more.](https://dart.dev/tools/pub/pubspec#publish_to)"
        | optional,
      repository
        | String
        | doc "The optional repository field should contain the URL for your package's source code repository. [Learn more](https://dart.dev/tools/pub/pubspec#repository)"
        | optional,
      screenshots
        | js2n.array.MaxItems 10
        | Array
          {
            description | js2n.string.MaxLength 160,
            path | js2n.string.Matches "^.+\\.(png|jpg|gif|webp)$",
            ..
          }
        | doc "Showcase widgets or other visual elements using screenshots displayed that will be displayed on pub.dev. [Learn more.](https://dart.dev/tools/pub/pubspec#screenshots)"
        | optional,
      topics
        | js2n.array.MaxItems 5
        | Array (js2n.string.Matches "^[a-z][a-z0-9-]{1,30}[a-z0-9]$")
        | doc "Pub.dev displays the topics on the package page as well as in the search results. [See the list of available topics](https://pub.dev/topics) [Learn more.](https://dart.dev/tools/pub/pubspec#topics)"
        | optional,
      version
        | refs."definitions.version"
        | doc "A version number is required to host your package on the pub.dev site, but can be omitted for local-only packages. If you omit it, your package is implicitly versioned 0.0.0. [Learn more](https://dart.dev/tools/pub/pubspec#version)"
        | optional,
      ..
    }