# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      altids
        | Array
          {
            role | String | doc "The role of the alternative id" | optional,
            value | String | doc "The alternative id value" | optional,
          }
        | doc "Alternative identifiers assigned to the content. Each alternative id can have a role and a value. nar:altId issue #3."
        | optional,
      associations
        | Array (
          std.contract.any_of
            [
              js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = {},
                  properties = { name = String, },
                  required = { name = true, },
                },
              { _ | Dyn }
            ]
        )
        | doc "An array of objects with content of news objects which are associated with this news object."
        | optional,
      bodies
        | Array
          {
            charcount
              | Number
              | doc "The total character count in this body excluding figure captions. (Added in version 1.2 according to issue #27.). nar:charcount"
              | optional,
            contenttype
              | String
              | doc "The IANA (Internet Assigned Numbers Authority) MIME type of the content of this body."
              | optional,
            role | String | doc "The role of this body" | optional,
            value
              | String
              | doc "The body text identified with the above role and contenttype.",
            wordcount
              | Number
              | doc "The total number of words in this body excluding figure captions. (Added in version 1.2 according to issue #27.). nar:wordcount"
              | optional,
          }
        | doc "An array of body objects with the content as text or with markup. For a simple body use an array with one object only containing the value property. Role and contenttype are then undefined and it is up to the provider."
        | optional,
      by
        | String
        | doc "A natural-language statement about the creator (author, photographer etc.) of the content. nar:by"
        | optional,
      contentcreated
        | String
        | doc "The date and time when the content of this ninjs object was originally created. For example and old photo that is now handled as a ninjs object. nar:contentCreated"
        | optional,
      copyrightholder
        | String
        | doc "The person or organisation claiming the intellectual property for the content. nar:copyrightHolder"
        | optional,
      copyrightnotice
        | String
        | doc "Any necessary copyright notice for claiming the intellectual property for the content. nar:copyrightNotice"
        | optional,
      descriptions
        | Array
          {
            contenttype
              | String
              | doc "The IANA (Internet Assigned Numbers Authority) MIME type of the content of this description."
              | optional,
            role | String | doc "The role of this description" | optional,
            value
              | String
              | doc "The descriptive text identified with the above role (and contenttype).",
          }
        | doc "An array of one or more descriptions of the ninjs object. See also ednote for information from provider to receiver. Descriptions are seen as metadata. For a simple description use an array with one object only containing the value property. Role and contenttype are then undefined and it is up to the provider."
        | optional,
      ednote
        | String
        | doc "A note that is intended to be read by internal staff at the receiving organisation, but not intended to be published. (Added in version 1.2 from issue #6.). (Consider using this before using the descriptions array.) ednote: nar:edNote"
        | optional,
      embargoed
        | String
        | doc "The date and time before which all versions of the news object are embargoed. If absent, this object is not embargoed. nar:embargoed"
        | optional,
      events
        | Array
          {
            literal
              | String
              | doc "The code for the event as a string literal"
              | optional,
            name | String | doc "The name of the event" | optional,
            rel
              | String
              | doc "The relationship of the content of the news object to the event"
              | optional,
            uri
              | String
              | doc "The identifier for the event as a complete uri"
              | optional,
          }
        | doc "An array of objects describing something which happens in a planned or unplanned manner. nar:?"
        | optional,
      firstcreated
        | String
        | doc "Indicates when the first version of this ninjs object was created. (Added in version 1.2 from issue #5). nar:firstCreated"
        | optional,
      genres
        | Array
          {
            literal
              | String
              | doc "The code for the genre as a string literal"
              | optional,
            name | String | doc "The name of the genre" | optional,
            uri
              | String
              | doc "The identifier of  the genre as a complete uri"
              | optional,
          }
        | doc "A nature, intellectual or journalistic form of the content. nar:genre. (Added in version 1.3)"
        | optional,
      headlines
        | Array
          {
            contenttype
              | String
              | doc "The IANA (Internet Assigned Numbers Authority) MIME type of the content of this headline."
              | optional,
            role | String | doc "The role of this headline" | optional,
            value
              | String
              | doc "The headline identified with the above role and contenttype.",
          }
        | doc "An array of objects containing various types of headlines. For a simple headline use an array with one object only containing the value property. Role and contenttype are then undefined and it is up to the provider."
        | optional,
      infosources
        | Array
          {
            literal
              | String
              | doc "The code for the infosource as a string literal"
              | optional,
            name | String | doc "The name of the infosource" | optional,
            role
              | String
              | doc "The role the infosource in relationship to the content as a uri."
              | optional,
            uri
              | String
              | doc "The identifier of the infosource as a complete uri"
              | optional,
          }
        | doc "An array of parties (person or organisation) which originated, modified, enhanced, distributed, aggregated or supplied the content or provided some information used to create or enhance the content. (Added in version 1.2 according to issue #15.) .  infosource:  nar:infoSource"
        | optional,
      language
        | String
        | doc "The human language used by the content. The value should follow IETF BCP47. nar:language"
        | optional,
      located
        | String
        | doc "The name of the location from which the content originates. nar:located"
        | optional,
      objects
        | Array
          {
            literal
              | String
              | doc "The code for the object as a string literal"
              | optional,
            name | String | doc "The name of the object" | optional,
            rel
              | String
              | doc "The relationship of the content of the news object to the object"
              | optional,
            uri
              | String
              | doc "The identifier for the object as a complete uri"
              | optional,
          }
        | doc "An array of objects describing something material, excluding persons. nar:subject"
        | optional,
      organisations
        | Array
          {
            literal
              | String
              | doc "The code for the organisation as a literal"
              | optional,
            name | String | doc "The name of the organisation" | optional,
            rel
              | String
              | doc "The relationship of the content of the news object to the organisation"
              | optional,
            symbols
              | Array
                {
                  exchange
                    | String
                    | doc "Identifier for the marketplace which uses the ticker symbols of the ticker property"
                    | optional,
                  ticker
                    | String
                    | doc "Ticker symbol used for the financial instrument"
                    | optional,
                }
              | doc "Symbols used for a financial instrument linked to the organisation at a specific market place"
              | optional,
            uri
              | String
              | doc "The identifier of the organisation as a complete uri"
              | optional,
          }
        | doc "An array of objects describing administrative and functional structures which may, for example, act as as a business, as a political party or not-for-profit party. nar:subject"
        | optional,
      people
        | Array
          {
            literal
              | String
              | doc "The code for the person as a literal value."
              | optional,
            name | String | doc "The name of a person" | optional,
            rel
              | String
              | doc "The relationship of the content of the news object to the person"
              | optional,
            uri
              | String
              | doc "The identifier for the person as a complete uri with the code."
              | optional,
          }
        | doc "An array of objects describing individual human beings. nar:subject"
        | optional,
      places
        | Array
          {
            literal
              | String
              | doc "The code for the place as a literal"
              | optional,
            name | String | doc "The name of the place" | optional,
            rel
              | String
              | doc "The relationship of the content of the news object to the place"
              | optional,
            uri
              | String
              | doc "The identifier for the place as a complete uri"
              | optional,
            ..
          }
        | doc "An array of named locations. nar:subject"
        | optional,
      profile
        | String
        | doc "An identifier for the structure of the news object. This can be any string but we suggest something identifying the structure of the content such as 'text-only' or 'text-photo'. Profiles are typically provider-specific. nar:profile"
        | optional,
      pubstatus
        | std.enum.TagOrString
        | [| 'canceled, 'withheld, 'usable |]
        | doc "The publishing status of the news object, its value is *usable* by default. nar:pubStatus"
        | optional,
      renditions
        | Array
          {
            contenttype
              | String
              | doc "A MIME type which applies to this rendition. nar:remoteContent@contenttype"
              | optional,
            duration
              | Number
              | doc "The total time duration of the content in seconds. (Added in version 1.2. Issue #18). nar:remoteContent@duration"
              | optional,
            format
              | String
              | doc "Binary format name. (Added in version 1.2. Issue #18). nar:remoteContent@format"
              | optional,
            height
              | Number
              | doc "For still and moving images: the height of the display area measured in pixels. nar:remoteContent@height"
              | optional,
            href
              | String
              | doc "The URL for accessing the rendition as a resource. nar:remoteContent@ref"
              | optional,
            name
              | String
              | doc "The name of this object in the array of renditions. For example 'thumbnail'",
            sizeinbytes
              | Number
              | doc "The size of the rendition resource in bytes"
              | optional,
            title
              | String
              | doc "A title for the link to the rendition resource"
              | optional,
            width
              | Number
              | doc "For still and moving images: the width of the display area measured in pixels. nar:remoteContent@width"
              | optional,
          }
        | doc "An array of objects with different renditions of the news object. nar:remoteContent"
        | optional,
      representationtype
        | std.enum.TagOrString
        | [| 'partial, 'full |]
        | doc "Indicates how complete this representation of a news item is. No mapping to nar. Specific for ninjs."
        | optional,
      rightsinfo
        | js2n.OneOf
          [
            std.contract.any_of
              [
                js2n.Null,
                Bool,
                Number,
                String,
                js2n.record.Required [ "linkedrights" ],
                Array Dyn
              ],
            std.contract.any_of
              [
                js2n.Null,
                Bool,
                Number,
                String,
                js2n.record.Required [ "encodedrights" ],
                Array Dyn
              ]
          ]
        | {
          encodedrights
            | String
            | doc "Contains a rights expression as defined by a Rights Expression Language. nar:rightsExpressionXML or nar:rightsExpressionData"
            | optional,
          langid
            | String
            | doc "Identifier for the Rights Expression language used. nar:@langid"
            | optional,
          linkedrights
            | String
            | doc "A link from the current Item to Web resource with rights related information. nar:link"
            | optional,
          ..
        }
        | doc "Expression of rights to be applied to content. nar:rightsInfo"
        | optional,
      slugline
        | String
        | doc "A human-readable identifier for the item. (Added in version 1.2 from issue #4.). nar:slugline"
        | optional,
      standard
        | {
          name | String | doc "For example ninjs. nar:standard" | optional,
          schema
            | String
            | doc "The uri of the json schema to use for validation."
            | optional,
          version
            | String
            | doc "For example 1.3. nar:standardversion"
            | optional,
        }
        | doc "An object with information about standard, version and schema this instance is valid against. nar:standard, nar:standardversion and xml:schema issue #43. (Added in version 1.3)"
        | optional,
      subjects
        | Array
          {
            literal
              | String
              | doc "The code for the subject as a string literal"
              | optional,
            name | String | doc "The name of the subject" | optional,
            rel
              | String
              | doc "The relationship of the content of the news object to the subject"
              | optional,
            uri
              | String
              | doc "The identifier of the subject as a complete uri"
              | optional,
          }
        | doc "An array of objects holding concepts with a relationship to the content. nar:subject"
        | optional,
      title
        | String
        | doc "A short natural-language name for the item. Title is metadata, use headlines for publishable headlines. (Added in version 1.2 according to issue #9). nar:itemMeta/title"
        | optional,
      trustindicators
        | Array
          {
            href
              | String
              | doc "The URL for accessing the trust indicator resource."
              | optional,
            role
              | String
              | doc "The role of the trust indicator as a complete uri"
              | optional,
            title
              | String
              | doc "The title of the resource being referenced."
              | optional,
          }
        | doc "An array of objects to allow links to documents about trust indicators. issue #44. (Added in version 1.3)"
        | optional,
      type
        | std.enum.TagOrString
        | [|
          'component,
          'composite,
          'graphic,
          'picture,
          'video,
          'audio,
          'text
        |]
        | doc "The generic news type of this news object. (Value 'component' added in version 1.2 as issue #21.). See: http://cv.iptc.org/newscodes/ninature/ nar:itemClass"
        | optional,
      urgency
        | Number
        | doc "The editorial urgency of the content. Values from 1 to 9. 1 represents the highest urgency, 9 the lowest. nar:urgency"
        | optional,
      uri
        | String
        | doc "The global unique identifier for this news object. This is the only required property and should identify the ninjs object, not be used for links to external resources etc.  nar:newsItem@guid",
      usageterms
        | String
        | doc "A natural-language statement about the usage terms pertaining to the content. nar:usageTerms"
        | optional,
      version
        | String
        | doc "The version of the news object which is identified by the uri property. nar:newsItem@version"
        | optional,
      versioncreated
        | String
        | doc "The date and time when this version of this ninjs object was created. nar:versionCreated"
        | optional,
    }