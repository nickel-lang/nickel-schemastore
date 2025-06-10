# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "anyOf.0" =
        std.contract.Sequence
            [
              refs."anyOf.0.anyOf.0.definitions.context",
              refs."anyOf.0.anyOf.0.definitions.graph",
              refs."anyOf.0.anyOf.0.definitions.common",
              {  .. },
              {
                "@context"
                  | js2n.string.Matches "http://schema.org"
                  | doc "override the @context property to ensure the schema.org URI is used"
                  | optional,
                additionalType
                  | String
                  | doc "An additional type for the item, typically used for adding more specific types from external vocabularies in microdata syntax. This is a relationship between something and a class that the thing is in. In RDFa syntax, it is better to use the native RDFa syntax - the 'typeof' attribute - for multiple types. Schema.org tools may have only weaker understanding of extra types, in particular those defined externally."
                  | optional,
                alternateName
                  | String
                  | doc "An alias for the item."
                  | optional,
                description
                  | String
                  | doc "A description of the item."
                  | optional,
                disambiguatingDescription
                  | String
                  | doc "A sub property of description. A short description of the item used to disambiguate from other, similar items. Information from other properties (in particular, name) may be necessary for the description to be useful for disambiguation."
                  | optional,
                image
                  | std.contract.any_of [ { _ | Dyn }, String ]
                  | doc "An image of the item. This can be a URL or a fully described ImageObject."
                  | optional,
                mainEntityOfPage
                  | std.contract.any_of [ { _ | Dyn }, String ]
                  | doc "Indicates a page (or other CreativeWork) for which this thing is the main entity being described. See background notes for details. Inverse property mainEntity."
                  | optional,
                name | String | doc "The name of the item." | optional,
                potentialAction
                  | { _ | Dyn }
                  | doc "Indicates a potential Action, which describes an idealized action in which this thing would play an 'object' role."
                  | optional,
                sameAs
                  | String
                  | doc "URL of a reference Web page that unambiguously indicates the item's identity. E.g. the URL of the item's Wikipedia page, Freebase page, or official website."
                  | optional,
                url | String | doc "URL of the item." | optional,
                ..
              },
              js2n.record.Required [ "@type" ]
            ],
      "anyOf.0.anyOf.0.definitions.common" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              js2n.record.Record
                {
                  additional = 'Some js2n.Always,
                  patterns = {},
                  properties =
                    {
                        "@base" = js2n.Nullable String,
                        "@container" =
                          std.contract.Sequence
                              [
                                std.enum.TagOrString,
                                [| '"@set", '"@index", '"@list", '"@language" |]
                              ],
                        "@id" = String,
                        "@language" = js2n.Nullable String,
                        "@list" =
                          std.contract.any_of
                              [
                                js2n.Null,
                                Bool,
                                Number,
                                String,
                                { _ | Dyn },
                                Array Dyn
                              ],
                        "@reverse" =
                          std.contract.any_of
                              [ js2n.Null, String, { _ | js2n.Always } ],
                        "@set" =
                          std.contract.any_of
                              [
                                js2n.Null,
                                Bool,
                                Number,
                                String,
                                { _ | Dyn },
                                Array Dyn
                              ],
                        "@type" =
                          std.contract.any_of [ js2n.Null, String, Array Dyn ],
                        "@value" =
                          std.contract.any_of
                              [ js2n.Null, Bool, Number, String ],
                        "@vocab" = js2n.Nullable String,
                      },
                  required = {},
                },
              Array Dyn
            ],
      "anyOf.0.anyOf.0.definitions.context" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                "@context"
                  | std.contract.any_of
                    [ js2n.Null, String, { _ | Dyn }, Array Dyn ]
                  | doc "Used to define the short-hand names that are used throughout a JSON-LD document."
                  | optional,
                ..
              },
              Array Dyn
            ],
      "anyOf.0.anyOf.0.definitions.graph" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                "@graph"
                  | std.contract.any_of
                    [
                      Array refs."anyOf.0.anyOf.0.definitions.common",
                      std.contract.Sequence
                        [
                          refs."anyOf.0.anyOf.0.definitions.common",
                          { _ | Dyn }
                        ]
                    ]
                  | doc "Used to express a graph."
                  | optional,
                ..
              },
              Array Dyn
            ],
    }
    in
  std.contract.Sequence
      [
        refs."anyOf.0.anyOf.0.definitions.context",
        refs."anyOf.0.anyOf.0.definitions.graph",
        refs."anyOf.0.anyOf.0.definitions.common",
        {  .. },
        {
          "@context"
            | js2n.string.Matches "http://schema.org"
            | doc "override the @context property to ensure the schema.org URI is used"
            | optional,
          "@type"
            | js2n.string.Matches "ContactPoint"
            | doc "override the @type property to ensure ContactPoint is used",
          areaServed
            | std.contract.any_of
              [
                js2n.array.ArrayOf
                  (js2n.OneOf
                    [
                      std.contract.Sequence [ refs."anyOf.0", { _ | Dyn } ],
                      std.contract.Sequence [ refs."anyOf.0", { _ | Dyn } ],
                      std.contract.Sequence [ refs."anyOf.0", { _ | Dyn } ],
                      String
                    ]),
                std.contract.Sequence [ refs."anyOf.0", { _ | Dyn } ],
                std.contract.Sequence [ refs."anyOf.0", { _ | Dyn } ],
                std.contract.Sequence [ refs."anyOf.0", { _ | Dyn } ],
                String
              ]
            | doc "The geographic area where a service or offered item is provided. Supersedes serviceArea."
            | optional,
          availableLanguage
            | std.contract.any_of
              [
                String,
                std.contract.Sequence [ refs."anyOf.0", { _ | Dyn } ],
                Array (
                  std.contract.any_of
                    [
                      String,
                      std.contract.Sequence [ refs."anyOf.0", { _ | Dyn } ]
                    ]
                )
              ]
            | doc "A language someone may use with the item. Please use one of the language codes from the IETF BCP 47 standard. See also inLanguage"
            | optional,
          contactOption
            | std.contract.any_of
              [
                Array (
                  std.contract.Sequence
                    [
                      std.enum.TagOrString,
                      [| 'TollFree, 'HearingImpairedSupported |]
                    ]
                ),
                std.contract.Sequence
                  [
                    std.enum.TagOrString,
                    [| 'TollFree, 'HearingImpairedSupported |]
                  ]
              ]
            | doc "An option available on this contact point (e.g. a toll-free number or support for hearing-impaired callers)."
            | optional,
          contactType
            | String
            | doc "A person or organization can have different contact points, for different purposes. For example, a sales contact point, a PR contact point and so on. This property is used to specify the kind of contact point."
            | optional,
          email | String | doc "Email address." | optional,
          faxNumber | String | doc "The fax number." | optional,
          hoursAvailable
            | refs."anyOf.0"
            | { _ | Dyn }
            | doc "The hours during which this service or contact is available. (OpeningHoursSpecification)"
            | optional,
          productSupported
            | std.contract.any_of
              [
                Array (
                  std.contract.any_of
                    [
                      String,
                      std.contract.Sequence [ refs."anyOf.0", { _ | Dyn } ]
                    ]
                ),
                String,
                std.contract.Sequence [ refs."anyOf.0", { _ | Dyn } ]
              ]
            | doc "The product or service this support contact point is related to (such as product support for a particular product line). This can be a specific product or product line (e.g. \"iPhone\") or a general category of products or services (e.g. \"smartphones\")."
            | optional,
          telephone | String | doc "The telephone number." | optional,
          ..
        },
        {
          "@context"
            | js2n.string.Matches "http://schema.org"
            | doc "override the @context property to ensure the schema.org URI is used"
            | optional,
          additionalType
            | String
            | doc "An additional type for the item, typically used for adding more specific types from external vocabularies in microdata syntax. This is a relationship between something and a class that the thing is in. In RDFa syntax, it is better to use the native RDFa syntax - the 'typeof' attribute - for multiple types. Schema.org tools may have only weaker understanding of extra types, in particular those defined externally."
            | optional,
          alternateName | String | doc "An alias for the item." | optional,
          description | String | doc "A description of the item." | optional,
          disambiguatingDescription
            | String
            | doc "A sub property of description. A short description of the item used to disambiguate from other, similar items. Information from other properties (in particular, name) may be necessary for the description to be useful for disambiguation."
            | optional,
          image
            | std.contract.any_of [ { _ | Dyn }, String ]
            | doc "An image of the item. This can be a URL or a fully described ImageObject."
            | optional,
          mainEntityOfPage
            | std.contract.any_of [ { _ | Dyn }, String ]
            | doc "Indicates a page (or other CreativeWork) for which this thing is the main entity being described. See background notes for details. Inverse property mainEntity."
            | optional,
          name | String | doc "The name of the item." | optional,
          potentialAction
            | { _ | Dyn }
            | doc "Indicates a potential Action, which describes an idealized action in which this thing would play an 'object' role."
            | optional,
          sameAs
            | String
            | doc "URL of a reference Web page that unambiguously indicates the item's identity. E.g. the URL of the item's Wikipedia page, Freebase page, or official website."
            | optional,
          url | String | doc "URL of the item." | optional,
          ..
        }
      ]