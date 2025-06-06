# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.cascade" =
        js2n.record.Record
            {
              additional = 'Some Dyn,
              patterns =
                {
                    "^(?!aliases|audio|date|description|draft|expiryDate|headless|images|isCJKLanguage|keywords|layout|lastmod|linkTitle|markup|outputs|publishDate|resources|series|slug|summary|title|type|url|videos|weight)$" =
                      std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            { _ | Dyn },
                            Array Dyn
                          ],
                  },
              properties =
                {
                    aliases =
                      std.contract.Sequence
                          [ refs."definitions.uniqueStringArray", Array Dyn ],
                    audio =
                      std.contract.Sequence
                          [ refs."definitions.uniqueStringArray", Array Dyn ],
                    date = js2n.string.MinLength 1,
                    description = String,
                    draft = Bool,
                    expiryDate = js2n.string.MinLength 1,
                    headless = Bool,
                    images =
                      std.contract.Sequence
                          [ refs."definitions.uniqueStringArray", Array Dyn ],
                    isCJKLanguage = Bool,
                    keywords =
                      std.contract.Sequence
                          [ refs."definitions.uniqueStringArray", Array Dyn ],
                    lastmod = js2n.string.MinLength 1,
                    layout = js2n.string.MinLength 1,
                    linkTitle = js2n.string.MinLength 1,
                    markup =
                      std.contract.Sequence
                          [ std.enum.TagOrString, [| 'md, 'rst |] ],
                    outputs =
                      std.contract.Sequence
                          [ refs."definitions.outputFormats", { _ | Dyn } ],
                    publishDate = js2n.string.MinLength 1,
                    resources =
                      {
                          name
                            | js2n.string.MinLength 1
                            | doc m%"
                              The value for `Name`
                              https://gohugo.io/content-management/page-resources/#page-resources-metadata
                            "%
                            | optional,
                          params
                            | {
                              _ | std.contract.any_of
                                [
                                  js2n.Null,
                                  Bool,
                                  Number,
                                  String,
                                  { _ | Dyn },
                                  Array Dyn
                                ]
                            }
                            | doc m%"
                              The param options
                              https://gohugo.io/content-management/page-resources/#page-resources-metadata
                            "%
                            | optional,
                          title
                            | js2n.string.MinLength 1
                            | doc m%"
                              The value for `Title`
                              https://gohugo.io/content-management/page-resources/#page-resources-metadata
                            "%
                            | optional,
                        },
                    series =
                      std.contract.Sequence
                          [ refs."definitions.uniqueStringArray", Array Dyn ],
                    slug = js2n.string.MinLength 1,
                    summary = js2n.string.MinLength 1,
                    title = js2n.string.MinLength 1,
                    type = js2n.string.MinLength 1,
                    url = js2n.string.MinLength 1,
                    videos =
                      std.contract.Sequence
                          [ refs."definitions.uniqueStringArray", Array Dyn ],
                    weight = std.number.Integer,
                  },
              required = {},
            },
      "definitions.hugoVersion" = js2n.string.Matches "^\\d+\\.\\d+\\.\\d+.*$",
      "definitions.mergeType" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'deep, 'shallow, 'none |] ],
      "definitions.mounts" =
        Array
            {
              disableWatch
                | Bool
                | doc m%"
                  Whether to disable watching
                  https://gohugo.io/hugo-modules/configuration/#module-configuration-mounts
                "%
                | optional,
              excludeFiles
                | std.contract.any_of
                  [
                    String,
                    std.contract.Sequence
                      [ js2n.array.UniqueItems, Array String ]
                  ]
                | doc m%"
                  The excluded files
                  https://gohugo.io/hugo-modules/configuration/#module-configuration-mounts
                "%
                | optional,
              includeFiles
                | std.contract.any_of
                  [
                    String,
                    std.contract.Sequence
                      [ js2n.array.UniqueItems, Array String ]
                  ]
                | doc m%"
                  The included files
                  https://gohugo.io/hugo-modules/configuration/#module-configuration-mounts
                "%
                | optional,
              lang
                | js2n.string.MinLength 1
                | doc m%"
                  The language code
                  https://gohugo.io/hugo-modules/configuration/#module-configuration-mounts
                "%
                | optional,
              source
                | js2n.string.MinLength 1
                | doc m%"
                  The source path
                  https://gohugo.io/hugo-modules/configuration/#module-configuration-mounts
                "%,
              target
                | js2n.string.MinLength 1
                | doc m%"
                  The target path
                  https://gohugo.io/hugo-modules/configuration/#module-configuration-mounts
                "%,
            },
      "definitions.outputFormats" =
        {
            _ | {
              baseName
                | String
                | doc m%"
                  The base filename for the list filenames
                  https://gohugo.io/templates/output-formats/#configure-output-formats
                "%
                | optional,
              isHTML
                | Bool
                | doc m%"
                  
                  https://gohugo.io/templates/output-formats/#configure-output-formats
                "%
                | optional,
              isPlainText
                | Bool
                | doc m%"
                  Enable/disable Go's plain text templates parser for the templates
                  https://gohugo.io/templates/output-formats/#configure-output-formats
                "%
                | optional,
              mediaType
                | std.enum.TagOrString
                | [|
                  '"video/x-msvideo",
                  '"video/webm",
                  '"video/ogg",
                  '"video/mpeg",
                  '"video/mp4",
                  '"video/3gpp",
                  '"text/x-scss",
                  '"text/x-sass",
                  '"text/typescript",
                  '"text/tsx",
                  '"text/plain",
                  '"text/markdown",
                  '"text/jsx",
                  '"text/javascript",
                  '"text/html",
                  '"text/csv",
                  '"text/css",
                  '"text/calendar",
                  '"image/webp",
                  '"image/tiff",
                  '"image/svg+xml",
                  '"image/png",
                  '"image/jpeg",
                  '"image/gif",
                  '"image/bmp",
                  '"font/ttf",
                  '"font/otf",
                  '"application/yaml",
                  '"application/xml",
                  '"application/wasm",
                  '"application/toml",
                  '"application/rss+xml",
                  '"application/pdf",
                  '"application/octet-stream",
                  '"application/manifest+json",
                  '"application/json"
                |]
                | doc m%"
                  The media type
                  https://gohugo.io/templates/output-formats/#media-types
                "%
                | optional,
              name
                | js2n.string.MinLength 1
                | doc m%"
                  The identifier
                  https://gohugo.io/templates/output-formats/#configure-output-formats
                "%
                | optional,
              noUgly
                | Bool
                | doc m%"
                  Enable/disable adding file extensions to urls
                  https://gohugo.io/templates/output-formats/#configure-output-formats
                "%
                | optional,
              notAlternative
                | Bool
                | doc m%"
                  Include/exclude this format in an AlternativeOutputFormats format listing
                  https://gohugo.io/templates/output-formats/#configure-output-formats
                "%
                | optional,
              path
                | js2n.string.MinLength 1
                | doc m%"
                  The path
                  https://gohugo.io/templates/output-formats/#configure-output-formats
                "%
                | optional,
              permalinkable
                | Bool
                | doc m%"
                  Enable/disable .Permalink and .RelPermalink return the rendering output format
                  https://gohugo.io/templates/output-formats/#configure-output-formats
                "%
                | optional,
              protocol
                | String
                | doc m%"
                  The replacement for `http://` or `https://` in `baseURL`
                  https://gohugo.io/templates/output-formats/#configure-output-formats
                "%
                | optional,
              rel
                | String
                | doc m%"
                  
                  https://gohugo.io/templates/output-formats/#configure-output-formats
                "%
                | optional,
              weight
                | std.number.Integer
                | doc m%"
                  The weight
                  https://gohugo.io/templates/output-formats/#configure-output-formats
                "%
                | optional,
            }
          },
      "definitions.permalinkConfiguration" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ refs."definitions.permalinkDefinition", String ],
              {
                _ | std.contract.Sequence
                  [ refs."definitions.permalinkDefinition", String ]
              }
            ],
      "definitions.permalinkDefinition" = String,
      "definitions.uniqueStringArray" =
        std.contract.Sequence
            [ js2n.array.UniqueItems, Array (js2n.string.MinLength 1) ],
    }
    in
  {
      archetypeDir
        | js2n.string.MinLength 1
        | doc m%"
          The directory to store archetype files
          https://gohugo.io/getting-started/configuration/#archetypedir
        "%
        | optional,
      assetDir
        | js2n.string.MinLength 1
        | doc m%"
          The directory to store asset files
          https://gohugo.io/getting-started/configuration/#assetdir
        "%
        | optional,
      baseURL
        | js2n.string.MinLength 1
        | doc m%"
          The hostname and the path to the root
          https://gohugo.io/getting-started/configuration/#baseurl
        "%
        | optional,
      build
        | {
          _merge | refs."definitions.mergeType" | optional,
          buildStats
            | {
              disableClasses | Bool | optional,
              disableIDs | Bool | optional,
              disableTags | Bool | optional,
              enable | Bool | optional,
              ..
            }
            | doc m%"
              When enabled, creates a hugo_stats.json file in the root of your project.
              https://gohugo.io/getting-started/configuration/#configure-build
            "%
            | optional,
          cachebusters
            | Array { source | String | optional, target | String | optional, }
            | doc m%"
              Cache busters to support development using Tailwind 3.x's JIT compiler
              https://gohugo.io/getting-started/configuration/#configure-cache-busters
            "%
            | optional,
          noJSConfigInAssets
            | Bool
            | doc m%"
              Enable/disable `jsconfig.json` writing into your `/assets` folder with mapping of imports from running `js.Build`
              https://gohugo.io/getting-started/configuration/#configure-build
            "%
            | optional,
          useResourceCacheWhen
            | std.enum.TagOrString
            | [| 'fallback, 'always, 'never |]
            | doc m%"
              The time when to use the cached resources in `/resources/_gen` for `PostCSS` and `ToCSS`
              https://gohugo.io/getting-started/configuration/#configure-build
            "%
            | optional,
          writeStats
            | Bool
            | doc m%"
              Enable/disable `hugo_stats.json` writing to the root project directory.
              Although still functional, the writeStats key will be deprecated in a future release.
              https://gohugo.io/getting-started/configuration/#configure-build
            "%
            | optional,
        }
        | doc m%"
          The build options
          https://gohugo.io/getting-started/configuration/#configure-build
        "%
        | optional,
      buildDrafts
        | Bool
        | doc m%"
          Include/exclude the drafts when building
          https://gohugo.io/getting-started/configuration/#builddrafts-false
        "%
        | optional,
      buildExpired
        | Bool
        | doc m%"
          Include/exclude the content already expired
          https://gohugo.io/getting-started/configuration/#buildexpired
        "%
        | optional,
      buildFuture
        | Bool
        | doc m%"
          Include/exclude the content with `publishDate` in the future
          https://gohugo.io/getting-started/configuration/#buildfuture
        "%
        | optional,
      caches
        | js2n.record.Record
          {
            additional =
              'Some
                  {
                    dir
                      | js2n.string.MinLength 1
                      | doc m%"
                        The absolute path to store cache files
                        https://gohugo.io/getting-started/configuration/#the-keywords-explained
                      "%
                      | optional,
                    maxAge
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [ std.number.Integer, js2n.number.Minimum (-1) ],
                          js2n.string.Matches "^-?\\d+[smh]?$"
                        ]
                      | doc m%"
                        The duration before the cache entry will be evicted
                        https://gohugo.io/getting-started/configuration/#the-keywords-explained
                      "%
                      | optional,
                  },
            patterns = {},
            properties = { _merge = refs."definitions.mergeType", },
            required = {},
          }
        | doc m%"
          The cache options
          https://gohugo.io/getting-started/configuration/#configure-file-caches
        "%
        | optional,
      canonifyURLs
        | Bool
        | doc m%"
          Enable/disable relative URLs to absolute conversion
          https://gohugo.io/getting-started/configuration/#canonifyurls
        "%
        | optional,
      cascade
        | std.contract.any_of
          [
            refs."definitions.cascade",
            Array (
              std.contract.Sequence
                [
                  refs."definitions.cascade",
                  {
                    _target
                      | {
                        kind
                          | js2n.string.MinLength 1
                          | doc m%"
                            The glob pattern matching the page's kind
                            https://gohugo.io/content-management/front-matter#front-matter-cascade
                          "%
                          | optional,
                        lang
                          | js2n.string.MinLength 1
                          | doc m%"
                            The glob pattern matching the page's language
                            https://gohugo.io/content-management/front-matter#front-matter-cascade
                          "%
                          | optional,
                        path
                          | js2n.string.MinLength 1
                          | doc m%"
                            The glob pattern matching the content path below /content
                            https://gohugo.io/content-management/front-matter#front-matter-cascade
                          "%
                          | optional,
                      }
                      | doc m%"
                        The front matter default
                        https://gohugo.io/content-management/front-matter#front-matter-cascade
                      "%,
                    ..
                  }
                ]
            )
          ]
        | doc m%"
          The front matter options
          https://gohugo.io/content-management/front-matter#front-matter-cascade
        "%
        | optional,
      contentDir
        | js2n.string.MinLength 1
        | doc m%"
          The directory where content files are stored
          https://gohugo.io/getting-started/configuration/#contentdir
        "%
        | optional,
      copyright
        | String
        | doc m%"
          The copyright notice for your site
          https://gohugo.io/getting-started/configuration/#copyright
        "%
        | optional,
      dataDir
        | js2n.string.MinLength 1
        | doc m%"
          The directory where data files are stored
          https://gohugo.io/getting-started/configuration/#datadir
        "%
        | optional,
      defaultContentLanguage
        | js2n.string.MinLength 1
        | doc m%"
          The default content language for the content without language indicator
          https://gohugo.io/getting-started/configuration/#defaultcontentlanguage
        "%
        | optional,
      defaultContentLanguageInSubdir
        | Bool
        | doc m%"
          Enable/disable rendering the default content language in subdir
          https://gohugo.io/getting-started/configuration/#defaultcontentlanguageinsubdir
        "%
        | optional,
      disableAliases
        | Bool
        | doc m%"
          Enable/disable generation of the alias redirects
          https://gohugo.io/getting-started/configuration/#disablealiases
        "%
        | optional,
      disableHugoGeneratorInject
        | Bool
        | doc m%"
          Enable/disable injecting a generator meta tag in the HTML head on the home page only
          https://gohugo.io/getting-started/configuration/#disablehugogeneratorinject
        "%
        | optional,
      disableKinds
        | js2n.array.UniqueItems
        | Array (
          std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                '"404",
                'robotstxt,
                'sitemap,
                'rss,
                'term,
                'taxonomy,
                'section,
                'home,
                'page
              |]
            ]
        )
        | doc m%"
          Disabled kinds of pages
          https://gohugo.io/getting-started/configuration/#disablekinds
        "%
        | optional,
      disableLanguages
        | refs."definitions.uniqueStringArray"
        | Array Dyn
        | doc m%"
          The disabled languages
          https://gohugo.io/content-management/multilingual/#disable-a-language
        "%
        | optional,
      disableLiveReload
        | Bool
        | doc m%"
          Enable/disable automatic live reloading of browser window
          https://gohugo.io/getting-started/configuration/#disablelivereload
        "%
        | optional,
      disablePathToLower
        | Bool
        | doc m%"
          Enable/disable the url/path to lowercase conversion
          https://gohugo.io/getting-started/configuration/#disablepathtolower
        "%
        | optional,
      enableEmoji
        | Bool
        | doc m%"
          Enable/disable Emoji emoticons support for page content
          https://gohugo.io/getting-started/configuration/#enableemoji
        "%
        | optional,
      enableGitInfo
        | Bool
        | doc m%"
          Enable/disable .GitInfo object for each page
          https://gohugo.io/getting-started/configuration/#enablegitinfo
        "%
        | optional,
      enableInlineShortcodes
        | Bool
        | doc m%"
          Enable/disable inline shortcode support
          https://gohugo.io/getting-started/configuration/#enableinlineshortcodes
        "%
        | optional,
      enableMissingTranslationPlaceholders
        | Bool
        | doc m%"
          Enable/disable placeholder substitution instead of the default value or an empty string if a translation is missing
          https://gohugo.io/getting-started/configuration/#enablemissingtranslationplaceholders
        "%
        | optional,
      enableRobotsTXT
        | Bool
        | doc m%"
          Enable/disable generation of robots.txt file
          https://gohugo.io/getting-started/configuration/#enablerobotstxt
        "%
        | optional,
      footnoteAnchorPrefix
        | String
        | doc m%"
          The prefix for footnote anchors
          https://gohugo.io/getting-started/configuration/#footnoteanchorprefix
        "%
        | optional,
      footnoteReturnLinkContents
        | String
        | doc m%"
          The text to display for footnote return links
          https://gohugo.io/getting-started/configuration/#footnotereturnlinkcontents
        "%
        | optional,
      frontmatter
        | {
          _merge | refs."definitions.mergeType" | optional,
          date
            | js2n.array.UniqueItems
            | Array (
              std.contract.Sequence
                [
                  std.enum.TagOrString,
                  [|
                    'publishDate,
                    'pubdate,
                    'modified,
                    'lastmod,
                    'date,
                    '":git",
                    '":filename",
                    '":fileModTime",
                    '":default"
                  |]
                ]
            )
            | doc m%"
              
              https://gohugo.io/getting-started/configuration/#configure-dates
            "%
            | optional,
          expiryDate
            | js2n.array.UniqueItems
            | Array (
              std.contract.Sequence
                [
                  std.enum.TagOrString,
                  [| 'unpublishdate, 'expiryDate, '":default" |]
                ]
            )
            | doc m%"
              
              https://gohugo.io/getting-started/configuration/#configure-dates
            "%
            | optional,
          lastmod
            | js2n.array.UniqueItems
            | Array (
              std.contract.Sequence
                [
                  std.enum.TagOrString,
                  [|
                    'publishDate,
                    'pubdate,
                    'modified,
                    'lastmod,
                    'date,
                    '":git",
                    '":filename",
                    '":fileModTime",
                    '":default"
                  |]
                ]
            )
            | doc m%"
              
              https://gohugo.io/getting-started/configuration/#configure-dates
            "%
            | optional,
          publishDate
            | js2n.array.UniqueItems
            | Array (
              std.contract.Sequence
                [
                  std.enum.TagOrString,
                  [|
                    'publishDate,
                    'pubdate,
                    'modified,
                    'lastmod,
                    'date,
                    '":git",
                    '":filename",
                    '":fileModTime",
                    '":default"
                  |]
                ]
            )
            | doc m%"
              
              https://gohugo.io/getting-started/configuration/#configure-dates
            "%
            | optional,
        }
        | doc m%"
          The front matter options
          https://gohugo.io/getting-started/configuration/#configure-front-matter
        "%
        | optional,
      googleAnalytics
        | js2n.string.Matches "(UA-\\d{4,9}-\\d)|(G-\\w+)"
        | doc m%"
          The Google Analytics tracking ID
          https://gohugo.io/getting-started/configuration/#googleanalytics
        "%
        | optional,
      hasCJKLanguage
        | Bool
        | doc m%"
          Enable/disable auto-detecting Chinese/Japanese/Korean Languages in the content
          https://gohugo.io/getting-started/configuration/#hascjklanguage
        "%
        | optional,
      imaging
        | {
          _merge | refs."definitions.mergeType" | optional,
          anchor
            | std.enum.TagOrString
            | [|
              'BottomRight,
              'Bottom,
              'BottomLeft,
              'Right,
              'Center,
              'Left,
              'TopRight,
              'Top,
              'TopLeft,
              'Smart
            |]
            | doc m%"
              The anchor used when cropping pictures with either .Fill or .Crop
              https://gohugo.io/content-management/image-processing/#image-processing-config
            "%
            | optional,
          bgColor
            | js2n.string.Matches "^#(\\d|[ABCDEFabcdef]){6}$"
            | doc m%"
              The default background color
              https://gohugo.io/content-management/image-processing/#image-processing-config
            "%
            | optional,
          exif
            | {
              disableDate
                | Bool
                | doc m%"
                  Enable/disable extracting the 'photo taken' date/time into .Date
                  https://gohugo.io/content-management/image-processing/#image-processing-config
                "%
                | optional,
              disableLatLong
                | Bool
                | doc m%"
                  Enable/disable extracting the 'photo taken where' into .Long and .Lat
                  https://gohugo.io/content-management/image-processing/#image-processing-config
                "%
                | optional,
              excludeFields
                | String
                | doc m%"
                  The regexp matching the excluded fields
                  https://gohugo.io/content-management/image-processing/#image-processing-config
                "%
                | optional,
              includeFields
                | String
                | doc m%"
                  The regexp matching the included fields
                  https://gohugo.io/content-management/image-processing/#image-processing-config
                "%
                | optional,
            }
            | doc m%"
              Exif options
              https://gohugo.io/content-management/image-processing/#image-processing-config
            "%
            | optional,
          hint
            | std.enum.TagOrString
            | [| 'text, 'icon, 'drawing, 'photo, 'picture |]
            | doc m%"
              The default hint about what type of image
              https://gohugo.io/content-management/image-processing/#image-processing-config
            "%
            | optional,
          quality
            | std.number.Integer
            | js2n.number.Maximum 100
            | js2n.number.Minimum 0
            | doc m%"
              The default quality
              https://gohugo.io/content-management/image-processing/#image-processing-config
            "%
            | optional,
          resampleFilter
            | std.enum.TagOrString
            | [|
              'Cosine,
              'Welch,
              'Bartlett,
              'Blackman,
              'Hamming,
              'Hann,
              'Lanczos,
              'Gaussian,
              'BSpline,
              'CatmullRom,
              'MitchellNetravali,
              'Hermite,
              'Linear,
              'Box,
              'NearestNeighbor
            |]
            | doc m%"
              The default resample filter
              https://gohugo.io/content-management/image-processing/#resampling-filter
            "%
            | optional,
        }
        | doc m%"
          The image processing options
          https://gohugo.io/getting-started/configuration/#imaging
        "%
        | optional,
      languageCode
        | String
        | doc m%"
          The language tag as defined by RFC 5646
          https://gohugo.io/getting-started/configuration/#languagecode
        "%
        | optional,
      languages
        | js2n.record.Record
          {
            additional = 'Some ({ _ | Dyn }),
            patterns = {},
            properties = { _merge = refs."definitions.mergeType", },
            required = {},
          }
        | doc m%"
          The language options
          https://gohugo.io/content-management/multilingual/#configure-languages
        "%
        | optional,
      markup
        | {
          _merge | refs."definitions.mergeType" | optional,
          asciidocExt
            | {
              attributes
                | { _ | String }
                | doc m%"
                  The document attributes
                  https://docs.asciidoctor.org/asciidoctor/latest/cli/man1/asciidoctor/#document-settings
                "%
                | optional,
              backend
                | std.enum.TagOrString
                | [| 'html, 'manpage, 'docbook5, 'html5 |]
                | doc m%"
                  The backend output file format
                  https://docs.asciidoctor.org/asciidoctor/latest/cli/man1/asciidoctor/#document-settings
                "%
                | optional,
              extensions
                | js2n.array.UniqueItems
                | Array (js2n.string.MinLength 1)
                | doc m%"
                  
                  https://gohugo.io/getting-started/configuration-markup#configure-markup
                "%
                | optional,
              failureLevel
                | String
                | doc m%"
                  The minimum logging level
                  https://docs.asciidoctor.org/asciidoctor/latest/cli/man1/asciidoctor/#processing-information
                "%
                | optional,
              noHeaderOrFooter
                | Bool
                | doc m%"
                  
                  https://gohugo.io/getting-started/configuration-markup#configure-markup
                "%
                | optional,
              preserveTOC
                | Bool
                | doc m%"
                  
                  https://gohugo.io/getting-started/configuration-markup#configure-markup
                "%
                | optional,
              safeMode
                | std.enum.TagOrString
                | [| 'secure, 'server, 'safe, 'unsafe |]
                | doc m%"
                  The safe mode
                  https://docs.asciidoctor.org/asciidoctor/latest/safe-modes/
                "%
                | optional,
              sectionNumbers
                | Bool
                | doc m%"
                  Enable/disable section title's auto-numbering
                  https://docs.asciidoctor.org/asciidoctor.js/latest/cli/options/#document-conversion
                "%
                | optional,
              trace
                | Bool
                | doc m%"
                  Include/exclude the backtrace information on errors
                  https://gohugo.io/getting-started/configuration-markup#configure-markup
                "%
                | optional,
              verbose
                | Bool
                | doc m%"
                  Enable/disable verbose error printing
                  https://gohugo.io/getting-started/configuration-markup#configure-markup
                "%
                | optional,
              workingFolderCurrent
                | Bool
                | doc m%"
                  
                  https://gohugo.io/getting-started/configuration-markup#configure-markup
                "%
                | optional,
            }
            | doc m%"
              AsciidocExt options
              https://docs.asciidoctor.org/asciidoctor/latest/cli/man1/asciidoctor/#processing-information
            "%
            | optional,
          blackfriday
            | {
              angledQuotes
                | Bool
                | doc "https://gohugo.io/getting-started/configuration-markup#blackfriday"
                | optional,
              extensions
                | js2n.Nullable
                  (std.contract.Sequence
                    [ js2n.array.UniqueItems, Array (js2n.string.MinLength 1) ])
                | doc "https://gohugo.io/getting-started/configuration-markup#blackfriday"
                | optional,
              extensionsMask
                | js2n.Nullable String
                | doc "https://gohugo.io/getting-started/configuration-markup#blackfriday"
                | optional,
              footnoteAnchorPrefix
                | String
                | doc "https://gohugo.io/getting-started/configuration-markup#blackfriday"
                | optional,
              footnoteReturnLinkContents
                | String
                | doc "https://gohugo.io/getting-started/configuration-markup#blackfriday"
                | optional,
              fractions
                | Bool
                | doc "https://gohugo.io/getting-started/configuration-markup#blackfriday"
                | optional,
              hrefTargetBlank
                | Bool
                | doc "https://gohugo.io/getting-started/configuration-markup#blackfriday"
                | optional,
              latexDashes
                | Bool
                | doc "https://gohugo.io/getting-started/configuration-markup#blackfriday"
                | optional,
              nofollowLinks
                | Bool
                | doc "https://gohugo.io/getting-started/configuration-markup#blackfriday"
                | optional,
              noreferrerLinks
                | Bool
                | doc "https://gohugo.io/getting-started/configuration-markup#blackfriday"
                | optional,
              plainIDAnchors
                | Bool
                | doc "https://gohugo.io/getting-started/configuration-markup#blackfriday"
                | optional,
              skipHTML
                | Bool
                | doc "https://gohugo.io/getting-started/configuration-markup#blackfriday"
                | optional,
              smartDashes
                | Bool
                | doc "https://gohugo.io/getting-started/configuration-markup#blackfriday"
                | optional,
              smartypants
                | Bool
                | doc "https://gohugo.io/getting-started/configuration-markup#blackfriday"
                | optional,
              smartypantsQuotesNBSP
                | Bool
                | doc "https://gohugo.io/getting-started/configuration-markup#blackfriday"
                | optional,
              taskLists
                | Bool
                | doc "https://gohugo.io/getting-started/configuration-markup#blackfriday"
                | optional,
            }
            | doc m%"
              Blackfriday options
              https://gohugo.io/getting-started/configuration-markup#blackfriday
            "%
            | optional,
          defaultMarkdownHandler
            | std.enum.TagOrString
            | [| 'blackfriday, 'goldmark |]
            | doc m%"
              The default markdown renderer
              https://gohugo.io/getting-started/configuration-markup#blackfriday
            "%
            | optional,
          goldmark
            | {
              extensions
                | {
                  definitionList
                    | Bool
                    | doc m%"
                      
                      https://gohugo.io/getting-started/configuration-markup#goldmark
                    "%
                    | optional,
                  extras
                    | {
                      delete
                        | {
                          enable
                            | Bool
                            | doc m%"
                              
                              https://gohugo.io/configuration/markup/#extras
                            "%
                            | optional,
                          ..
                        }
                        | doc m%"
                          
                          https://gohugo.io/configuration/markup/#extras
                        "%
                        | optional,
                      insert
                        | {
                          enable
                            | Bool
                            | doc m%"
                              
                              https://gohugo.io/configuration/markup/#extras
                            "%
                            | optional,
                          ..
                        }
                        | doc m%"
                          
                          https://gohugo.io/configuration/markup/#extras
                        "%
                        | optional,
                      mark
                        | {
                          enable
                            | Bool
                            | doc m%"
                              
                              https://gohugo.io/configuration/markup/#extras
                            "%
                            | optional,
                          ..
                        }
                        | doc m%"
                          
                          https://gohugo.io/configuration/markup/#extras
                        "%
                        | optional,
                      subscript
                        | {
                          enable
                            | Bool
                            | doc m%"
                              
                              https://gohugo.io/configuration/markup/#extras
                            "%
                            | optional,
                          ..
                        }
                        | doc m%"
                          
                          https://gohugo.io/configuration/markup/#extras
                        "%
                        | optional,
                      superscript
                        | {
                          enable
                            | Bool
                            | doc m%"
                              
                              https://gohugo.io/configuration/markup/#extras
                            "%
                            | optional,
                          ..
                        }
                        | doc m%"
                          
                          https://gohugo.io/configuration/markup/#extras
                        "%
                        | optional,
                      ..
                    }
                    | doc m%"
                      
                      https://gohugo.io/configuration/markup/#extras
                    "%
                    | optional,
                  footnote
                    | Bool
                    | doc m%"
                      
                      https://gohugo.io/getting-started/configuration-markup#goldmark
                    "%
                    | optional,
                  linkify
                    | Bool
                    | doc m%"
                      
                      https://gohugo.io/getting-started/configuration-markup#goldmark
                    "%
                    | optional,
                  linkifyProtocol
                    | String
                    | doc m%"
                      
                      https://gohugo.io/getting-started/configuration-markup#goldmark
                    "%
                    | optional,
                  strikethrough
                    | Bool
                    | doc m%"
                      
                      https://gohugo.io/getting-started/configuration-markup#goldmark
                    "%
                    | optional,
                  table
                    | Bool
                    | doc m%"
                      
                      https://gohugo.io/getting-started/configuration-markup#goldmark
                    "%
                    | optional,
                  taskList
                    | Bool
                    | doc m%"
                      
                      https://gohugo.io/getting-started/configuration-markup#goldmark
                    "%
                    | optional,
                  typographer
                    | Bool
                    | doc m%"
                      
                      https://gohugo.io/getting-started/configuration-markup#goldmark
                    "%
                    | optional,
                }
                | doc m%"
                  The extension options
                  https://gohugo.io/getting-started/configuration-markup#goldmark
                "%
                | optional,
              parser
                | {
                  attribute
                    | {
                      block
                        | Bool
                        | doc m%"
                          
                          https://gohugo.io/getting-started/configuration-markup#goldmark
                        "%
                        | optional,
                      title
                        | Bool
                        | doc m%"
                          
                          https://gohugo.io/getting-started/configuration-markup#goldmark
                        "%
                        | optional,
                    }
                    | doc m%"
                      
                      https://gohugo.io/getting-started/configuration-markup#goldmark
                    "%
                    | optional,
                  autoHeadingID
                    | Bool
                    | doc m%"
                      
                      https://gohugo.io/getting-started/configuration-markup#goldmark
                    "%
                    | optional,
                  autoHeadingIDType
                    | String
                    | doc m%"
                      
                      https://gohugo.io/getting-started/configuration-markup#goldmark
                    "%
                    | optional,
                  wrapStandAloneImageWithinParagraph
                    | Bool
                    | doc m%"
                      
                      https://gohugo.io/getting-started/configuration-markup#goldmark
                    "%
                    | optional,
                }
                | doc m%"
                  The parser options
                  https://gohugo.io/getting-started/configuration-markup#goldmark
                "%
                | optional,
              renderer
                | {
                  hardWraps
                    | Bool
                    | doc m%"
                      
                      https://gohugo.io/getting-started/configuration-markup#goldmark
                    "%
                    | optional,
                  unsafe
                    | Bool
                    | doc m%"
                      
                      https://gohugo.io/getting-started/configuration-markup#goldmark
                    "%
                    | optional,
                  xhtml
                    | Bool
                    | doc m%"
                      
                      https://gohugo.io/getting-started/configuration-markup#goldmark
                    "%
                    | optional,
                }
                | doc m%"
                  The renderer options
                  https://gohugo.io/getting-started/configuration-markup#goldmark
                "%
                | optional,
            }
            | doc m%"
              Goldmark options
              https://gohugo.io/getting-started/configuration-markup#goldmark
            "%
            | optional,
          highlight
            | {
              anchorLineNos
                | Bool
                | doc m%"
                  Enable/disable anchors on line numbers
                  https://gohugo.io/getting-started/configuration-markup#highlight
                "%
                | optional,
              codeFences
                | Bool
                | doc m%"
                  
                  https://gohugo.io/getting-started/configuration-markup#highlight
                "%
                | optional,
              guessSyntax
                | Bool
                | doc m%"
                  
                  https://gohugo.io/getting-started/configuration-markup#highlight
                "%
                | optional,
              hl_Lines
                | std.contract.any_of
                  [
                    std.contract.Sequence
                      [ std.number.Integer, js2n.number.Minimum 1 ],
                    js2n.string.Matches "^\\d+( \\d+(-\\d+)?)*$"
                  ]
                | doc m%"
                  The highlighted line number range
                  https://gohugo.io/getting-started/configuration-markup#highlight
                "%
                | optional,
              lineAnchors
                | String
                | doc m%"
                  The prefix for the anchors on line numbers
                  https://gohugo.io/getting-started/configuration-markup#highlight
                "%
                | optional,
              lineNoStart
                | std.number.Integer
                | js2n.number.Minimum 1
                | doc m%"
                  The first line
                  https://gohugo.io/getting-started/configuration-markup#highlight
                "%
                | optional,
              lineNos
                | std.contract.any_of
                  [
                    Bool,
                    std.contract.Sequence
                      [ std.enum.TagOrString, [| 'inline, 'table |] ]
                  ]
                | doc m%"
                  Enable/disable line numbers
                  https://gohugo.io/getting-started/configuration-markup#highlight
                "%
                | optional,
              lineNumbersInTable
                | Bool
                | doc m%"
                  
                  https://gohugo.io/getting-started/configuration-markup#highlight
                "%
                | optional,
              noClasses
                | Bool
                | doc m%"
                  
                  https://gohugo.io/getting-started/configuration-markup#highlight
                "%
                | optional,
              noHl
                | Bool
                | doc m%"
                  
                  https://gohugo.io/getting-started/configuration-markup#highlight
                "%
                | optional,
              style
                | std.enum.TagOrString
                | [|
                  'xcode,
                  'xcode-dark,
                  'witchhazel,
                  'vulcan,
                  'vs,
                  'vim,
                  'trac,
                  'tango,
                  'swapoff,
                  'solarized-light,
                  'solarized-dark256,
                  'solarized-dark,
                  'rrt,
                  'rose-pine,
                  'rose-pine-moon,
                  'rose-pine-dawn,
                  'rainbow_dash,
                  'pygments,
                  'perldoc,
                  'pastie,
                  'paraiso-light,
                  'paraiso-dark,
                  'onesenterprise,
                  'onedark,
                  'nord,
                  'native,
                  'murphy,
                  'monokailight,
                  'monokai,
                  'modus-vivendi,
                  'modus-operandi,
                  'manni,
                  'lovelace,
                  'igor,
                  'hrdark,
                  'hr_high_contrast,
                  'gruvbox,
                  'gruvbox-light,
                  'github,
                  'github-dark,
                  'fruity,
                  'friendly,
                  'emacs,
                  'dracula,
                  'doom-one2,
                  'doom-one,
                  'colorful,
                  'catppuccin-mocha,
                  'catppuccin-macchiato,
                  'catppuccin-latte,
                  'catppuccin-frappe,
                  'bw,
                  'borland,
                  'base16-snazzy,
                  'average,
                  'autumn,
                  'arduino,
                  'algol_nu,
                  'algol,
                  'abap
                |]
                | doc m%"
                  
                  https://gohugo.io/getting-started/configuration-markup#highlight
                "%
                | optional,
              tabWidth
                | std.number.Integer
                | js2n.number.Minimum 1
                | doc m%"
                  
                  https://gohugo.io/getting-started/configuration-markup#highlight
                "%
                | optional,
            }
            | doc m%"
              The highlighting options
              https://gohugo.io/getting-started/configuration-markup#highlight
            "%
            | optional,
          tableOfContents
            | {
              endLevel
                | std.number.Integer
                | doc m%"
                  The end heading level
                  https://gohugo.io/getting-started/configuration-markup#table-of-contents
                "%
                | optional,
              ordered
                | Bool
                | doc m%"
                  Enable/disable ordered list generation
                  https://gohugo.io/getting-started/configuration-markup#table-of-contents
                "%
                | optional,
              startLevel
                | std.number.Integer
                | doc m%"
                  The start heading level
                  https://gohugo.io/getting-started/configuration-markup#table-of-contents
                "%
                | optional,
            }
            | doc m%"
              The table of contents options
              https://gohugo.io/getting-started/configuration-markup#table-of-contents
            "%
            | optional,
          ..
        }
        | doc m%"
          The markdown options
          https://gohugo.io/getting-started/configuration-markup
        "%
        | optional,
      mediaTypes
        | {
          _merge | refs."definitions.mergeType" | optional,
          "application/json"
            | {
              suffixes
                | js2n.array.UniqueItems
                | Array (js2n.string.MinLength 1)
                | doc m%"
                  
                  https://gohugo.io/templates/output-formats/#media-types
                "%
                | optional,
              ..
            }
            | doc m%"
              
              https://gohugo.io/templates/output-formats/#media-types
            "%
            | optional,
          "application/manifest+json"
            | {
              suffixes
                | js2n.array.UniqueItems
                | Array (js2n.string.MinLength 1)
                | doc m%"
                  
                  https://gohugo.io/templates/output-formats/#media-types
                "%
                | optional,
              ..
            }
            | doc m%"
              
              https://gohugo.io/templates/output-formats/#media-types
            "%
            | optional,
          "application/octet-stream"
            | {
              suffixes
                | js2n.array.UniqueItems
                | Array (js2n.string.MinLength 1)
                | doc m%"
                  
                  https://gohugo.io/templates/output-formats/#media-types
                "%
                | optional,
              ..
            }
            | doc m%"
              
              https://gohugo.io/templates/output-formats/#media-types
            "%
            | optional,
          "application/pdf"
            | {
              suffixes
                | js2n.array.UniqueItems
                | Array (js2n.string.MinLength 1)
                | doc m%"
                  
                  https://gohugo.io/templates/output-formats/#media-types
                "%
                | optional,
              ..
            }
            | doc m%"
              
              https://gohugo.io/templates/output-formats/#media-types
            "%
            | optional,
          "application/rss+xml"
            | {
              suffixes
                | js2n.array.UniqueItems
                | Array (js2n.string.MinLength 1)
                | doc m%"
                  
                  https://gohugo.io/templates/output-formats/#media-types
                "%
                | optional,
              ..
            }
            | doc m%"
              
              https://gohugo.io/templates/output-formats/#media-types
            "%
            | optional,
          "application/toml"
            | {
              suffixes
                | js2n.array.UniqueItems
                | Array (js2n.string.MinLength 1)
                | doc m%"
                  
                  https://gohugo.io/templates/output-formats/#media-types
                "%
                | optional,
              ..
            }
            | doc m%"
              
              https://gohugo.io/templates/output-formats/#media-types
            "%
            | optional,
          "application/wasm"
            | {
              suffix
                | js2n.array.UniqueItems
                | Array (js2n.string.MinLength 1)
                | doc m%"
                  
                  https://gohugo.io/templates/output-formats/#media-types
                "%
                | optional,
              ..
            }
            | doc m%"
              
              https://gohugo.io/templates/output-formats/#media-types
            "%
            | optional,
          "application/xml"
            | {
              suffixes
                | js2n.array.UniqueItems
                | Array (js2n.string.MinLength 1)
                | doc m%"
                  
                  https://gohugo.io/templates/output-formats/#media-types
                "%
                | optional,
              ..
            }
            | doc m%"
              
              https://gohugo.io/templates/output-formats/#media-types
            "%
            | optional,
          "application/yaml"
            | {
              suffixes
                | js2n.array.UniqueItems
                | Array (js2n.string.MinLength 1)
                | doc m%"
                  
                  https://gohugo.io/templates/output-formats/#media-types
                "%
                | optional,
              ..
            }
            | doc m%"
              
              https://gohugo.io/templates/output-formats/#media-types
            "%
            | optional,
          "font/otf"
            | {
              suffixes
                | js2n.array.UniqueItems
                | Array (js2n.string.MinLength 1)
                | doc m%"
                  
                  https://gohugo.io/templates/output-formats/#media-types
                "%
                | optional,
              ..
            }
            | doc m%"
              
              https://gohugo.io/templates/output-formats/#media-types
            "%
            | optional,
          "font/ttf"
            | {
              suffixes
                | js2n.array.UniqueItems
                | Array (js2n.string.MinLength 1)
                | doc m%"
                  
                  https://gohugo.io/templates/output-formats/#media-types
                "%
                | optional,
              ..
            }
            | doc m%"
              
              https://gohugo.io/templates/output-formats/#media-types
            "%
            | optional,
          "image/bmp"
            | {
              suffixes
                | js2n.array.UniqueItems
                | Array (js2n.string.MinLength 1)
                | doc m%"
                  
                  https://gohugo.io/templates/output-formats/#media-types
                "%
                | optional,
              ..
            }
            | doc m%"
              
              https://gohugo.io/templates/output-formats/#media-types
            "%
            | optional,
          "image/gif"
            | {
              suffixes
                | js2n.array.UniqueItems
                | Array (js2n.string.MinLength 1)
                | doc m%"
                  
                  https://gohugo.io/templates/output-formats/#media-types
                "%
                | optional,
              ..
            }
            | doc m%"
              
              https://gohugo.io/templates/output-formats/#media-types
            "%
            | optional,
          "image/jpeg"
            | {
              suffixes
                | js2n.array.UniqueItems
                | Array (js2n.string.MinLength 1)
                | doc m%"
                  
                  https://gohugo.io/templates/output-formats/#media-types
                "%
                | optional,
              ..
            }
            | doc m%"
              
              https://gohugo.io/templates/output-formats/#media-types
            "%
            | optional,
          "image/png"
            | {
              suffixes
                | js2n.array.UniqueItems
                | Array (js2n.string.MinLength 1)
                | doc m%"
                  
                  https://gohugo.io/templates/output-formats/#media-types
                "%
                | optional,
              ..
            }
            | doc m%"
              
              https://gohugo.io/templates/output-formats/#media-types
            "%
            | optional,
          "image/svg+xml"
            | {
              suffixes
                | js2n.array.UniqueItems
                | Array (js2n.string.MinLength 1)
                | doc m%"
                  
                  https://gohugo.io/templates/output-formats/#media-types
                "%
                | optional,
              ..
            }
            | doc m%"
              
              https://gohugo.io/templates/output-formats/#media-types
            "%
            | optional,
          "image/tiff"
            | {
              suffixes
                | js2n.array.UniqueItems
                | Array (js2n.string.MinLength 1)
                | doc m%"
                  
                  https://gohugo.io/templates/output-formats/#media-types
                "%
                | optional,
              ..
            }
            | doc m%"
              
              https://gohugo.io/templates/output-formats/#media-types
            "%
            | optional,
          "image/webp"
            | {
              suffixes
                | js2n.array.UniqueItems
                | Array (js2n.string.MinLength 1)
                | doc m%"
                  
                  https://gohugo.io/templates/output-formats/#media-types
                "%
                | optional,
              ..
            }
            | doc m%"
              
              https://gohugo.io/templates/output-formats/#media-types
            "%
            | optional,
          "text/calendar"
            | {
              suffixes
                | js2n.array.UniqueItems
                | Array (js2n.string.MinLength 1)
                | doc m%"
                  
                  https://gohugo.io/templates/output-formats/#media-types
                "%
                | optional,
              ..
            }
            | doc m%"
              
              https://gohugo.io/templates/output-formats/#media-types
            "%
            | optional,
          "text/css"
            | {
              suffixes
                | js2n.array.UniqueItems
                | Array (js2n.string.MinLength 1)
                | doc m%"
                  
                  https://gohugo.io/templates/output-formats/#media-types
                "%
                | optional,
              ..
            }
            | doc m%"
              
              https://gohugo.io/templates/output-formats/#media-types
            "%
            | optional,
          "text/csv"
            | {
              suffixes
                | js2n.array.UniqueItems
                | Array (js2n.string.MinLength 1)
                | doc m%"
                  
                  https://gohugo.io/templates/output-formats/#media-types
                "%
                | optional,
              ..
            }
            | doc m%"
              
              https://gohugo.io/templates/output-formats/#media-types
            "%
            | optional,
          "text/html"
            | {
              suffixes
                | js2n.array.UniqueItems
                | Array (js2n.string.MinLength 1)
                | doc m%"
                  
                  https://gohugo.io/templates/output-formats/#media-types
                "%
                | optional,
              ..
            }
            | doc m%"
              
              https://gohugo.io/templates/output-formats/#media-types
            "%
            | optional,
          "text/javascript"
            | {
              suffixes
                | js2n.array.UniqueItems
                | Array (js2n.string.MinLength 1)
                | doc m%"
                  
                  https://gohugo.io/templates/output-formats/#media-types
                "%
                | optional,
              ..
            }
            | doc m%"
              
              https://gohugo.io/templates/output-formats/#media-types
            "%
            | optional,
          "text/jsx"
            | {
              suffixes
                | js2n.array.UniqueItems
                | Array (js2n.string.MinLength 1)
                | doc m%"
                  
                  https://gohugo.io/templates/output-formats/#media-types
                "%
                | optional,
              ..
            }
            | doc m%"
              
              https://gohugo.io/templates/output-formats/#media-types
            "%
            | optional,
          "text/markdown"
            | {
              suffixes
                | js2n.array.UniqueItems
                | Array (js2n.string.MinLength 1)
                | doc m%"
                  
                  https://gohugo.io/templates/output-formats/#media-types
                "%
                | optional,
              ..
            }
            | doc m%"
              
              https://gohugo.io/templates/output-formats/#media-types
            "%
            | optional,
          "text/plain"
            | {
              suffixes
                | js2n.array.UniqueItems
                | Array (js2n.string.MinLength 1)
                | doc m%"
                  
                  https://gohugo.io/templates/output-formats/#media-types
                "%
                | optional,
              ..
            }
            | doc m%"
              
              https://gohugo.io/templates/output-formats/#media-types
            "%
            | optional,
          "text/tsx"
            | {
              suffixes
                | js2n.array.UniqueItems
                | Array (js2n.string.MinLength 1)
                | doc m%"
                  
                  https://gohugo.io/templates/output-formats/#media-types
                "%
                | optional,
              ..
            }
            | doc m%"
              
              https://gohugo.io/templates/output-formats/#media-types
            "%
            | optional,
          "text/typescript"
            | {
              suffixes
                | js2n.array.UniqueItems
                | Array (js2n.string.MinLength 1)
                | doc m%"
                  
                  https://gohugo.io/templates/output-formats/#media-types
                "%
                | optional,
              ..
            }
            | doc m%"
              
              https://gohugo.io/templates/output-formats/#media-types
            "%
            | optional,
          "text/x-sass"
            | {
              suffixes
                | js2n.array.UniqueItems
                | Array (js2n.string.MinLength 1)
                | doc m%"
                  
                  https://gohugo.io/templates/output-formats/#media-types
                "%
                | optional,
              ..
            }
            | doc m%"
              
              https://gohugo.io/templates/output-formats/#media-types
            "%
            | optional,
          "text/x-scss"
            | {
              suffixes
                | js2n.array.UniqueItems
                | Array (js2n.string.MinLength 1)
                | doc m%"
                  
                  https://gohugo.io/templates/output-formats/#media-types
                "%
                | optional,
              ..
            }
            | doc m%"
              
              https://gohugo.io/templates/output-formats/#media-types
            "%
            | optional,
          "video/3gpp"
            | {
              suffixes
                | js2n.array.UniqueItems
                | Array (js2n.string.MinLength 1)
                | doc m%"
                  
                  https://gohugo.io/templates/output-formats/#media-types
                "%
                | optional,
              ..
            }
            | doc m%"
              
              https://gohugo.io/templates/output-formats/#media-types
            "%
            | optional,
          "video/mp4"
            | {
              suffixes
                | js2n.array.UniqueItems
                | Array (js2n.string.MinLength 1)
                | doc m%"
                  
                  https://gohugo.io/templates/output-formats/#media-types
                "%
                | optional,
              ..
            }
            | doc m%"
              
              https://gohugo.io/templates/output-formats/#media-types
            "%
            | optional,
          "video/mpeg"
            | {
              suffixes
                | js2n.array.UniqueItems
                | Array (js2n.string.MinLength 1)
                | doc m%"
                  
                  https://gohugo.io/templates/output-formats/#media-types
                "%
                | optional,
              ..
            }
            | doc m%"
              
              https://gohugo.io/templates/output-formats/#media-types
            "%
            | optional,
          "video/ogg"
            | {
              suffixes
                | js2n.array.UniqueItems
                | Array (js2n.string.MinLength 1)
                | doc m%"
                  
                  https://gohugo.io/templates/output-formats/#media-types
                "%
                | optional,
              ..
            }
            | doc m%"
              
              https://gohugo.io/templates/output-formats/#media-types
            "%
            | optional,
          "video/webm"
            | {
              suffixes
                | js2n.array.UniqueItems
                | Array (js2n.string.MinLength 1)
                | doc m%"
                  
                  https://gohugo.io/templates/output-formats/#media-types
                "%
                | optional,
              ..
            }
            | doc m%"
              
              https://gohugo.io/templates/output-formats/#media-types
            "%
            | optional,
          "video/x-msvideo"
            | {
              suffixes
                | js2n.array.UniqueItems
                | Array (js2n.string.MinLength 1)
                | doc m%"
                  
                  https://gohugo.io/templates/output-formats/#media-types
                "%
                | optional,
              ..
            }
            | doc m%"
              
              https://gohugo.io/templates/output-formats/#media-types
            "%
            | optional,
        }
        | doc m%"
          The media type's options
          https://gohugo.io/templates/output-formats/#media-types
        "%
        | optional,
      menu
        | js2n.record.Record
          {
            additional =
              'Some
                  (Array
                    {
                      identifier
                        | js2n.string.MinLength 1
                        | doc m%"
                          Required when two or more menu entries have the same name
                          https://gohugo.io/content-management/menus/#properties-front-matter
                        "%
                        | optional,
                      name
                        | js2n.string.MinLength 1
                        | doc m%"
                          The text to display when rendering the menu entry.
                          https://gohugo.io/content-management/menus/#properties-front-matter
                        "%
                        | optional,
                      pageRef
                        | String
                        | doc m%"
                          Required for internal links.
                          https://gohugo.io/content-management/menus/#properties-site-configuration
                        "%
                        | optional,
                      params
                        | { _ | Dyn }
                        | doc m%"
                          User-defined properties for the menu entry.
                          https://gohugo.io/content-management/menus/#properties-front-matter
                        "%
                        | optional,
                      parent
                        | String
                        | doc m%"
                          Required for child entries in a nested menu.
                          https://gohugo.io/content-management/menus/#properties-front-matter
                        "%
                        | optional,
                      post
                        | String
                        | doc m%"
                          
                          https://gohugo.io/content-management/menus/#add-non-content-entries-to-a-menu
                        "%
                        | optional,
                      pre
                        | String
                        | doc m%"
                          
                          https://gohugo.io/content-management/menus/#add-non-content-entries-to-a-menu
                        "%
                        | optional,
                      title
                        | String
                        | doc m%"
                          
                          https://gohugo.io/content-management/menus/#add-non-content-entries-to-a-menu
                        "%
                        | optional,
                      url
                        | String
                        | doc m%"
                          Required for external links.
                          https://gohugo.io/content-management/menus/#properties-site-configuration
                        "%
                        | optional,
                      weight
                        | std.number.Integer
                        | doc m%"
                          A non-zero integer indicating the entry's position relative the root of the menu, or to its parent for a child entry
                          https://gohugo.io/content-management/menus/#properties-front-matter
                        "%
                        | optional,
                    }),
            patterns = {},
            properties = { _merge = refs."definitions.mergeType", },
            required = {},
          }
        | doc m%"
          The menu options
          https://gohugo.io/content-management/menus/#add-non-content-entries-to-a-menu
        "%
        | optional,
      minify
        | {
          _merge | refs."definitions.mergeType" | optional,
          disableCSS
            | Bool
            | doc m%"
              
              https://gohugo.io/getting-started/configuration/#configure-minify
            "%
            | optional,
          disableHTML
            | Bool
            | doc m%"
              
              https://gohugo.io/getting-started/configuration/#configure-minify
            "%
            | optional,
          disableJS
            | Bool
            | doc m%"
              
              https://gohugo.io/getting-started/configuration/#configure-minify
            "%
            | optional,
          disableJSON
            | Bool
            | doc m%"
              
              https://gohugo.io/getting-started/configuration/#configure-minify
            "%
            | optional,
          disableSVG
            | Bool
            | doc m%"
              
              https://gohugo.io/getting-started/configuration/#configure-minify
            "%
            | optional,
          disableXML
            | Bool
            | doc m%"
              
              https://gohugo.io/getting-started/configuration/#configure-minify
            "%
            | optional,
          minifyOutput
            | Bool
            | doc m%"
              
              https://gohugo.io/getting-started/configuration/#configure-minify
            "%
            | optional,
          tdewolff
            | {
              css
                | {
                  keepCSS2
                    | Bool
                    | doc m%"
                      
                      https://gohugo.io/getting-started/configuration/#configure-minify
                    "%
                    | optional,
                  precision
                    | std.number.Integer
                    | doc m%"
                      
                      https://gohugo.io/getting-started/configuration/#configure-minify
                    "%
                    | optional,
                }
                | doc m%"
                  
                  https://gohugo.io/getting-started/configuration/#configure-minify
                "%
                | optional,
              html
                | {
                  keepComments
                    | Bool
                    | doc m%"
                      
                      https://gohugo.io/getting-started/configuration/#configure-minify
                    "%
                    | optional,
                  keepConditionalComments
                    | Bool
                    | doc m%"
                      
                      https://gohugo.io/getting-started/configuration/#configure-minify
                    "%
                    | optional,
                  keepDefaultAttrVals
                    | Bool
                    | doc m%"
                      
                      https://gohugo.io/getting-started/configuration/#configure-minify
                    "%
                    | optional,
                  keepDocumentTags
                    | Bool
                    | doc m%"
                      
                      https://gohugo.io/getting-started/configuration/#configure-minify
                    "%
                    | optional,
                  keepEndTags
                    | Bool
                    | doc m%"
                      
                      https://gohugo.io/getting-started/configuration/#configure-minify
                    "%
                    | optional,
                  keepQuotes
                    | Bool
                    | doc m%"
                      
                      https://gohugo.io/getting-started/configuration/#configure-minify
                    "%
                    | optional,
                  keepWhitespace
                    | Bool
                    | doc m%"
                      
                      https://gohugo.io/getting-started/configuration/#configure-minify
                    "%
                    | optional,
                }
                | doc m%"
                  
                  https://gohugo.io/getting-started/configuration/#configure-minify
                "%
                | optional,
              js
                | {
                  keepVarNames
                    | Bool
                    | doc m%"
                      Keeps variable names as they are and omits shortening variable names.
                      https://gohugo.io/getting-started/configuration/#configure-minify
                    "%
                    | optional,
                  noNullishOperator
                    | Bool
                    | doc m%"
                      
                      https://gohugo.io/getting-started/configuration/#configure-minify
                    "%
                    | optional,
                  precision
                    | std.number.Integer
                    | doc m%"
                      Number of significant digits to preserve for numbers, 0 means no trimming.
                      https://gohugo.io/getting-started/configuration/#configure-minify
                    "%
                    | optional,
                  version
                    | std.number.Integer
                    | doc m%"
                      ECMAScript version to use for output, 0 is the latest.
                      https://gohugo.io/getting-started/configuration/#configure-minify
                    "%
                    | optional,
                }
                | doc m%"
                  
                  https://gohugo.io/getting-started/configuration/#configure-minify
                "%
                | optional,
              json
                | {
                  keepNumbers
                    | Bool
                    | doc m%"
                      
                      https://gohugo.io/getting-started/configuration/#configure-minify
                    "%
                    | optional,
                  precision
                    | std.number.Integer
                    | doc m%"
                      
                      https://gohugo.io/getting-started/configuration/#configure-minify
                    "%
                    | optional,
                }
                | doc m%"
                  
                  https://gohugo.io/getting-started/configuration/#configure-minify
                "%
                | optional,
              svg
                | {
                  keepComments | Bool | optional,
                  precision
                    | std.number.Integer
                    | js2n.number.Minimum 0
                    | doc m%"
                      
                      https://gohugo.io/getting-started/configuration/#configure-minify
                    "%
                    | optional,
                }
                | doc m%"
                  
                  https://gohugo.io/getting-started/configuration/#configure-minify
                "%
                | optional,
              xml
                | {
                  keepWhitespace
                    | Bool
                    | doc m%"
                      
                      https://gohugo.io/getting-started/configuration/#configure-minify
                    "%
                    | optional,
                }
                | doc m%"
                  
                  https://gohugo.io/getting-started/configuration/#configure-minify
                "%
                | optional,
            }
            | doc m%"
              
              https://gohugo.io/getting-started/configuration/#configure-minify
            "%
            | optional,
        }
        | doc m%"
          
          https://gohugo.io/getting-started/configuration/#configure-minify
        "%
        | optional,
      module
        | {
          _merge | refs."definitions.mergeType" | optional,
          hugoVersion
            | {
              extended
                | Bool
                | doc m%"
                  Enable/disable requiring the extended version
                  https://gohugo.io/hugo-modules/configuration/#module-configuration-hugoversion
                "%
                | optional,
              max
                | refs."definitions.hugoVersion"
                | doc m%"
                  The maximum required version
                  https://gohugo.io/hugo-modules/configuration/#module-configuration-hugoversion
                "%
                | optional,
              min
                | refs."definitions.hugoVersion"
                | doc m%"
                  The minimum required version
                  https://gohugo.io/hugo-modules/configuration/#module-configuration-hugoversion
                "%
                | optional,
            }
            | doc m%"
              The version
              https://gohugo.io/hugo-modules/configuration/#module-configuration-hugoversion
            "%
            | optional,
          imports
            | Array
              {
                disable
                  | Bool
                  | doc m%"
                    Enable/disable the module
                    https://gohugo.io/hugo-modules/configuration/#module-configuration-imports
                  "%
                  | optional,
                ignoreConfig
                  | Bool
                  | doc m%"
                    Use/ignore the configuration file
                    https://gohugo.io/hugo-modules/configuration/#module-configuration-imports
                  "%
                  | optional,
                ignoreImports
                  | Bool
                  | doc m%"
                    Use/ignore the imports
                    https://gohugo.io/hugo-modules/configuration/#module-configuration-imports
                  "%
                  | optional,
                mounts
                  | refs."definitions.mounts"
                  | doc m%"
                    The mount options
                    https://gohugo.io/hugo-modules/configuration/#module-configuration-mounts
                  "%
                  | optional,
                noMounts
                  | Bool
                  | doc m%"
                    Enable/disable the folder mounting
                    https://gohugo.io/hugo-modules/configuration/#module-configuration-imports
                  "%
                  | optional,
                noVendor
                  | Bool
                  | doc m%"
                    Enable/disable vendoring this import
                    https://gohugo.io/hugo-modules/configuration/#module-configuration-imports
                  "%
                  | optional,
                path
                  | js2n.string.MinLength 1
                  | doc m%"
                    The path
                    https://gohugo.io/hugo-modules/configuration/#module-configuration-imports
                  "%,
              }
            | doc m%"
              The import options
              https://gohugo.io/hugo-modules/configuration/#module-configuration-imports
            "%
            | optional,
          mounts
            | refs."definitions.mounts"
            | doc m%"
              The mount options
              https://gohugo.io/hugo-modules/configuration/#module-configuration-mounts
            "%
            | optional,
          noProxy
            | js2n.string.Matches "^[^,]+(,[^,]+)*$"
            | doc m%"
              The glob list of the matching paths that should not use the proxy configured above
              https://gohugo.io/hugo-modules/configuration/#module-configuration-top-level
            "%
            | optional,
          noVendor
            | String
            | doc m%"
              The glob pattern matching the paths to skip when vendoring
              https://gohugo.io/hugo-modules/configuration/#module-configuration-top-level
            "%
            | optional,
          private
            | js2n.string.Matches "^[^,]+(,[^,]+)*$"
            | doc m%"
              The glob list of the matching paths that should be treated as private
              https://gohugo.io/hugo-modules/configuration/#module-configuration-top-level
            "%
            | optional,
          proxy
            | String
            | doc m%"
              The proxy server to download the remote modules
              https://gohugo.io/hugo-modules/configuration/#module-configuration-top-level
            "%
            | optional,
          replacements
            | js2n.string.Matches "^[^,]+ -> [^,]+(,[^,]+ -> [^,]+)*$"
            | doc m%"
              The list of the module path to directory replacement mapping
              https://gohugo.io/hugo-modules/configuration/#module-configuration-top-level
            "%
            | optional,
          vendorClosest
            | Bool
            | doc m%"
              Enable/disable picking the vendored module closest to the module using it
              https://gohugo.io/hugo-modules/configuration/#module-configuration-top-level
            "%
            | optional,
          workspace
            | String
            | doc m%"
              The workspace file to use. This enables Go workspace mode.
              https://gohugo.io/hugo-modules/configuration/#module-configuration-top-level
            "%
            | optional,
        }
        | doc m%"
          The module options
          https://gohugo.io/hugo-modules/configuration/
        "%
        | optional,
      newContentEditor
        | String
        | doc m%"
          The content editor
          https://gohugo.io/getting-started/configuration/#newcontenteditor
        "%
        | optional,
      noChmod
        | Bool
        | doc m%"
          Enable/disable syncing permission mode of files
          https://gohugo.io/getting-started/configuration/#nochmod
        "%
        | optional,
      noTimes
        | Bool
        | doc m%"
          Enable/disable syncing modification time of files
          https://gohugo.io/getting-started/configuration/#notimes
        "%
        | optional,
      outputFormats
        | refs."definitions.outputFormats"
        | doc m%"
          The output format options
          https://gohugo.io/templates/output-formats/#configure-output-formats
        "%
        | optional,
      paginate
        | std.number.Integer
        | doc m%"
          The default number of elements per page in pagination
          https://gohugo.io/getting-started/configuration/#paginate
        "%
        | optional,
      paginatePath
        | js2n.string.MinLength 1
        | doc m%"
          The path element used during pagination
          https://gohugo.io/getting-started/configuration/#paginatepath
        "%
        | optional,
      permalinks
        | {
          _merge | refs."definitions.mergeType" | optional,
          page | refs."definitions.permalinkConfiguration" | optional,
          section | refs."definitions.permalinkConfiguration" | optional,
          term | refs."definitions.permalinkConfiguration" | optional,
          ..
        }
        | doc m%"
          The permalink options
          https://gohugo.io/content-management/urls/#permalinks
        "%
        | optional,
      pluralizeListTitles
        | Bool
        | doc m%"
          Pluralize/leave titles in lists
          https://gohugo.io/getting-started/configuration/#pluralizelisttitles
        "%
        | optional,
      publishDir
        | js2n.string.MinLength 1
        | doc m%"
          The directory where Hugo writes the final static site
          https://gohugo.io/getting-started/configuration/#publishdir
        "%
        | optional,
      refLinksErrorLevel
        | std.enum.TagOrString
        | [| 'WARNING, 'ERROR |]
        | doc m%"
          The logging level for page links cannot be resolved
          https://gohugo.io/getting-started/configuration/#reflinkserrorlevel
        "%
        | optional,
      refLinksNotFoundURL
        | String
        | doc m%"
          The placeholder when a page reference cannot be found in `ref` or `relref`
          https://gohugo.io/getting-started/configuration/#reflinksnotfoundurl
        "%
        | optional,
      related
        | {
          _merge | refs."definitions.mergeType" | optional,
          includeNewer
            | Bool
            | doc m%"
              Include/exclude the pages newer than the current page
              https://gohugo.io/content-management/related/#top-level-config-options
            "%
            | optional,
          indices
            | Array
              {
                applyFilter
                  | Bool
                  | doc m%"
                    Apply a type specific filter to the result of a search. This is currently only used for the fragments type
                    https://gohugo.io/content-management/related/#config-options-per-index
                  "%
                  | optional,
                cardinalityThreshold
                  | std.number.Integer
                  | js2n.number.Maximum 100
                  | js2n.number.Minimum 0
                  | doc m%"
                    A percentage (0-100) used to remove common keywords from the index
                    https://gohugo.io/content-management/related/#config-options-per-index
                  "%
                  | optional,
                name
                  | js2n.string.MinLength 1
                  | doc m%"
                    The index name
                    https://gohugo.io/content-management/related/#config-options-per-index
                  "%
                  | optional,
                pattern
                  | String
                  | doc m%"
                    The date format
                    https://gohugo.io/content-management/related/#config-options-per-index
                  "%
                  | optional,
                toLower
                  | Bool
                  | doc m%"
                    Enable/disable lowering the case keywords in both the indexes and the queries
                    https://gohugo.io/content-management/related/#config-options-per-index
                  "%
                  | optional,
                type
                  | std.enum.TagOrString
                  | [| 'fragments, 'basic |]
                  | doc m%"
                    The index type
                    https://gohugo.io/content-management/related/#config-options-per-index
                  "%
                  | optional,
                weight
                  | std.number.Integer
                  | doc m%"
                    The weight indicating how important this parameter is relative to the other parameters
                    https://gohugo.io/content-management/related/#config-options-per-index
                  "%
                  | optional,
              }
            | doc m%"
              The related content option's entry
              https://gohugo.io/content-management/related/#config-options-per-index
            "%
            | optional,
          threshold
            | std.number.Integer
            | js2n.number.Maximum 100
            | js2n.number.Minimum 0
            | doc m%"
              
              https://gohugo.io/content-management/related/#top-level-config-options
            "%
            | optional,
          toLower
            | Bool
            | doc m%"
              Enable/disable lowering the case keywords in both the indexes and the queries
              https://gohugo.io/content-management/related/#top-level-config-options
            "%
            | optional,
        }
        | doc m%"
          The related content options
          https://gohugo.io/getting-started/configuration/#related
        "%
        | optional,
      relativeURLs
        | Bool
        | doc m%"
          Enable/disable making all relative URLs relative to content root
          https://gohugo.io/getting-started/configuration/#relativeurls
        "%
        | optional,
      removePathAccents
        | Bool
        | doc m%"
          Remove/leave non-spacing marks from composite characters in content paths
          https://gohugo.io/getting-started/configuration/#removepathaccents
        "%
        | optional,
      rssLimit
        | std.number.Integer
        | js2n.number.Minimum (-1)
        | doc m%"
          
          https://gohugo.io/getting-started/configuration/#rsslimit
        "%
        | optional,
      sectionPagesMenu
        | String
        | doc m%"
          
          https://gohugo.io/templates/menu-templates/#section-menu-for-lazy-bloggers
        "%
        | optional,
      security
        | {
          _merge | refs."definitions.mergeType" | optional,
          enableInlineShortcodes
            | Bool
            | doc m%"
              
              https://gohugo.io/about/security-model/#security-policy
            "%
            | optional,
          exec
            | {
              allow
                | js2n.array.UniqueItems
                | Array (js2n.string.MinLength 1)
                | doc m%"
                  
                  https://gohugo.io/about/security-model/#security-policy
                "%
                | optional,
              osEnv
                | js2n.array.UniqueItems
                | Array (js2n.string.MinLength 1)
                | doc m%"
                  
                  https://gohugo.io/about/security-model/#security-policy
                "%
                | optional,
            }
            | doc m%"
              
              https://gohugo.io/about/security-model/#security-policy
            "%
            | optional,
          funcs
            | {
              getenv
                | js2n.array.UniqueItems
                | Array (js2n.string.MinLength 1)
                | doc m%"
                  
                  https://gohugo.io/about/security-model/#security-policy
                "%
                | optional,
            }
            | doc m%"
              
              https://gohugo.io/about/security-model/#security-policy
            "%
            | optional,
          http
            | {
              methods
                | js2n.array.UniqueItems
                | Array (js2n.string.MinLength 1)
                | doc m%"
                  
                  https://gohugo.io/about/security-model/#security-policy
                "%
                | optional,
              urls
                | js2n.array.UniqueItems
                | Array (js2n.string.MinLength 1)
                | doc m%"
                  
                  https://gohugo.io/about/security-model/#security-policy
                "%
                | optional,
            }
            | doc m%"
              
              https://gohugo.io/about/security-model/#security-policy
            "%
            | optional,
        }
        | doc m%"
          The security options
          https://gohugo.io/about/security-model/#security-policy
        "%
        | optional,
      sitemap
        | {
          _merge | refs."definitions.mergeType" | optional,
          changefreq
            | String
            | doc m%"
              
              https://gohugo.io/templates/sitemap-template/#configure-sitemapxml
            "%
            | optional,
          filename
            | String
            | doc m%"
              
              https://gohugo.io/templates/sitemap-template/#configure-sitemapxml
            "%
            | optional,
          "priority"
            | js2n.number.Maximum 1
            | js2n.number.Minimum 0
            | doc m%"
              
              https://gohugo.io/templates/sitemap-template/#configure-sitemapxml
            "%
            | optional,
        }
        | doc m%"
          The sitemap options
          https://gohugo.io/templates/sitemap-template/#configure-sitemapxml
        "%
        | optional,
      summaryLength
        | std.number.Integer
        | js2n.number.Minimum 0
        | doc m%"
          The length of text in words to show in a .Summary
          https://gohugo.io/getting-started/configuration/#summarylength
        "%
        | optional,
      taxonomies
        | js2n.record.Record
          {
            additional = 'Some Dyn,
            patterns = { "^(?!tag|category)$" = js2n.string.MinLength 1, },
            properties =
              {
                  _merge = refs."definitions.mergeType",
                  category = js2n.string.MinLength 1,
                  tag = js2n.string.MinLength 1,
                },
            required = {},
          }
        | doc m%"
          The taxonomy options
          https://gohugo.io/content-management/taxonomies#configure-taxonomies
        "%
        | optional,
      theme
        | std.contract.any_of [ String, Array String ]
        | doc m%"
          Theme or Theme list
          https://gohugo.io/hugo-modules/configuration/#module-configuration-imports
        "%
        | optional,
      themesDir
        | js2n.string.MinLength 1
        | doc m%"
          The directory where themes are stored
          https://gohugo.io/getting-started/configuration/#themesdir
        "%
        | optional,
      timeZone
        | std.enum.TagOrString
        | [|
          '"US/Samoa",
          '"US/Pacific",
          '"US/Mountain",
          '"US/Michigan",
          '"US/Indiana-Starke",
          '"US/Hawaii",
          '"US/Eastern",
          '"US/East-Indiana",
          '"US/Central",
          '"US/Arizona",
          '"US/Aleutian",
          '"US/Alaska",
          'Singapore,
          'ROC,
          'PRC,
          'Portugal,
          'Poland,
          '"Pacific/Yap",
          '"Pacific/Wallis",
          '"Pacific/Wake",
          '"Pacific/Truk",
          '"Pacific/Tongatapu",
          '"Pacific/Tarawa",
          '"Pacific/Tahiti",
          '"Pacific/Samoa",
          '"Pacific/Saipan",
          '"Pacific/Rarotonga",
          '"Pacific/Port_Moresby",
          '"Pacific/Ponape",
          '"Pacific/Pohnpei",
          '"Pacific/Pitcairn",
          '"Pacific/Palau",
          '"Pacific/Pago_Pago",
          '"Pacific/Noumea",
          '"Pacific/Norfolk",
          '"Pacific/Niue",
          '"Pacific/Nauru",
          '"Pacific/Midway",
          '"Pacific/Marquesas",
          '"Pacific/Majuro",
          '"Pacific/Kwajalein",
          '"Pacific/Kosrae",
          '"Pacific/Kiritimati",
          '"Pacific/Kanton",
          '"Pacific/Johnston",
          '"Pacific/Honolulu",
          '"Pacific/Guam",
          '"Pacific/Guadalcanal",
          '"Pacific/Gambier",
          '"Pacific/Galapagos",
          '"Pacific/Funafuti",
          '"Pacific/Fiji",
          '"Pacific/Fakaofo",
          '"Pacific/Enderbury",
          '"Pacific/Efate",
          '"Pacific/Easter",
          '"Pacific/Chuuk",
          '"Pacific/Chatham",
          '"Pacific/Bougainville",
          '"Pacific/Auckland",
          '"Pacific/Apia",
          'NZ-CHAT,
          'NZ,
          'Navajo,
          '"Mexico/General",
          '"Mexico/BajaSur",
          '"Mexico/BajaNorte",
          'Libya,
          'Kwajalein,
          'Japan,
          'Jamaica,
          'Israel,
          'Iran,
          '"Indian/Reunion",
          '"Indian/Mayotte",
          '"Indian/Mauritius",
          '"Indian/Maldives",
          '"Indian/Mahe",
          '"Indian/Kerguelen",
          '"Indian/Comoro",
          '"Indian/Cocos",
          '"Indian/Christmas",
          '"Indian/Chagos",
          '"Indian/Antananarivo",
          'Iceland,
          'Hongkong,
          'GB-Eire,
          'GB,
          '"Europe/Zurich",
          '"Europe/Zaporozhye",
          '"Europe/Zagreb",
          '"Europe/Warsaw",
          '"Europe/Volgograd",
          '"Europe/Vilnius",
          '"Europe/Vienna",
          '"Europe/Vatican",
          '"Europe/Vaduz",
          '"Europe/Uzhgorod",
          '"Europe/Ulyanovsk",
          '"Europe/Tiraspol",
          '"Europe/Tirane",
          '"Europe/Tallinn",
          '"Europe/Stockholm",
          '"Europe/Sofia",
          '"Europe/Skopje",
          '"Europe/Simferopol",
          '"Europe/Saratov",
          '"Europe/Sarajevo",
          '"Europe/San_Marino",
          '"Europe/Samara",
          '"Europe/Rome",
          '"Europe/Riga",
          '"Europe/Prague",
          '"Europe/Podgorica",
          '"Europe/Paris",
          '"Europe/Oslo",
          '"Europe/Nicosia",
          '"Europe/Moscow",
          '"Europe/Monaco",
          '"Europe/Minsk",
          '"Europe/Mariehamn",
          '"Europe/Malta",
          '"Europe/Madrid",
          '"Europe/Luxembourg",
          '"Europe/London",
          '"Europe/Ljubljana",
          '"Europe/Lisbon",
          '"Europe/Kirov",
          '"Europe/Kiev",
          '"Europe/Kaliningrad",
          '"Europe/Jersey",
          '"Europe/Istanbul",
          '"Europe/Isle_of_Man",
          '"Europe/Helsinki",
          '"Europe/Guernsey",
          '"Europe/Gibraltar",
          '"Europe/Dublin",
          '"Europe/Copenhagen",
          '"Europe/Chisinau",
          '"Europe/Busingen",
          '"Europe/Budapest",
          '"Europe/Bucharest",
          '"Europe/Brussels",
          '"Europe/Bratislava",
          '"Europe/Berlin",
          '"Europe/Belgrade",
          '"Europe/Belfast",
          '"Europe/Athens",
          '"Europe/Astrakhan",
          '"Europe/Andorra",
          '"Europe/Amsterdam",
          '"Etc/Zulu",
          '"Etc/UTC",
          '"Etc/Universal",
          '"Etc/UCT",
          '"Etc/Greenwich",
          '"Etc/GMT0",
          '"Etc/GMT-9",
          '"Etc/GMT-8",
          '"Etc/GMT-7",
          '"Etc/GMT-6",
          '"Etc/GMT-5",
          '"Etc/GMT-4",
          '"Etc/GMT-3",
          '"Etc/GMT-2",
          '"Etc/GMT-14",
          '"Etc/GMT-13",
          '"Etc/GMT-12",
          '"Etc/GMT-11",
          '"Etc/GMT-10",
          '"Etc/GMT-1",
          '"Etc/GMT-0",
          '"Etc/GMT+9",
          '"Etc/GMT+8",
          '"Etc/GMT+7",
          '"Etc/GMT+6",
          '"Etc/GMT+5",
          '"Etc/GMT+4",
          '"Etc/GMT+3",
          '"Etc/GMT+2",
          '"Etc/GMT+12",
          '"Etc/GMT+11",
          '"Etc/GMT+10",
          '"Etc/GMT+1",
          '"Etc/GMT+0",
          '"Etc/GMT",
          'Eire,
          'Egypt,
          'Cuba,
          '"Chile/EasterIsland",
          '"Chile/Continental",
          '"Canada/Yukon",
          '"Canada/Saskatchewan",
          '"Canada/Pacific",
          '"Canada/Newfoundland",
          '"Canada/Mountain",
          '"Canada/Eastern",
          '"Canada/Central",
          '"Canada/Atlantic",
          '"Brazil/West",
          '"Brazil/East",
          '"Brazil/DeNoronha",
          '"Brazil/Acre",
          '"Australia/Yancowinna",
          '"Australia/West",
          '"Australia/Victoria",
          '"Australia/Tasmania",
          '"Australia/Sydney",
          '"Australia/South",
          '"Australia/Queensland",
          '"Australia/Perth",
          '"Australia/NSW",
          '"Australia/North",
          '"Australia/Melbourne",
          '"Australia/Lord_Howe",
          '"Australia/Lindeman",
          '"Australia/LHI",
          '"Australia/Hobart",
          '"Australia/Eucla",
          '"Australia/Darwin",
          '"Australia/Currie",
          '"Australia/Canberra",
          '"Australia/Broken_Hill",
          '"Australia/Brisbane",
          '"Australia/Adelaide",
          '"Australia/ACT",
          '"Atlantic/Stanley",
          '"Atlantic/St_Helena",
          '"Atlantic/South_Georgia",
          '"Atlantic/Reykjavik",
          '"Atlantic/Madeira",
          '"Atlantic/Jan_Mayen",
          '"Atlantic/Faroe",
          '"Atlantic/Faeroe",
          '"Atlantic/Cape_Verde",
          '"Atlantic/Canary",
          '"Atlantic/Bermuda",
          '"Atlantic/Azores",
          '"Asia/Yerevan",
          '"Asia/Yekaterinburg",
          '"Asia/Yangon",
          '"Asia/Yakutsk",
          '"Asia/Vladivostok",
          '"Asia/Vientiane",
          '"Asia/Ust-Nera",
          '"Asia/Urumqi",
          '"Asia/Ulan_Bator",
          '"Asia/Ulaanbaatar",
          '"Asia/Ujung_Pandang",
          '"Asia/Tomsk",
          '"Asia/Tokyo",
          '"Asia/Thimphu",
          '"Asia/Thimbu",
          '"Asia/Tel_Aviv",
          '"Asia/Tehran",
          '"Asia/Tbilisi",
          '"Asia/Tashkent",
          '"Asia/Taipei",
          '"Asia/Srednekolymsk",
          '"Asia/Singapore",
          '"Asia/Shanghai",
          '"Asia/Seoul",
          '"Asia/Samarkand",
          '"Asia/Sakhalin",
          '"Asia/Saigon",
          '"Asia/Riyadh",
          '"Asia/Rangoon",
          '"Asia/Qyzylorda",
          '"Asia/Qostanay",
          '"Asia/Qatar",
          '"Asia/Pyongyang",
          '"Asia/Pontianak",
          '"Asia/Phnom_Penh",
          '"Asia/Oral",
          '"Asia/Omsk",
          '"Asia/Novosibirsk",
          '"Asia/Novokuznetsk",
          '"Asia/Nicosia",
          '"Asia/Muscat",
          '"Asia/Manila",
          '"Asia/Makassar",
          '"Asia/Magadan",
          '"Asia/Macau",
          '"Asia/Macao",
          '"Asia/Kuwait",
          '"Asia/Kuching",
          '"Asia/Kuala_Lumpur",
          '"Asia/Krasnoyarsk",
          '"Asia/Kolkata",
          '"Asia/Khandyga",
          '"Asia/Katmandu",
          '"Asia/Kathmandu",
          '"Asia/Kashgar",
          '"Asia/Karachi",
          '"Asia/Kamchatka",
          '"Asia/Kabul",
          '"Asia/Jerusalem",
          '"Asia/Jayapura",
          '"Asia/Jakarta",
          '"Asia/Istanbul",
          '"Asia/Irkutsk",
          '"Asia/Hovd",
          '"Asia/Hong_Kong",
          '"Asia/Ho_Chi_Minh",
          '"Asia/Hebron",
          '"Asia/Harbin",
          '"Asia/Gaza",
          '"Asia/Famagusta",
          '"Asia/Dushanbe",
          '"Asia/Dubai",
          '"Asia/Dili",
          '"Asia/Dhaka",
          '"Asia/Damascus",
          '"Asia/Dacca",
          '"Asia/Colombo",
          '"Asia/Chungking",
          '"Asia/Chongqing",
          '"Asia/Choibalsan",
          '"Asia/Chita",
          '"Asia/Calcutta",
          '"Asia/Brunei",
          '"Asia/Bishkek",
          '"Asia/Beirut",
          '"Asia/Barnaul",
          '"Asia/Bangkok",
          '"Asia/Baku",
          '"Asia/Bahrain",
          '"Asia/Baghdad",
          '"Asia/Atyrau",
          '"Asia/Ashkhabad",
          '"Asia/Ashgabat",
          '"Asia/Aqtobe",
          '"Asia/Aqtau",
          '"Asia/Anadyr",
          '"Asia/Amman",
          '"Asia/Almaty",
          '"Asia/Aden",
          '"Arctic/Longyearbyen",
          '"Antarctica/Vostok",
          '"Antarctica/Troll",
          '"Antarctica/Syowa",
          '"Antarctica/South_Pole",
          '"Antarctica/Rothera",
          '"Antarctica/Palmer",
          '"Antarctica/McMurdo",
          '"Antarctica/Mawson",
          '"Antarctica/Macquarie",
          '"Antarctica/DumontDUrville",
          '"Antarctica/Davis",
          '"Antarctica/Casey",
          '"America/Yellowknife",
          '"America/Yakutat",
          '"America/Winnipeg",
          '"America/Whitehorse",
          '"America/Virgin",
          '"America/Vancouver",
          '"America/Tortola",
          '"America/Toronto",
          '"America/Tijuana",
          '"America/Thunder_Bay",
          '"America/Thule",
          '"America/Tegucigalpa",
          '"America/Swift_Current",
          '"America/St_Vincent",
          '"America/St_Thomas",
          '"America/St_Lucia",
          '"America/St_Kitts",
          '"America/St_Johns",
          '"America/St_Barthelemy",
          '"America/Sitka",
          '"America/Shiprock",
          '"America/Scoresbysund",
          '"America/Sao_Paulo",
          '"America/Santo_Domingo",
          '"America/Santiago",
          '"America/Santarem",
          '"America/Santa_Isabel",
          '"America/Rosario",
          '"America/Rio_Branco",
          '"America/Resolute",
          '"America/Regina",
          '"America/Recife",
          '"America/Rankin_Inlet",
          '"America/Rainy_River",
          '"America/Punta_Arenas",
          '"America/Puerto_Rico",
          '"America/Porto_Velho",
          '"America/Porto_Acre",
          '"America/Port_of_Spain",
          '"America/Port-au-Prince",
          '"America/Phoenix",
          '"America/Paramaribo",
          '"America/Pangnirtung",
          '"America/Panama",
          '"America/Ojinaga",
          '"America/Nuuk",
          '"America/North_Dakota/New_Salem",
          '"America/North_Dakota/Center",
          '"America/North_Dakota/Beulah",
          '"America/Noronha",
          '"America/Nome",
          '"America/Nipigon",
          '"America/New_York",
          '"America/Nassau",
          '"America/Montserrat",
          '"America/Montreal",
          '"America/Montevideo",
          '"America/Monterrey",
          '"America/Moncton",
          '"America/Miquelon",
          '"America/Mexico_City",
          '"America/Metlakatla",
          '"America/Merida",
          '"America/Menominee",
          '"America/Mendoza",
          '"America/Mazatlan",
          '"America/Matamoros",
          '"America/Martinique",
          '"America/Marigot",
          '"America/Manaus",
          '"America/Managua",
          '"America/Maceio",
          '"America/Lower_Princes",
          '"America/Louisville",
          '"America/Los_Angeles",
          '"America/Lima",
          '"America/La_Paz",
          '"America/Kralendijk",
          '"America/Knox_IN",
          '"America/Kentucky/Monticello",
          '"America/Kentucky/Louisville",
          '"America/Juneau",
          '"America/Jujuy",
          '"America/Jamaica",
          '"America/Iqaluit",
          '"America/Inuvik",
          '"America/Indianapolis",
          '"America/Indiana/Winamac",
          '"America/Indiana/Vincennes",
          '"America/Indiana/Vevay",
          '"America/Indiana/Tell_City",
          '"America/Indiana/Petersburg",
          '"America/Indiana/Marengo",
          '"America/Indiana/Knox",
          '"America/Indiana/Indianapolis",
          '"America/Hermosillo",
          '"America/Havana",
          '"America/Halifax",
          '"America/Guyana",
          '"America/Guayaquil",
          '"America/Guatemala",
          '"America/Guadeloupe",
          '"America/Grenada",
          '"America/Grand_Turk",
          '"America/Goose_Bay",
          '"America/Godthab",
          '"America/Glace_Bay",
          '"America/Fortaleza",
          '"America/Fort_Wayne",
          '"America/Fort_Nelson",
          '"America/Ensenada",
          '"America/El_Salvador",
          '"America/Eirunepe",
          '"America/Edmonton",
          '"America/Dominica",
          '"America/Detroit",
          '"America/Denver",
          '"America/Dawson_Creek",
          '"America/Dawson",
          '"America/Danmarkshavn",
          '"America/Curacao",
          '"America/Cuiaba",
          '"America/Creston",
          '"America/Costa_Rica",
          '"America/Cordoba",
          '"America/Coral_Harbour",
          '"America/Chihuahua",
          '"America/Chicago",
          '"America/Cayman",
          '"America/Cayenne",
          '"America/Catamarca",
          '"America/Caracas",
          '"America/Cancun",
          '"America/Campo_Grande",
          '"America/Cambridge_Bay",
          '"America/Buenos_Aires",
          '"America/Boise",
          '"America/Bogota",
          '"America/Boa_Vista",
          '"America/Blanc-Sablon",
          '"America/Belize",
          '"America/Belem",
          '"America/Barbados",
          '"America/Bahia_Banderas",
          '"America/Bahia",
          '"America/Atka",
          '"America/Atikokan",
          '"America/Asuncion",
          '"America/Aruba",
          '"America/Argentina/Ushuaia",
          '"America/Argentina/Tucuman",
          '"America/Argentina/San_Luis",
          '"America/Argentina/San_Juan",
          '"America/Argentina/Salta",
          '"America/Argentina/Rio_Gallegos",
          '"America/Argentina/Mendoza",
          '"America/Argentina/La_Rioja",
          '"America/Argentina/Jujuy",
          '"America/Argentina/Cordoba",
          '"America/Argentina/ComodRivadavia",
          '"America/Argentina/Catamarca",
          '"America/Argentina/Buenos_Aires",
          '"America/Araguaina",
          '"America/Antigua",
          '"America/Anguilla",
          '"America/Anchorage",
          '"America/Adak",
          '"Africa/Windhoek",
          '"Africa/Tunis",
          '"Africa/Tripoli",
          '"Africa/Timbuktu",
          '"Africa/Sao_Tome",
          '"Africa/Porto-Novo",
          '"Africa/Ouagadougou",
          '"Africa/Nouakchott",
          '"Africa/Niamey",
          '"Africa/Ndjamena",
          '"Africa/Nairobi",
          '"Africa/Monrovia",
          '"Africa/Mogadishu",
          '"Africa/Mbabane",
          '"Africa/Maseru",
          '"Africa/Maputo",
          '"Africa/Malabo",
          '"Africa/Lusaka",
          '"Africa/Lubumbashi",
          '"Africa/Luanda",
          '"Africa/Lome",
          '"Africa/Libreville",
          '"Africa/Lagos",
          '"Africa/Kinshasa",
          '"Africa/Kigali",
          '"Africa/Khartoum",
          '"Africa/Kampala",
          '"Africa/Juba",
          '"Africa/Johannesburg",
          '"Africa/Harare",
          '"Africa/Gaborone",
          '"Africa/Freetown",
          '"Africa/El_Aaiun",
          '"Africa/Douala",
          '"Africa/Djibouti",
          '"Africa/Dar_es_Salaam",
          '"Africa/Dakar",
          '"Africa/Conakry",
          '"Africa/Ceuta",
          '"Africa/Casablanca",
          '"Africa/Cairo",
          '"Africa/Bujumbura",
          '"Africa/Brazzaville",
          '"Africa/Blantyre",
          '"Africa/Bissau",
          '"Africa/Banjul",
          '"Africa/Bangui",
          '"Africa/Bamako",
          '"Africa/Asmera",
          '"Africa/Asmara",
          '"Africa/Algiers",
          '"Africa/Addis_Ababa",
          '"Africa/Accra",
          '"Africa/Abidjan"
        |]
        | doc m%"
          The time zone
          https://gohugo.io/getting-started/configuration/#timezone
        "%
        | optional,
      timeout
        | js2n.string.Matches "^\\d+s$"
        | doc m%"
          The timeout for generating page contents
          https://gohugo.io/getting-started/configuration/#timeout
        "%
        | optional,
      title
        | String
        | doc m%"
          The site title
          https://gohugo.io/getting-started/configuration/#title
        "%
        | optional,
      titleCaseStyle
        | std.enum.TagOrString
        | [| 'none, 'firstupper, 'go, 'chicago, 'ap |]
        | doc m%"
          The title case style
          https://gohugo.io/getting-started/configuration/#titlecasestyle
        "%
        | optional,
      uglyURLs
        | Bool
        | doc m%"
          Enable/disable adding file extensions to urls
          https://gohugo.io/getting-started/configuration/#uglyurls
        "%
        | optional,
      watch
        | Bool
        | doc m%"
          Enable/disable watching filesystem for changes and recreating as needed
          https://gohugo.io/getting-started/configuration/#watch
        "%
        | optional,
      ..
    }