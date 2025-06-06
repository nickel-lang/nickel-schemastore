# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.baseVariants" = { base | String, condition | String, },
      "definitions.enhancerRoute" =
        {
            _arguments | { _ | String } | optional,
            _controller
              | js2n.string.Matches
                "^([a-zA-Z0-9]{1,30})::([a-zA-Z0-9]{1,30})$",
            routePath | String,
          },
      "definitions.errorHandling" =
        std.contract.Sequence
            [
              js2n.IfThenElse
                (std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    js2n.record.Record
                      {
                        additional = 'Some Dyn,
                        patterns = {},
                        properties = { errorHandler = js2n.Const "PHP", },
                        required = {},
                      },
                    Array Dyn
                  ])
                (std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    {
                      errorCode | std.number.Integer,
                      errorHandler | String,
                      errorPhpClassFQCN
                        | String
                        | doc "Fully qualified class name to a class that implements the PageErrorHandlerInterface.",
                    },
                    Array Dyn
                  ]) js2n.Always,
              js2n.IfThenElse
                (std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    js2n.record.Record
                      {
                        additional = 'Some Dyn,
                        patterns = {},
                        properties = { errorHandler = js2n.Const "Fluid", },
                        required = {},
                      },
                    Array Dyn
                  ])
                (std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    {
                      errorCode | std.number.Integer,
                      errorFluidLayoutsRootPath | String | optional,
                      errorFluidPartialsRootPath | String | optional,
                      errorFluidTemplate
                        | String
                        | doc "Path to the fluid template file given by absolute, relative path (from site root) or by referring the template file inside an extension with \"EXT:\" prefix.",
                      errorFluidTemplatesRootPath | String | optional,
                      errorHandler | String,
                    },
                    Array Dyn
                  ]) js2n.Always,
              js2n.IfThenElse
                (std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    js2n.record.Record
                      {
                        additional = 'Some Dyn,
                        patterns = {},
                        properties = { errorHandler = js2n.Const "Page", },
                        required = {},
                      },
                    Array Dyn
                  ])
                (std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    {
                      errorCode | std.number.Integer,
                      errorContentSource
                        | String
                        | doc "Show Content from Page",
                      errorHandler | String,
                      ..
                    },
                    Array Dyn
                  ]) js2n.Always,
              {
                errorCode
                  | std.contract.any_of
                    [
                      std.contract.Sequence
                        [
                          std.number.Integer,
                          js2n.Enum [ 0, 404, 403, 500, 503 ]
                        ],
                      std.number.Integer
                    ]
                  | doc "Make sure to have at least 0 (not defined otherwise) configured in order to serve helpful error messages to your visitors."
                  | optional,
                errorHandler
                  | std.enum.TagOrString
                  | [| 'PHP, 'Fluid, 'Page |]
                  | doc "How to handle Errors"
                  | optional,
                ..
              }
            ],
      "definitions.language" =
        {
            base
              | String
              | doc "Use a full qualified domain \"https://www.mydomain.fr/\" or \"/fr/\". Use \"/\" to keep the main URL for the default language. Add language specific suffixes to use those, or configure complete URLs for independent domains.",
            baseVariants
              | Array (
                std.contract.Sequence
                  [ refs."definitions.baseVariants", { _ | Dyn } ]
              )
              | optional,
            direction
              | std.enum.TagOrString
              | [| 'rtl, 'ltr, '"" |]
              | doc "Language direction for \"dir\" attribute"
              | optional,
            enabled | Bool | doc "Visible in Frontend",
            fallbackType
              | std.enum.TagOrString
              | [| 'free, 'fallback, 'strict |]
              | doc "Fallback Type"
              | optional,
            fallbacks
              | String
              | doc "Fallback to other Language(s) - order is important! Comma separated list"
              | optional,
            flag
              | std.enum.TagOrString
              | [|
                'zw,
                'zm,
                'za,
                'yt,
                'ye,
                'ws,
                'wf,
                'gb-wls,
                'vu,
                'vn,
                'vi,
                'vg,
                've,
                'vc,
                'va,
                'uz,
                'uy,
                'us,
                'um,
                'ug,
                'ua,
                'tz,
                'tw,
                'tv,
                'tt,
                'tr,
                'to,
                'tn,
                'tm,
                'tl,
                'tk,
                'tj,
                'th,
                'tg,
                'tf,
                'td,
                'tc,
                'sz,
                'sy,
                'sx,
                'sv,
                'st,
                'ss,
                'sr,
                'so,
                'sn,
                'sm,
                'sl,
                'sk,
                'sj,
                'si,
                'sh,
                'sg,
                'se,
                'sd,
                'gb-sct,
                'sc,
                'sb,
                'sa,
                'rw,
                'ru,
                'rs,
                'ro,
                're,
                'qc,
                'qa,
                'py,
                'pw,
                'pt,
                'ps,
                'pr,
                'pn,
                'pm,
                'pl,
                'pk,
                'ph,
                'pg,
                'pf,
                'pe,
                'pa,
                'om,
                'nz,
                'nu,
                'nr,
                'np,
                'no,
                'nl,
                'gb-nir,
                'ni,
                'ng,
                'nf,
                'ne,
                'nc,
                'na,
                'mz,
                'my,
                'mx,
                'mw,
                'mv,
                'mu,
                'mt,
                'ms,
                'mr,
                'mq,
                'mp,
                'mo,
                'mn,
                'mm,
                'ml,
                'mk,
                'mi,
                'mh,
                'mg,
                'mf,
                'me,
                'md,
                'mc,
                'ma,
                'ly,
                'lv,
                'lu,
                'lt,
                'ls,
                'lr,
                'lk,
                'li,
                'lc,
                'lb,
                'la,
                'kz,
                'ky,
                'kw,
                'kr,
                'kp,
                'kn,
                'km,
                'kl,
                'ki,
                'kh,
                'kg,
                'ke,
                'jp,
                'jo,
                'jm,
                'it,
                'is,
                'ir,
                'iq,
                'io,
                '"in",
                'im,
                'il,
                'ie,
                'id,
                'hu,
                'ht,
                'hr,
                'hn,
                'hm,
                'hk,
                'gy,
                'gw,
                'gu,
                'gt,
                'gs,
                'gr,
                'gq,
                'gp,
                'gn,
                'gm,
                'gl,
                'gi,
                'gh,
                'gg,
                'gf,
                'ge,
                'gd,
                'gb,
                'ga,
                'fr,
                'fo,
                'fm,
                'fk,
                'fj,
                'fi,
                'eu,
                'et,
                'es,
                'er,
                'gb-eng,
                'en-us-gb,
                'eh,
                'eg,
                'ee,
                'ec,
                'dz,
                'do,
                'dm,
                'dk,
                'dj,
                'de,
                'cz,
                'cy,
                'cx,
                'cw,
                'cv,
                'cu,
                'cs,
                'cr,
                'co,
                'cn,
                'cm,
                'cl,
                'ck,
                'ci,
                'ch,
                'cg,
                'cf,
                'cd,
                'cc,
                'catalonia,
                'ca,
                'bz,
                'by,
                'bw,
                'bv,
                'bt,
                'bs,
                'br,
                'bq,
                'bo,
                'bn,
                'bm,
                'bl,
                'bj,
                'bi,
                'bh,
                'bg,
                'bf,
                'be,
                'bd,
                'bb,
                'ba,
                'az,
                'ax,
                'aw,
                'au,
                'at,
                'as,
                'ar,
                'aq,
                'ao,
                'an,
                'am,
                'al,
                'ai,
                'ag,
                'af,
                'ae,
                'ad,
                'global
              |]
              | optional,
            hreflang
              | String
              | doc "Used within for \"lang\" and \"hreflang\" attributes"
              | optional,
            iso-639-1
              | std.enum.TagOrString
              | [|
                'zu,
                'za,
                'yo,
                'yi,
                'xh,
                'fy,
                'wo,
                'cy,
                'wa,
                'vo,
                'vi,
                've,
                'uz,
                'ur,
                'uk,
                'ug,
                'ty,
                'tw,
                'tt,
                'ts,
                'tr,
                'to,
                'tn,
                'tl,
                'tk,
                'bo,
                'ti,
                'th,
                'tg,
                'te,
                'ta,
                'sv,
                'ss,
                'sw,
                'su,
                'es,
                'st,
                'so,
                'sl,
                'sk,
                'si,
                'sn,
                'gd,
                'sr,
                'sg,
                'sm,
                'se,
                'sd,
                'sc,
                'sa,
                'ru,
                'ro,
                'rn,
                'rm,
                'qu,
                'pt,
                'ps,
                'pl,
                'fa,
                'pi,
                'pa,
                'os,
                'or,
                'om,
                'cu,
                'oj,
                'oc,
                'nr,
                'ii,
                'no,
                'nn,
                'nb,
                'ng,
                'ne,
                'nd,
                'nv,
                'na,
                'mn,
                'mh,
                'mr,
                'mi,
                'mt,
                'ml,
                'ms,
                'mg,
                'mk,
                'gv,
                'lv,
                'lu,
                'lt,
                'lo,
                'ln,
                'li,
                'lg,
                'lb,
                'la,
                'kj,
                'ku,
                'ko,
                'kg,
                'kv,
                'ky,
                'rw,
                'ki,
                'km,
                'kk,
                'ks,
                'kr,
                'kn,
                'kl,
                'jv,
                'ja,
                'iu,
                'it,
                'is,
                'io,
                'ik,
                'ig,
                'ga,
                'ie,
                'id,
                'ia,
                'hu,
                'ho,
                'hi,
                'hz,
                'he,
                'ha,
                'ht,
                'gu,
                'gn,
                'el,
                'de,
                'ka,
                'gl,
                'ff,
                'fr,
                'fi,
                'fj,
                'fo,
                'ee,
                'et,
                'eo,
                'en,
                'dz,
                'nl,
                'dv,
                'da,
                'cs,
                'hr,
                'cr,
                'co,
                'kw,
                'cv,
                'zh,
                'ny,
                'ce,
                'ch,
                'ca,
                'my,
                'bg,
                'br,
                'bs,
                'bi,
                'bh,
                'bn,
                'be,
                'eu,
                'ba,
                'bm,
                'az,
                'ay,
                'ae,
                'av,
                'as,
                'hy,
                'an,
                'ar,
                'am,
                'sq,
                'ak,
                'af,
                'aa,
                'ab
              |]
              | doc "ISO 639-1 code of the Language"
              | optional,
            languageId
              | std.number.Integer
              | doc "ID of the related sys_language record",
            locale
              | String
              | doc "Used for localized date and currency formats. E.g. \"de_DE\" or \"en_US.UTF-8\".",
            navigationTitle
              | String
              | doc "Used within language-related menus"
              | optional,
            title | String | doc "Title",
            typo3Language
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      std.enum.TagOrString,
                      [|
                        'zh,
                        'vi,
                        'uk,
                        'tr,
                        'th,
                        'sv,
                        'sr,
                        'sq,
                        'sl,
                        'sk,
                        'rw,
                        'ru,
                        'ro,
                        'pt_BR,
                        'pt,
                        'pl,
                        'no,
                        'nl,
                        'ms,
                        'mk,
                        'mi,
                        'lv,
                        'lt,
                        'ko,
                        'km,
                        'kl,
                        'ka,
                        'ja,
                        'it,
                        'is,
                        'hu,
                        'hr,
                        'hi,
                        'he,
                        'gl,
                        'fr_CA,
                        'fr,
                        'fo,
                        'fi,
                        'fa,
                        'eu,
                        'et,
                        'es,
                        'eo,
                        'el,
                        'de,
                        'da,
                        'cs,
                        'ch,
                        'ca,
                        'bg,
                        'bs,
                        'ar,
                        'af,
                        '"default"
                      |]
                    ],
                  String
                ]
              | doc "Select the language to be used from translation files. Keep default if no translation files are available. Deprecated with TYPO3 12.3"
              | optional,
            websiteTitle
              | String
              | doc "With this language based Website title, you can override the Website title for this language"
              | optional,
            ..
          },
      "definitions.localeMap" =
        { locale | String | optional, value | String | optional, },
      "definitions.redirects" =
        {
            autoCreateRedirects
              | Bool
              | doc "Automatically create redirects for pages with a new slug (works only in LIVE workspace). Default: true"
              | optional,
            autoUpdateSlugs
              | Bool
              | doc "Automatically update slugs of all sub pages. Default: true"
              | optional,
            httpStatusCode
              | std.number.Integer
              | std.number.Integer
              | js2n.Enum [ 300, 301, 302, 303, 304, 305, 306, 307, 308 ]
              | doc "HTTP status code for the redirect, see https://developer.mozilla.org/en-US/docs/Web/HTTP/Redirections#Temporary_redirections. Default: 307"
              | optional,
            redirectTTL
              | std.number.Integer
              | doc "Time To Live in days for redirect records to be created - `0` disables TTL, no expiration. Default: 0"
              | optional,
          },
      "definitions.staticRoutes" =
        std.contract.Sequence
            [
              js2n.IfThenElse
                (std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    js2n.record.Record
                      {
                        additional = 'Some Dyn,
                        patterns = {},
                        properties = { type = js2n.Const "uri", },
                        required = {},
                      },
                    Array Dyn
                  ])
                (std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    { source | String | doc "Page, File or URL", .. },
                    Array Dyn
                  ])
                (std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    { content | String | doc "Static Text", .. },
                    Array Dyn
                  ]),
              {
                route | String | doc "Static Route Name",
                type
                  | std.enum.TagOrString
                  | [| 'staticText, 'uri |]
                  | doc "Route Type",
              }
            ],
    }
    in
  {
      base
        | String
        | doc "Base URL. This is the URL under which this site is available",
      baseVariants | Array refs."definitions.baseVariants" | optional,
      errorHandling
        | Array (
          std.contract.Sequence
            [ refs."definitions.errorHandling", { _ | Dyn } ]
        )
        | optional,
      languages | Array refs."definitions.language",
      rootPageId
        | std.number.Integer
        | doc "ID of the page where this site begins",
      routeEnhancers
        | {
          _ | std.contract.Sequence
            [
              js2n.IfThenElse
                (std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    js2n.record.Record
                      {
                        additional = 'Some Dyn,
                        patterns = {},
                        properties = { type = js2n.Const "Simple", },
                        required = {},
                      },
                    Array Dyn
                  ])
                (std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    js2n.record.Required [ "_arguments", "routePath", "type" ],
                    Array Dyn
                  ]) js2n.Always,
              js2n.IfThenElse
                (std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    js2n.record.Record
                      {
                        additional = 'Some Dyn,
                        patterns = {},
                        properties = { type = js2n.Const "Plugin", },
                        required = {},
                      },
                    Array Dyn
                  ])
                (std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    std.contract.Sequence
                      [
                        { namespace | String, .. },
                        js2n.record.Required [ "requirements", "type" ]
                      ],
                    Array Dyn
                  ]) js2n.Always,
              js2n.IfThenElse
                (std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    js2n.record.Record
                      {
                        additional = 'Some Dyn,
                        patterns = {},
                        properties = { type = js2n.Const "Extbase", },
                        required = {},
                      },
                    Array Dyn
                  ])
                (std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    std.contract.Sequence
                      [
                        {
                          defaultController
                            | js2n.string.Matches
                              "^([a-zA-Z0-9]{1,30})::([a-zA-Z0-9]{1,30})$",
                          defaults | { _ | Dyn } | optional,
                          extension
                            | js2n.string.Matches
                              "^([A-Z]{1})([a-zA-Z0-9]{2,30})$",
                          plugin | String,
                          routes
                            | Array refs."definitions.enhancerRoute"
                            | optional,
                          ..
                        },
                        js2n.record.Required [ "type" ]
                      ],
                    Array Dyn
                  ]) js2n.Always,
              {
                _arguments | { _ | String } | optional,
                aspects
                  | {
                    _ | std.contract.Sequence
                      [
                        js2n.IfThenElse
                          (std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              Number,
                              String,
                              js2n.record.Record
                                {
                                  additional = 'Some Dyn,
                                  patterns = {},
                                  properties =
                                    {
                                        type =
                                          js2n.Const "PersistedAliasMapper",
                                      },
                                  required = {},
                                },
                              Array Dyn
                            ])
                          (std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              Number,
                              String,
                              {
                                routeFieldName | String,
                                routeValuePrefix
                                  | js2n.string.MaxLength 1
                                  | optional,
                                tableName | String,
                                type | String,
                              },
                              Array Dyn
                            ]) js2n.Always,
                        js2n.IfThenElse
                          (std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              Number,
                              String,
                              js2n.record.Record
                                {
                                  additional = 'Some Dyn,
                                  patterns = {},
                                  properties =
                                    {
                                        type =
                                          js2n.Const "PersistedPatternMapper",
                                      },
                                  required = {},
                                },
                              Array Dyn
                            ])
                          (std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              Number,
                              String,
                              {
                                routeFieldName | String,
                                routeValuePrefix
                                  | js2n.string.MaxLength 1
                                  | optional,
                                tableName | String,
                                type | String,
                              },
                              Array Dyn
                            ]) js2n.Always,
                        js2n.IfThenElse
                          (std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              Number,
                              String,
                              js2n.record.Record
                                {
                                  additional = 'Some Dyn,
                                  patterns = {},
                                  properties =
                                    { type = js2n.Const "LocaleModifier", },
                                  required = {},
                                },
                              Array Dyn
                            ])
                          (std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              Number,
                              String,
                              {
                                "default" | String,
                                localeMap | Array refs."definitions.localeMap",
                                type | String,
                              },
                              Array Dyn
                            ]) js2n.Always,
                        js2n.IfThenElse
                          (std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              Number,
                              String,
                              js2n.record.Record
                                {
                                  additional = 'Some Dyn,
                                  patterns = {},
                                  properties =
                                    { type = js2n.Const "StaticRangeMapper", },
                                  required = {},
                                },
                              Array Dyn
                            ])
                          (std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              Number,
                              String,
                              { end | String, start | String, type | String, },
                              Array Dyn
                            ]) js2n.Always,
                        js2n.IfThenElse
                          (std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              Number,
                              String,
                              js2n.record.Record
                                {
                                  additional = 'Some Dyn,
                                  patterns = {},
                                  properties =
                                    { type = js2n.Const "StaticValueMapper", },
                                  required = {},
                                },
                              Array Dyn
                            ])
                          (std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              Number,
                              String,
                              { map | { _ | Dyn }, type | String, },
                              Array Dyn
                            ]) js2n.Always,
                        {
                          type
                            | std.contract.any_of
                              [
                                std.contract.Sequence
                                  [
                                    std.enum.TagOrString,
                                    [|
                                      'StaticValueMapper,
                                      'StaticRangeMapper,
                                      'PersistedPatternMapper,
                                      'PersistedAliasMapper,
                                      'LocaleModifier
                                    |]
                                  ],
                                String
                              ],
                          ..
                        }
                      ]
                  }
                  | optional,
                "default" | String | optional,
                limitToPages | js2n.array.UniqueItems | Array Number | optional,
                requirements | { _ | String } | optional,
                routePath | String | optional,
                type
                  | std.contract.any_of
                    [
                      std.contract.Sequence
                        [
                          std.enum.TagOrString,
                          [| 'PageType, 'Extbase, 'Plugin, 'Simple |]
                        ],
                      String
                    ],
                ..
              }
            ]
        }
        | doc "routeEnhancers transform arguments into nice urls. Docs can be found at https://docs.typo3.org/m/typo3/reference-coreapi/master/en-us/ApiOverview/Routing/Index.html"
        | optional,
      routes
        | Array (
          std.contract.Sequence [ refs."definitions.staticRoutes", { _ | Dyn } ]
        )
        | optional,
      settings
        | { redirects | refs."definitions.redirects" | optional, .. }
        | optional,
      sitePackage
        | String
        | doc "Extension key for site setup (used by EXT:bolt)"
        | optional,
      solr_core_read | String | doc "EXT:solr default core for read" | optional,
      solr_enabled_read
        | Bool
        | doc "EXT:solr enable default solr read"
        | optional,
      solr_host_read | String | doc "EXT:solr default host for read" | optional,
      solr_password_read | String | doc "EXT:solr password for read" | optional,
      solr_port_read | String | doc "EXT:solr port for read" | optional,
      solr_scheme_read
        | std.enum.TagOrString
        | [| '"%env(SOLR_SCHEME)%", 'https, 'http |]
        | doc "EXT:solr scheme for read"
        | optional,
      solr_use_write_connection
        | Bool
        | doc "EXT:solr use write connection"
        | optional,
      solr_username_read | String | doc "EXT:solr username for read" | optional,
      websiteTitle | String | doc "Default website title" | optional,
      ..
    }