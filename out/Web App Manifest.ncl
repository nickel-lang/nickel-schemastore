# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "allOf.0.definitions.external_application_resource" =
        {
            fingerprints
              | Array
                { type | String | optional, value | String | optional, .. }
              | doc "An array of fingerprint objects used for verifying the application."
              | optional,
            id
              | String
              | doc "Information additional to the URL or instead of the URL, depending on the platform."
              | optional,
            min_version
              | String
              | doc "Information about the minimum version of an application related to this web app."
              | optional,
            platform
              | std.enum.TagOrString
              | [| 'windows, 'itunes, 'play, 'chrome_web_store |]
              | doc "The platform it is associated to.",
            url
              | String
              | doc "The URL where the application can be found."
              | optional,
            ..
          },
      "allOf.0.definitions.manifest_image_resource" =
        {
            purpose
              | std.enum.TagOrString
              | [|
                '"any maskable monochrome",
                '"any monochrome maskable",
                '"maskable any monochrome",
                '"maskable monochrome any",
                '"monochrome any maskable",
                '"monochrome maskable any",
                '"any maskable",
                '"any monochrome",
                '"maskable any",
                '"maskable monochrome",
                '"monochrome any",
                '"monochrome maskable",
                'any,
                'maskable,
                'monochrome
              |]
              | optional,
            sizes
              | js2n.OneOf
                [
                  js2n.string.Matches "^[0-9 x]+$",
                  std.contract.Sequence [ std.enum.TagOrString, [| 'any |] ]
                ]
              | doc "The sizes member is a string consisting of an unordered set of unique space-separated tokens which are ASCII case-insensitive that represents the dimensions of an image for visual media."
              | optional,
            src
              | String
              | doc "The src member of an image is a URL from which a user agent can fetch the icon's data.",
            type
              | js2n.string.Matches "^[\\sa-z0-9\\-+;\\.=\\/]+$"
              | doc "The type member of an image is a hint as to the media type of the image."
              | optional,
            ..
          },
      "allOf.0.definitions.shortcut_item" =
        {
            description
              | String
              | doc "The description member of a shortcut item is a string that allows the developer to describe the purpose of the shortcut."
              | optional,
            icons
              | Array (
                std.contract.Sequence
                  [
                    refs."allOf.0.definitions.manifest_image_resource",
                    { _ | Dyn }
                  ]
              )
              | doc "The icons member of a shortcut item serves as iconic representations of the shortcut in various contexts."
              | optional,
            name
              | String
              | doc "The name member of a shortcut item is a string that represents the name of the shortcut as it is usually displayed to the user in a context menu.",
            short_name
              | String
              | doc "The short_name member of a shortcut item is a string that represents a short version of the name of the shortcut. It is intended to be used where there is insufficient space to display the full name of the shortcut."
              | optional,
            url
              | String
              | doc "The url member of a shortcut item is a URL within scope of a processed manifest that opens when the associated shortcut is activated.",
            ..
          },
      "allOf.2.definitions.share_target" =
        {
            action | String | doc "The URL for the web share target.",
            enctype
              | std.enum.TagOrString
              | [|
                '"MULTIPART/FORM-DATA",
                '"APPLICATION/X-WWW-FORM-URLENCODED",
                '"multipart/form-data",
                '"application/x-www-form-urlencoded"
              |]
              | doc "This member specifies the encoding in the share request."
              | optional,
            method
              | std.enum.TagOrString
              | [| 'post, 'get, 'POST, 'GET |]
              | doc "The HTTP request method for the web share target."
              | optional,
            params
              | refs."allOf.2.definitions.share_target_params"
              | { _ | Dyn }
              | doc "Specifies what data gets shared in the request.",
            ..
          },
      "allOf.2.definitions.share_target_files" =
        {
            accept
              | std.contract.any_of
                [
                  js2n.string.Matches "^((\\..*)|(.*/.*))$",
                  Array (js2n.string.Matches "^((\\..*)|(.*/.*))$")
                ]
              | doc "Sequence of accepted MIME types or file extensions can be shared to the application.",
            name
              | String
              | doc "The name of the form field used to share the files.",
            ..
          },
      "allOf.2.definitions.share_target_params" =
        {
            files
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."allOf.2.definitions.share_target_files",
                      { _ | Dyn }
                    ],
                  Array (
                    std.contract.Sequence
                      [
                        refs."allOf.2.definitions.share_target_files",
                        { _ | Dyn }
                      ]
                  )
                ]
              | doc "Description of how the application receives files from share requests."
              | optional,
            text
              | String
              | doc "The name of the query parameter used for the message body, made of arbitrary text."
              | optional,
            title
              | String
              | doc "The name of the query parameter used for the title of the document being shared."
              | optional,
            url
              | String
              | doc "The name of the query parameter used for the URL string referring to a resource being shared."
              | optional,
            ..
          },
    }
    in
  std.contract.Sequence
      [
        {
          background_color
            | String
            | doc "The background_color member describes the expected background color of the web application."
            | optional,
          dir
            | std.enum.TagOrString
            | [| 'auto, 'rtl, 'ltr |]
            | doc "The base direction of the manifest."
            | optional,
          display
            | std.enum.TagOrString
            | [| 'browser, 'minimal-ui, 'standalone, 'fullscreen |]
            | doc "The item represents the developer's preferred display mode for the web application."
            | optional,
          icons
            | Array refs."allOf.0.definitions.manifest_image_resource"
            | doc "The icons member is an array of icon objects that can serve as iconic representations of the web application in various contexts."
            | optional,
          id
            | String
            | doc "A string that represents the id of the web application."
            | optional,
          lang
            | String
            | doc "The primary language for the values of the manifest."
            | optional,
          name | String | doc "The name of the web application." | optional,
          orientation
            | js2n.OneOf
              [
                js2n.Const "any",
                js2n.Const "natural",
                js2n.Const "landscape",
                js2n.Const "portrait",
                js2n.Const "portrait-primary",
                js2n.Const "portrait-secondary",
                js2n.Const "landscape-primary",
                js2n.Const "landscape-secondary"
              ]
            | doc "The orientation member is a string that serves as the default orientation for all  top-level browsing contexts of the web application."
            | optional,
          prefer_related_applications
            | Bool
            | doc "Boolean value that is used as a hint for the user agent to say that related applications should be preferred over the web application."
            | optional,
          related_applications
            | Array refs."allOf.0.definitions.external_application_resource"
            | doc "Array of application accessible to the underlying application platform that has a relationship with the web application."
            | optional,
          scope
            | String
            | doc "A string that represents the navigation scope of this web application's application context."
            | optional,
          short_name
            | String
            | doc "A string that represents a short version of the name of the web application."
            | optional,
          shortcuts
            | Array refs."allOf.0.definitions.shortcut_item"
            | doc "Array of shortcut items that provide access to key tasks within a web application."
            | optional,
          start_url
            | String
            | doc "Represents the URL that the developer would prefer the user agent load when the user launches the web application."
            | optional,
          theme_color
            | String
            | doc "The theme_color member serves as the default theme color for an application context."
            | optional,
          ..
        },
        {
          categories
            | Array String
            | doc "Describes the expected application categories to which the web application belongs."
            | optional,
          description
            | String
            | doc "Description of the purpose of the web application"
            | optional,
          iarc_rating_id
            | String
            | doc "Represents an ID value of the IARC rating of the web application. It is intended to be used to determine which ages the web application is appropriate for."
            | optional,
          screenshots
            | Array refs."allOf.0.definitions.manifest_image_resource"
            | doc "The screenshots member is an array of image objects represent the web application in common usage scenarios."
            | optional,
          ..
        },
        {
          share_target
            | refs."allOf.2.definitions.share_target"
            | doc "Declares the application to be a web share target, and describes how it receives share data."
            | optional,
          ..
        }
      ]