# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.adpContainer" =
        std.contract.Sequence
            [
              js2n.record.MinProperties 2,
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = { "^x_[^.]*$" = js2n.Always, },
                  properties =
                    {
                        affected =
                          std.contract.Sequence
                              [ refs."definitions.affected", Array Dyn ],
                        configurations =
                          std.contract.Sequence
                              [ refs."definitions.configurations", Array Dyn ],
                        cpeApplicability =
                          Array refs."definitions.cpeApplicabilityElement",
                        credits =
                          std.contract.Sequence
                              [ refs."definitions.credits", Array Dyn ],
                        datePublic =
                          std.contract.Sequence
                              [ refs."definitions.timestamp", String ],
                        descriptions =
                          std.contract.Sequence
                              [ refs."definitions.descriptions", Array Dyn ],
                        exploits =
                          std.contract.Sequence
                              [ refs."definitions.exploits", Array Dyn ],
                        impacts =
                          std.contract.Sequence
                              [ refs."definitions.impacts", Array Dyn ],
                        metrics =
                          std.contract.Sequence
                              [ refs."definitions.metrics", Array Dyn ],
                        problemTypes =
                          std.contract.Sequence
                              [ refs."definitions.problemTypes", Array Dyn ],
                        providerMetadata =
                          std.contract.Sequence
                              [
                                refs."definitions.providerMetadata",
                                { _ | Dyn }
                              ],
                        references =
                          std.contract.Sequence
                              [ refs."definitions.references", Array Dyn ],
                        solutions =
                          std.contract.Sequence
                              [ refs."definitions.solutions", Array Dyn ],
                        source =
                          std.contract.Sequence
                              [ refs."definitions.source", { _ | Dyn } ],
                        tags =
                          std.contract.Sequence
                              [ refs."definitions.adpTags", Array Dyn ],
                        taxonomyMappings =
                          std.contract.Sequence
                              [
                                refs."definitions.taxonomyMappings",
                                Array Dyn
                              ],
                        timeline =
                          std.contract.Sequence
                              [ refs."definitions.timeline", Array Dyn ],
                        title =
                          std.contract.Sequence
                              [
                                js2n.string.MaxLength 256,
                                js2n.string.MinLength 1
                              ],
                        workarounds =
                          std.contract.Sequence
                              [ refs."definitions.workarounds", Array Dyn ],
                      },
                  required = { providerMetadata = true, },
                }
            ],
      "definitions.adpTags" =
        std.contract.Sequence
            [
              js2n.array.MinItems 1,
              js2n.array.UniqueItems,
              Array (
                js2n.OneOf
                  [
                    std.contract.Sequence
                      [ refs."definitions.tagExtension", String ],
                    std.contract.Sequence
                      [ std.enum.TagOrString, [| 'disputed |] ]
                  ]
              )
            ],
      "definitions.affected" =
        std.contract.Sequence
            [
              js2n.array.MinItems 1,
              Array (
                std.contract.Sequence
                  [ refs."definitions.product", { _ | Dyn } ]
              )
            ],
      "definitions.cnaPublishedContainer" =
        js2n.record.Record
            {
              additional = 'None,
              patterns = { "^x_[^.]*$" = js2n.Always, },
              properties =
                {
                    affected =
                      std.contract.Sequence
                          [ refs."definitions.affected", Array Dyn ],
                    configurations =
                      std.contract.Sequence
                          [ refs."definitions.configurations", Array Dyn ],
                    cpeApplicability =
                      Array refs."definitions.cpeApplicabilityElement",
                    credits =
                      std.contract.Sequence
                          [ refs."definitions.credits", Array Dyn ],
                    dateAssigned =
                      std.contract.Sequence
                          [ refs."definitions.timestamp", String ],
                    datePublic =
                      std.contract.Sequence
                          [ refs."definitions.timestamp", String ],
                    descriptions =
                      std.contract.Sequence
                          [ refs."definitions.descriptions", Array Dyn ],
                    exploits =
                      std.contract.Sequence
                          [ refs."definitions.exploits", Array Dyn ],
                    impacts =
                      std.contract.Sequence
                          [ refs."definitions.impacts", Array Dyn ],
                    metrics =
                      std.contract.Sequence
                          [ refs."definitions.metrics", Array Dyn ],
                    problemTypes =
                      std.contract.Sequence
                          [ refs."definitions.problemTypes", Array Dyn ],
                    providerMetadata =
                      std.contract.Sequence
                          [ refs."definitions.providerMetadata", { _ | Dyn } ],
                    references =
                      std.contract.Sequence
                          [ refs."definitions.references", Array Dyn ],
                    solutions =
                      std.contract.Sequence
                          [ refs."definitions.solutions", Array Dyn ],
                    source =
                      std.contract.Sequence
                          [ refs."definitions.source", { _ | Dyn } ],
                    tags =
                      std.contract.Sequence
                          [ refs."definitions.cnaTags", Array Dyn ],
                    taxonomyMappings =
                      std.contract.Sequence
                          [ refs."definitions.taxonomyMappings", Array Dyn ],
                    timeline =
                      std.contract.Sequence
                          [ refs."definitions.timeline", Array Dyn ],
                    title =
                      std.contract.Sequence
                          [
                            js2n.string.MaxLength 256,
                            js2n.string.MinLength 1
                          ],
                    workarounds =
                      std.contract.Sequence
                          [ refs."definitions.workarounds", Array Dyn ],
                  },
              required =
                {
                    affected = true,
                    descriptions = true,
                    providerMetadata = true,
                    references = true,
                  },
            },
      "definitions.cnaRejectedContainer" =
        js2n.record.Record
            {
              additional = 'None,
              patterns = { "^x_[^.]*$" = js2n.Always, },
              properties =
                {
                    providerMetadata =
                      std.contract.Sequence
                          [ refs."definitions.providerMetadata", { _ | Dyn } ],
                    rejectedReasons =
                      std.contract.Sequence
                          [ refs."definitions.descriptions", Array Dyn ],
                    replacedBy =
                      std.contract.Sequence
                          [
                            js2n.array.MinItems 1,
                            js2n.array.UniqueItems,
                            Array (
                              std.contract.Sequence
                                [ refs."definitions.cveId", String ]
                            )
                          ],
                  },
              required = { providerMetadata = true, rejectedReasons = true, },
            },
      "definitions.cnaTags" =
        std.contract.Sequence
            [
              js2n.array.MinItems 1,
              js2n.array.UniqueItems,
              Array (
                js2n.OneOf
                  [
                    std.contract.Sequence
                      [ refs."definitions.tagExtension", String ],
                    std.contract.Sequence
                      [
                        std.enum.TagOrString,
                        [|
                          'disputed,
                          'exclusively-hosted-service,
                          'unsupported-when-assigned
                        |]
                      ]
                  ]
              )
            ],
      "definitions.configurations" =
        std.contract.Sequence
            [
              js2n.array.MinItems 1,
              js2n.array.UniqueItems,
              Array (
                std.contract.Sequence
                  [ refs."definitions.description", { _ | Dyn } ]
              )
            ],
      "definitions.cpe22and23" =
        std.contract.Sequence
            [
              js2n.string.MaxLength 2048,
              js2n.string.MinLength 1,
              js2n.string.Matches
                "([c][pP][eE]:/[AHOaho]?(:[A-Za-z0-9._\\-~%]*){0,6})|(cpe:2\\.3:[aho*\\-](:(((\\?*|\\*?)([a-zA-Z0-9\\-._]|(\\\\[\\\\*?!\"#$%&'()+,/:;<=>@\\[\\]\\^`{|}~]))+(\\?*|\\*?))|[*\\-])){5}(:(([a-zA-Z]{2,3}(-([a-zA-Z]{2}|[0-9]{3}))?)|[*\\-]))(:(((\\?*|\\*?)([a-zA-Z0-9\\-._]|(\\\\[\\\\*?!\"#$%&'()+,/:;<=>@\\[\\]\\^`{|}~]))+(\\?*|\\*?))|[*\\-])){4})"
            ],
      "definitions.cpe23" =
        std.contract.Sequence
            [
              js2n.string.MaxLength 2048,
              js2n.string.MinLength 1,
              js2n.string.Matches
                "(cpe:2\\.3:[aho*\\-](:(((\\?*|\\*?)([a-zA-Z0-9\\-._]|(\\\\[\\\\*?!\"#$%&'()+,/:;<=>@\\[\\]\\^`{|}~]))+(\\?*|\\*?))|[*\\-])){5}(:(([a-zA-Z]{2,3}(-([a-zA-Z]{2}|[0-9]{3}))?)|[*\\-]))(:(((\\?*|\\*?)([a-zA-Z0-9\\-._]|(\\\\[\\\\*?!\"#$%&'()+,/:;<=>@\\[\\]\\^`{|}~]))+(\\?*|\\*?))|[*\\-])){4})"
            ],
      "definitions.cpeApplicabilityElement" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                negate | Bool | optional,
                nodes | Array refs."definitions.cpe_node",
                operator | std.enum.TagOrString | [| 'OR, 'AND |] | optional,
                ..
              },
              Array Dyn
            ],
      "definitions.cpe_match" =
        {
            criteria | refs."definitions.cpe23" | String,
            matchCriteriaId | refs."definitions.uuidType" | String | optional,
            versionEndExcluding
              | refs."definitions.version"
              | String
              | optional,
            versionEndIncluding
              | refs."definitions.version"
              | String
              | optional,
            versionStartExcluding
              | refs."definitions.version"
              | String
              | optional,
            versionStartIncluding
              | refs."definitions.version"
              | String
              | optional,
            vulnerable | Bool,
          },
      "definitions.cpe_node" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                cpeMatch
                  | Array (
                    std.contract.Sequence
                      [ refs."definitions.cpe_match", { _ | Dyn } ]
                  ),
                negate | Bool | optional,
                operator | std.enum.TagOrString | [| 'OR, 'AND |],
                ..
              },
              Array Dyn
            ],
      "definitions.credits" =
        std.contract.Sequence
            [
              js2n.array.MinItems 1,
              js2n.array.UniqueItems,
              Array
                {
                  lang
                    | refs."definitions.language"
                    | String
                    | doc "The language used when describing the credits. The language field is included so that CVE Records can support translations. The value must be a BCP 47 language code.",
                  type
                    | std.enum.TagOrString
                    | [|
                      'other,
                      'sponsor,
                      'tool,
                      '"remediation verifier",
                      '"remediation reviewer",
                      '"remediation developer",
                      'coordinator,
                      'analyst,
                      'reporter,
                      'finder
                    |]
                    | doc m%"
                      Type or role of the entity being credited (optional). finder: identifies the vulnerability.
                      reporter: notifies the vendor of the vulnerability to a CNA.
                      analyst: validates the vulnerability to ensure accuracy or severity.
                      coordinator: facilitates the coordinated response process.
                      remediation developer: prepares a code change or other remediation plans.
                      remediation reviewer: reviews vulnerability remediation plans or code changes for effectiveness and completeness.
                      remediation verifier: tests and verifies the vulnerability or its remediation.
                      tool: names of tools used in vulnerability discovery or identification.
                      sponsor: supports the vulnerability identification or remediation activities.
                    "%
                    | optional,
                  user
                    | refs."definitions.uuidType"
                    | String
                    | doc "UUID of the user being credited if present in the CVE User Registry (optional). This UUID can be used to lookup the user record in the user registry service."
                    | optional,
                  value | js2n.string.MaxLength 4096 | js2n.string.MinLength 1,
                }
            ],
      "definitions.cveId" = js2n.string.Matches "^CVE-[0-9]{4}-[0-9]{4,19}$",
      "definitions.cveMetadataPublished" =
        {
            assignerOrgId
              | refs."definitions.orgId"
              | String
              | doc "The UUID for the organization to which the CVE ID was originally assigned. This UUID can be used to lookup the organization record in the user registry service.",
            assignerShortName
              | refs."definitions.shortName"
              | String
              | doc "The short name for the organization to which the CVE ID was originally assigned."
              | optional,
            cveId
              | refs."definitions.cveId"
              | String
              | doc "The CVE identifier that this record pertains to.",
            datePublished
              | refs."definitions.timestamp"
              | String
              | doc "The date/time the CVE Record was first published in the CVE List."
              | optional,
            dateReserved
              | refs."definitions.timestamp"
              | String
              | doc "The date/time this CVE ID was reserved in the CVE automation workgroup services system. Disclaimer: This date reflects when the CVE ID was reserved, and does not necessarily indicate when this vulnerability was discovered, shared with the affected vendor, publicly disclosed, or updated in CVE."
              | optional,
            dateUpdated
              | refs."definitions.timestamp"
              | String
              | doc "The date/time the record was last updated."
              | optional,
            requesterUserId
              | refs."definitions.userId"
              | String
              | doc "The user that requested the CVE identifier."
              | optional,
            serial
              | std.number.Integer
              | js2n.number.Minimum 1
              | doc "The system of record causes this to start at 1, and increment by 1 each time a submission from a data provider changes this CVE Record. The incremented value moves to the Rejected schema upon a PUBLISHED->REJECTED transition, and moves to the Published schema upon a REJECTED->PUBLISHED transition."
              | optional,
            state
              | std.enum.TagOrString
              | [| 'PUBLISHED |]
              | doc "State of CVE - PUBLISHED, REJECTED.",
          },
      "definitions.cveMetadataRejected" =
        {
            assignerOrgId
              | refs."definitions.orgId"
              | String
              | doc "The UUID for the organization to which the CVE ID was originally assigned.",
            assignerShortName
              | refs."definitions.shortName"
              | String
              | doc "The short name for the organization to which the CVE ID was originally assigned."
              | optional,
            cveId
              | refs."definitions.cveId"
              | String
              | doc "The CVE identifier that this record pertains to.",
            datePublished
              | refs."definitions.timestamp"
              | String
              | doc "The date/time the CVE Record was first published in the CVE List."
              | optional,
            dateRejected
              | refs."definitions.timestamp"
              | String
              | doc "The date/time the CVE ID was rejected."
              | optional,
            dateReserved
              | refs."definitions.timestamp"
              | String
              | doc "The date/time this CVE ID was reserved in the CVE automation workgroup services system. Disclaimer: This date reflects when the CVE ID was reserved, and does not necessarily indicate when this vulnerability was discovered, shared with the affected vendor, publicly disclosed, or updated in CVE."
              | optional,
            dateUpdated
              | refs."definitions.timestamp"
              | String
              | doc "The date/time the record was last updated."
              | optional,
            serial
              | std.number.Integer
              | js2n.number.Minimum 1
              | doc "The system of record causes this to start at 1, and increment by 1 each time a submission from a data provider changes this CVE Record. The incremented value moves to the Rejected schema upon a PUBLISHED->REJECTED transition, and moves to the Published schema upon a REJECTED->PUBLISHED transition."
              | optional,
            state
              | std.enum.TagOrString
              | [| 'REJECTED |]
              | doc "State of CVE - PUBLISHED, REJECTED.",
          },
      "definitions.dataType" =
        std.contract.Sequence [ std.enum.TagOrString, [| 'CVE_RECORD |] ],
      "definitions.dataVersion" =
        js2n.string.Matches "^5\\.(0|[1-9][0-9]*)(\\.(0|[1-9][0-9]*))?$",
      "definitions.description" =
        {
            lang | refs."definitions.language" | String,
            supportingMedia
              | js2n.array.MinItems 1
              | js2n.array.UniqueItems
              | Array
                {
                  base64
                    | Bool
                    | doc "If true then the value field contains the media data encoded in base64. If false then the value field contains the UTF-8 media content."
                    | optional,
                  type
                    | js2n.string.MaxLength 256
                    | js2n.string.MinLength 1
                    | doc "RFC2046 compliant IANA Media type for eg., text/markdown, text/html.",
                  value
                    | js2n.string.MaxLength 16384
                    | js2n.string.MinLength 1
                    | doc "Supporting media content, up to 16K. If base64 is true, this field stores base64 encoded data.",
                }
              | doc "Supporting media data for the description such as markdown, diagrams, .. (optional). Similar to RFC 2397 each media object has three main parts: media type, media data value, and an optional boolean flag to indicate if the media data is base64 encoded."
              | optional,
            value
              | js2n.string.MaxLength 4096
              | js2n.string.MinLength 1
              | doc "Plain text description.",
          },
      "definitions.descriptions" =
        std.contract.Sequence
            [
              js2n.array.MinItems 1,
              js2n.array.UniqueItems,
              js2n.array.Contains
                (std.contract.Sequence
                  [
                    refs."definitions.englishLanguageDescription",
                    { _ | Dyn }
                  ]),
              Array (
                std.contract.Sequence
                  [ refs."definitions.description", { _ | Dyn } ]
              )
            ],
      "definitions.englishLanguage" =
        js2n.string.Matches
            "^en([_-][A-Za-z]{4})?([_-]([A-Za-z]{2}|[0-9]{3}))?$",
      "definitions.englishLanguageDescription" =
        { lang | refs."definitions.englishLanguage" | String, .. },
      "definitions.exploits" =
        std.contract.Sequence
            [
              js2n.array.MinItems 1,
              js2n.array.UniqueItems,
              Array (
                std.contract.Sequence
                  [ refs."definitions.description", { _ | Dyn } ]
              )
            ],
      "definitions.impacts" =
        std.contract.Sequence
            [
              js2n.array.MinItems 1,
              js2n.array.UniqueItems,
              Array
                {
                  capecId
                    | js2n.string.MaxLength 11
                    | js2n.string.MinLength 7
                    | js2n.string.Matches "^CAPEC-[1-9][0-9]{0,4}$"
                    | doc "CAPEC ID that best relates to this impact."
                    | optional,
                  descriptions
                    | refs."definitions.descriptions"
                    | Array Dyn
                    | doc "Prose description of the impact scenario. At a minimum provide the description given by CAPEC.",
                }
            ],
      "definitions.language" =
        js2n.string.Matches
            "^[A-Za-z]{2,4}([_-][A-Za-z]{4})?([_-]([A-Za-z]{2}|[0-9]{3}))?$",
      "definitions.metrics" =
        std.contract.Sequence
            [
              js2n.array.MinItems 1,
              js2n.array.UniqueItems,
              Array (
                std.contract.Sequence
                  [
                    std.contract.any_of
                      [
                        js2n.record.Required [ "cvssV4_0" ],
                        js2n.record.Required [ "cvssV3_1" ],
                        js2n.record.Required [ "cvssV3_0" ],
                        js2n.record.Required [ "cvssV2_0" ],
                        js2n.record.Required [ "other" ]
                      ],
                    {
                      cvssV2_0
                        | {
                          accessComplexity
                            | refs."definitions.metrics.items.properties.cvssV2_0.definitions.accessComplexityType"
                            | String
                            | optional,
                          accessVector
                            | refs."definitions.metrics.items.properties.cvssV2_0.definitions.accessVectorType"
                            | String
                            | optional,
                          authentication
                            | refs."definitions.metrics.items.properties.cvssV2_0.definitions.authenticationType"
                            | String
                            | optional,
                          availabilityImpact
                            | refs."definitions.metrics.items.properties.cvssV2_0.definitions.ciaType"
                            | String
                            | optional,
                          availabilityRequirement
                            | refs."definitions.metrics.items.properties.cvssV2_0.definitions.ciaRequirementType"
                            | String
                            | optional,
                          baseScore
                            | refs."definitions.metrics.items.properties.cvssV2_0.definitions.scoreType"
                            | Number,
                          collateralDamagePotential
                            | refs."definitions.metrics.items.properties.cvssV2_0.definitions.collateralDamagePotentialType"
                            | String
                            | optional,
                          confidentialityImpact
                            | refs."definitions.metrics.items.properties.cvssV2_0.definitions.ciaType"
                            | String
                            | optional,
                          confidentialityRequirement
                            | refs."definitions.metrics.items.properties.cvssV2_0.definitions.ciaRequirementType"
                            | String
                            | optional,
                          environmentalScore
                            | refs."definitions.metrics.items.properties.cvssV2_0.definitions.scoreType"
                            | Number
                            | optional,
                          exploitability
                            | refs."definitions.metrics.items.properties.cvssV2_0.definitions.exploitabilityType"
                            | String
                            | optional,
                          integrityImpact
                            | refs."definitions.metrics.items.properties.cvssV2_0.definitions.ciaType"
                            | String
                            | optional,
                          integrityRequirement
                            | refs."definitions.metrics.items.properties.cvssV2_0.definitions.ciaRequirementType"
                            | String
                            | optional,
                          remediationLevel
                            | refs."definitions.metrics.items.properties.cvssV2_0.definitions.remediationLevelType"
                            | String
                            | optional,
                          reportConfidence
                            | refs."definitions.metrics.items.properties.cvssV2_0.definitions.reportConfidenceType"
                            | String
                            | optional,
                          targetDistribution
                            | refs."definitions.metrics.items.properties.cvssV2_0.definitions.targetDistributionType"
                            | String
                            | optional,
                          temporalScore
                            | refs."definitions.metrics.items.properties.cvssV2_0.definitions.scoreType"
                            | Number
                            | optional,
                          vectorString
                            | js2n.string.Matches
                              "^((AV:[NAL]|AC:[LMH]|Au:[MSN]|[CIA]:[NPC]|E:(U|POC|F|H|ND)|RL:(OF|TF|W|U|ND)|RC:(UC|UR|C|ND)|CDP:(N|L|LM|MH|H|ND)|TD:(N|L|M|H|ND)|[CIA]R:(L|M|H|ND))/)*(AV:[NAL]|AC:[LMH]|Au:[MSN]|[CIA]:[NPC]|E:(U|POC|F|H|ND)|RL:(OF|TF|W|U|ND)|RC:(UC|UR|C|ND)|CDP:(N|L|LM|MH|H|ND)|TD:(N|L|M|H|ND)|[CIA]R:(L|M|H|ND))$",
                          version
                            | std.enum.TagOrString
                            | [| '"2.0" |]
                            | doc "CVSS Version",
                        }
                        | optional,
                      cvssV3_0
                        | std.contract.any_of
                          [
                            js2n.record.Record
                              {
                                additional = 'Some Dyn,
                                patterns = {},
                                properties =
                                  {
                                      baseScore =
                                        std.contract.Sequence
                                            [
                                              refs."definitions.metrics.items.properties.cvssV3_0.definitions.noneScoreType",
                                              Number
                                            ],
                                      baseSeverity =
                                        std.contract.Sequence
                                            [
                                              refs."definitions.metrics.items.properties.cvssV3_0.definitions.noneSeverityType",
                                              String
                                            ],
                                    },
                                required = {},
                              },
                            js2n.record.Record
                              {
                                additional = 'Some Dyn,
                                patterns = {},
                                properties =
                                  {
                                      baseScore =
                                        std.contract.Sequence
                                            [
                                              refs."definitions.metrics.items.properties.cvssV3_0.definitions.lowScoreType",
                                              Number
                                            ],
                                      baseSeverity =
                                        std.contract.Sequence
                                            [
                                              refs."definitions.metrics.items.properties.cvssV3_0.definitions.lowSeverityType",
                                              String
                                            ],
                                    },
                                required = {},
                              },
                            js2n.record.Record
                              {
                                additional = 'Some Dyn,
                                patterns = {},
                                properties =
                                  {
                                      baseScore =
                                        std.contract.Sequence
                                            [
                                              refs."definitions.metrics.items.properties.cvssV3_0.definitions.mediumScoreType",
                                              Number
                                            ],
                                      baseSeverity =
                                        std.contract.Sequence
                                            [
                                              refs."definitions.metrics.items.properties.cvssV3_0.definitions.mediumSeverityType",
                                              String
                                            ],
                                    },
                                required = {},
                              },
                            js2n.record.Record
                              {
                                additional = 'Some Dyn,
                                patterns = {},
                                properties =
                                  {
                                      baseScore =
                                        std.contract.Sequence
                                            [
                                              refs."definitions.metrics.items.properties.cvssV3_0.definitions.highScoreType",
                                              Number
                                            ],
                                      baseSeverity =
                                        std.contract.Sequence
                                            [
                                              refs."definitions.metrics.items.properties.cvssV3_0.definitions.highSeverityType",
                                              String
                                            ],
                                    },
                                required = {},
                              },
                            js2n.record.Record
                              {
                                additional = 'Some Dyn,
                                patterns = {},
                                properties =
                                  {
                                      baseScore =
                                        std.contract.Sequence
                                            [
                                              refs."definitions.metrics.items.properties.cvssV3_0.definitions.criticalScoreType",
                                              Number
                                            ],
                                      baseSeverity =
                                        std.contract.Sequence
                                            [
                                              refs."definitions.metrics.items.properties.cvssV3_0.definitions.criticalSeverityType",
                                              String
                                            ],
                                    },
                                required = {},
                              }
                          ]
                        | {
                          attackComplexity
                            | refs."definitions.metrics.items.properties.cvssV3_0.definitions.attackComplexityType"
                            | String
                            | optional,
                          attackVector
                            | refs."definitions.metrics.items.properties.cvssV3_0.definitions.attackVectorType"
                            | String
                            | optional,
                          availabilityImpact
                            | refs."definitions.metrics.items.properties.cvssV3_0.definitions.ciaType"
                            | String
                            | optional,
                          availabilityRequirement
                            | refs."definitions.metrics.items.properties.cvssV3_0.definitions.ciaRequirementType"
                            | String
                            | optional,
                          baseScore
                            | refs."definitions.metrics.items.properties.cvssV3_0.definitions.scoreType"
                            | Number,
                          baseSeverity
                            | refs."definitions.metrics.items.properties.cvssV3_0.definitions.severityType"
                            | String,
                          confidentialityImpact
                            | refs."definitions.metrics.items.properties.cvssV3_0.definitions.ciaType"
                            | String
                            | optional,
                          confidentialityRequirement
                            | refs."definitions.metrics.items.properties.cvssV3_0.definitions.ciaRequirementType"
                            | String
                            | optional,
                          environmentalScore
                            | refs."definitions.metrics.items.properties.cvssV3_0.definitions.scoreType"
                            | Number
                            | optional,
                          environmentalSeverity
                            | refs."definitions.metrics.items.properties.cvssV3_0.definitions.severityType"
                            | String
                            | optional,
                          exploitCodeMaturity
                            | refs."definitions.metrics.items.properties.cvssV3_0.definitions.exploitCodeMaturityType"
                            | String
                            | optional,
                          integrityImpact
                            | refs."definitions.metrics.items.properties.cvssV3_0.definitions.ciaType"
                            | String
                            | optional,
                          integrityRequirement
                            | refs."definitions.metrics.items.properties.cvssV3_0.definitions.ciaRequirementType"
                            | String
                            | optional,
                          modifiedAttackComplexity
                            | refs."definitions.metrics.items.properties.cvssV3_0.definitions.modifiedAttackComplexityType"
                            | String
                            | optional,
                          modifiedAttackVector
                            | refs."definitions.metrics.items.properties.cvssV3_0.definitions.modifiedAttackVectorType"
                            | String
                            | optional,
                          modifiedAvailabilityImpact
                            | refs."definitions.metrics.items.properties.cvssV3_0.definitions.modifiedCiaType"
                            | String
                            | optional,
                          modifiedConfidentialityImpact
                            | refs."definitions.metrics.items.properties.cvssV3_0.definitions.modifiedCiaType"
                            | String
                            | optional,
                          modifiedIntegrityImpact
                            | refs."definitions.metrics.items.properties.cvssV3_0.definitions.modifiedCiaType"
                            | String
                            | optional,
                          modifiedPrivilegesRequired
                            | refs."definitions.metrics.items.properties.cvssV3_0.definitions.modifiedPrivilegesRequiredType"
                            | String
                            | optional,
                          modifiedScope
                            | refs."definitions.metrics.items.properties.cvssV3_0.definitions.modifiedScopeType"
                            | String
                            | optional,
                          modifiedUserInteraction
                            | refs."definitions.metrics.items.properties.cvssV3_0.definitions.modifiedUserInteractionType"
                            | String
                            | optional,
                          privilegesRequired
                            | refs."definitions.metrics.items.properties.cvssV3_0.definitions.privilegesRequiredType"
                            | String
                            | optional,
                          remediationLevel
                            | refs."definitions.metrics.items.properties.cvssV3_0.definitions.remediationLevelType"
                            | String
                            | optional,
                          reportConfidence
                            | refs."definitions.metrics.items.properties.cvssV3_0.definitions.confidenceType"
                            | String
                            | optional,
                          scope
                            | refs."definitions.metrics.items.properties.cvssV3_0.definitions.scopeType"
                            | String
                            | optional,
                          temporalScore
                            | refs."definitions.metrics.items.properties.cvssV3_0.definitions.scoreType"
                            | Number
                            | optional,
                          temporalSeverity
                            | refs."definitions.metrics.items.properties.cvssV3_0.definitions.severityType"
                            | String
                            | optional,
                          userInteraction
                            | refs."definitions.metrics.items.properties.cvssV3_0.definitions.userInteractionType"
                            | String
                            | optional,
                          vectorString
                            | js2n.string.Matches
                              "^CVSS:3[.]0/((AV:[NALP]|AC:[LH]|PR:[UNLH]|UI:[NR]|S:[UC]|[CIA]:[NLH]|E:[XUPFH]|RL:[XOTWU]|RC:[XURC]|[CIA]R:[XLMH]|MAV:[XNALP]|MAC:[XLH]|MPR:[XUNLH]|MUI:[XNR]|MS:[XUC]|M[CIA]:[XNLH])/)*(AV:[NALP]|AC:[LH]|PR:[UNLH]|UI:[NR]|S:[UC]|[CIA]:[NLH]|E:[XUPFH]|RL:[XOTWU]|RC:[XURC]|[CIA]R:[XLMH]|MAV:[XNALP]|MAC:[XLH]|MPR:[XUNLH]|MUI:[XNR]|MS:[XUC]|M[CIA]:[XNLH])$",
                          version
                            | std.enum.TagOrString
                            | [| '"3.0" |]
                            | doc "CVSS Version",
                        }
                        | optional,
                      cvssV3_1
                        | std.contract.any_of
                          [
                            js2n.record.Record
                              {
                                additional = 'Some Dyn,
                                patterns = {},
                                properties =
                                  {
                                      baseScore =
                                        std.contract.Sequence
                                            [
                                              refs."definitions.metrics.items.properties.cvssV3_1.definitions.noneScoreType",
                                              Number
                                            ],
                                      baseSeverity =
                                        std.contract.Sequence
                                            [
                                              refs."definitions.metrics.items.properties.cvssV3_1.definitions.noneSeverityType",
                                              String
                                            ],
                                    },
                                required = {},
                              },
                            js2n.record.Record
                              {
                                additional = 'Some Dyn,
                                patterns = {},
                                properties =
                                  {
                                      baseScore =
                                        std.contract.Sequence
                                            [
                                              refs."definitions.metrics.items.properties.cvssV3_1.definitions.lowScoreType",
                                              Number
                                            ],
                                      baseSeverity =
                                        std.contract.Sequence
                                            [
                                              refs."definitions.metrics.items.properties.cvssV3_1.definitions.lowSeverityType",
                                              String
                                            ],
                                    },
                                required = {},
                              },
                            js2n.record.Record
                              {
                                additional = 'Some Dyn,
                                patterns = {},
                                properties =
                                  {
                                      baseScore =
                                        std.contract.Sequence
                                            [
                                              refs."definitions.metrics.items.properties.cvssV3_1.definitions.mediumScoreType",
                                              Number
                                            ],
                                      baseSeverity =
                                        std.contract.Sequence
                                            [
                                              refs."definitions.metrics.items.properties.cvssV3_1.definitions.mediumSeverityType",
                                              String
                                            ],
                                    },
                                required = {},
                              },
                            js2n.record.Record
                              {
                                additional = 'Some Dyn,
                                patterns = {},
                                properties =
                                  {
                                      baseScore =
                                        std.contract.Sequence
                                            [
                                              refs."definitions.metrics.items.properties.cvssV3_1.definitions.highScoreType",
                                              Number
                                            ],
                                      baseSeverity =
                                        std.contract.Sequence
                                            [
                                              refs."definitions.metrics.items.properties.cvssV3_1.definitions.highSeverityType",
                                              String
                                            ],
                                    },
                                required = {},
                              },
                            js2n.record.Record
                              {
                                additional = 'Some Dyn,
                                patterns = {},
                                properties =
                                  {
                                      baseScore =
                                        std.contract.Sequence
                                            [
                                              refs."definitions.metrics.items.properties.cvssV3_1.definitions.criticalScoreType",
                                              Number
                                            ],
                                      baseSeverity =
                                        std.contract.Sequence
                                            [
                                              refs."definitions.metrics.items.properties.cvssV3_1.definitions.criticalSeverityType",
                                              String
                                            ],
                                    },
                                required = {},
                              }
                          ]
                        | {
                          attackComplexity
                            | refs."definitions.metrics.items.properties.cvssV3_1.definitions.attackComplexityType"
                            | String
                            | optional,
                          attackVector
                            | refs."definitions.metrics.items.properties.cvssV3_1.definitions.attackVectorType"
                            | String
                            | optional,
                          availabilityImpact
                            | refs."definitions.metrics.items.properties.cvssV3_1.definitions.ciaType"
                            | String
                            | optional,
                          availabilityRequirement
                            | refs."definitions.metrics.items.properties.cvssV3_1.definitions.ciaRequirementType"
                            | String
                            | optional,
                          baseScore
                            | refs."definitions.metrics.items.properties.cvssV3_1.definitions.scoreType"
                            | Number,
                          baseSeverity
                            | refs."definitions.metrics.items.properties.cvssV3_1.definitions.severityType"
                            | String,
                          confidentialityImpact
                            | refs."definitions.metrics.items.properties.cvssV3_1.definitions.ciaType"
                            | String
                            | optional,
                          confidentialityRequirement
                            | refs."definitions.metrics.items.properties.cvssV3_1.definitions.ciaRequirementType"
                            | String
                            | optional,
                          environmentalScore
                            | refs."definitions.metrics.items.properties.cvssV3_1.definitions.scoreType"
                            | Number
                            | optional,
                          environmentalSeverity
                            | refs."definitions.metrics.items.properties.cvssV3_1.definitions.severityType"
                            | String
                            | optional,
                          exploitCodeMaturity
                            | refs."definitions.metrics.items.properties.cvssV3_1.definitions.exploitCodeMaturityType"
                            | String
                            | optional,
                          integrityImpact
                            | refs."definitions.metrics.items.properties.cvssV3_1.definitions.ciaType"
                            | String
                            | optional,
                          integrityRequirement
                            | refs."definitions.metrics.items.properties.cvssV3_1.definitions.ciaRequirementType"
                            | String
                            | optional,
                          modifiedAttackComplexity
                            | refs."definitions.metrics.items.properties.cvssV3_1.definitions.modifiedAttackComplexityType"
                            | String
                            | optional,
                          modifiedAttackVector
                            | refs."definitions.metrics.items.properties.cvssV3_1.definitions.modifiedAttackVectorType"
                            | String
                            | optional,
                          modifiedAvailabilityImpact
                            | refs."definitions.metrics.items.properties.cvssV3_1.definitions.modifiedCiaType"
                            | String
                            | optional,
                          modifiedConfidentialityImpact
                            | refs."definitions.metrics.items.properties.cvssV3_1.definitions.modifiedCiaType"
                            | String
                            | optional,
                          modifiedIntegrityImpact
                            | refs."definitions.metrics.items.properties.cvssV3_1.definitions.modifiedCiaType"
                            | String
                            | optional,
                          modifiedPrivilegesRequired
                            | refs."definitions.metrics.items.properties.cvssV3_1.definitions.modifiedPrivilegesRequiredType"
                            | String
                            | optional,
                          modifiedScope
                            | refs."definitions.metrics.items.properties.cvssV3_1.definitions.modifiedScopeType"
                            | String
                            | optional,
                          modifiedUserInteraction
                            | refs."definitions.metrics.items.properties.cvssV3_1.definitions.modifiedUserInteractionType"
                            | String
                            | optional,
                          privilegesRequired
                            | refs."definitions.metrics.items.properties.cvssV3_1.definitions.privilegesRequiredType"
                            | String
                            | optional,
                          remediationLevel
                            | refs."definitions.metrics.items.properties.cvssV3_1.definitions.remediationLevelType"
                            | String
                            | optional,
                          reportConfidence
                            | refs."definitions.metrics.items.properties.cvssV3_1.definitions.confidenceType"
                            | String
                            | optional,
                          scope
                            | refs."definitions.metrics.items.properties.cvssV3_1.definitions.scopeType"
                            | String
                            | optional,
                          temporalScore
                            | refs."definitions.metrics.items.properties.cvssV3_1.definitions.scoreType"
                            | Number
                            | optional,
                          temporalSeverity
                            | refs."definitions.metrics.items.properties.cvssV3_1.definitions.severityType"
                            | String
                            | optional,
                          userInteraction
                            | refs."definitions.metrics.items.properties.cvssV3_1.definitions.userInteractionType"
                            | String
                            | optional,
                          vectorString
                            | js2n.string.Matches
                              "^CVSS:3[.]1/((AV:[NALP]|AC:[LH]|PR:[NLH]|UI:[NR]|S:[UC]|[CIA]:[NLH]|E:[XUPFH]|RL:[XOTWU]|RC:[XURC]|[CIA]R:[XLMH]|MAV:[XNALP]|MAC:[XLH]|MPR:[XNLH]|MUI:[XNR]|MS:[XUC]|M[CIA]:[XNLH])/)*(AV:[NALP]|AC:[LH]|PR:[NLH]|UI:[NR]|S:[UC]|[CIA]:[NLH]|E:[XUPFH]|RL:[XOTWU]|RC:[XURC]|[CIA]R:[XLMH]|MAV:[XNALP]|MAC:[XLH]|MPR:[XNLH]|MUI:[XNR]|MS:[XUC]|M[CIA]:[XNLH])$",
                          version
                            | std.enum.TagOrString
                            | [| '"3.1" |]
                            | doc "CVSS Version",
                        }
                        | optional,
                      cvssV4_0
                        | std.contract.any_of
                          [
                            js2n.record.Record
                              {
                                additional = 'Some Dyn,
                                patterns = {},
                                properties =
                                  {
                                      baseScore =
                                        std.contract.Sequence
                                            [
                                              refs."definitions.metrics.items.properties.cvssV4_0.definitions.noneScoreType",
                                              Number
                                            ],
                                      baseSeverity =
                                        std.contract.Sequence
                                            [
                                              refs."definitions.metrics.items.properties.cvssV4_0.definitions.noneSeverityType",
                                              String
                                            ],
                                    },
                                required = {},
                              },
                            js2n.record.Record
                              {
                                additional = 'Some Dyn,
                                patterns = {},
                                properties =
                                  {
                                      baseScore =
                                        std.contract.Sequence
                                            [
                                              refs."definitions.metrics.items.properties.cvssV4_0.definitions.lowScoreType",
                                              Number
                                            ],
                                      baseSeverity =
                                        std.contract.Sequence
                                            [
                                              refs."definitions.metrics.items.properties.cvssV4_0.definitions.lowSeverityType",
                                              String
                                            ],
                                    },
                                required = {},
                              },
                            js2n.record.Record
                              {
                                additional = 'Some Dyn,
                                patterns = {},
                                properties =
                                  {
                                      baseScore =
                                        std.contract.Sequence
                                            [
                                              refs."definitions.metrics.items.properties.cvssV4_0.definitions.mediumScoreType",
                                              Number
                                            ],
                                      baseSeverity =
                                        std.contract.Sequence
                                            [
                                              refs."definitions.metrics.items.properties.cvssV4_0.definitions.mediumSeverityType",
                                              String
                                            ],
                                    },
                                required = {},
                              },
                            js2n.record.Record
                              {
                                additional = 'Some Dyn,
                                patterns = {},
                                properties =
                                  {
                                      baseScore =
                                        std.contract.Sequence
                                            [
                                              refs."definitions.metrics.items.properties.cvssV4_0.definitions.highScoreType",
                                              Number
                                            ],
                                      baseSeverity =
                                        std.contract.Sequence
                                            [
                                              refs."definitions.metrics.items.properties.cvssV4_0.definitions.highSeverityType",
                                              String
                                            ],
                                    },
                                required = {},
                              },
                            js2n.record.Record
                              {
                                additional = 'Some Dyn,
                                patterns = {},
                                properties =
                                  {
                                      baseScore =
                                        std.contract.Sequence
                                            [
                                              refs."definitions.metrics.items.properties.cvssV4_0.definitions.criticalScoreType",
                                              Number
                                            ],
                                      baseSeverity =
                                        std.contract.Sequence
                                            [
                                              refs."definitions.metrics.items.properties.cvssV4_0.definitions.criticalSeverityType",
                                              String
                                            ],
                                    },
                                required = {},
                              }
                          ]
                        | std.contract.any_of
                          [
                            js2n.record.Record
                              {
                                additional = 'Some Dyn,
                                patterns = {},
                                properties =
                                  {
                                      threatScore =
                                        std.contract.Sequence
                                            [
                                              refs."definitions.metrics.items.properties.cvssV4_0.definitions.noneScoreType",
                                              Number
                                            ],
                                      threatSeverity =
                                        std.contract.Sequence
                                            [
                                              refs."definitions.metrics.items.properties.cvssV4_0.definitions.noneSeverityType",
                                              String
                                            ],
                                    },
                                required = {},
                              },
                            js2n.record.Record
                              {
                                additional = 'Some Dyn,
                                patterns = {},
                                properties =
                                  {
                                      threatScore =
                                        std.contract.Sequence
                                            [
                                              refs."definitions.metrics.items.properties.cvssV4_0.definitions.lowScoreType",
                                              Number
                                            ],
                                      threatSeverity =
                                        std.contract.Sequence
                                            [
                                              refs."definitions.metrics.items.properties.cvssV4_0.definitions.lowSeverityType",
                                              String
                                            ],
                                    },
                                required = {},
                              },
                            js2n.record.Record
                              {
                                additional = 'Some Dyn,
                                patterns = {},
                                properties =
                                  {
                                      threatScore =
                                        std.contract.Sequence
                                            [
                                              refs."definitions.metrics.items.properties.cvssV4_0.definitions.mediumScoreType",
                                              Number
                                            ],
                                      threatSeverity =
                                        std.contract.Sequence
                                            [
                                              refs."definitions.metrics.items.properties.cvssV4_0.definitions.mediumSeverityType",
                                              String
                                            ],
                                    },
                                required = {},
                              },
                            js2n.record.Record
                              {
                                additional = 'Some Dyn,
                                patterns = {},
                                properties =
                                  {
                                      threatScore =
                                        std.contract.Sequence
                                            [
                                              refs."definitions.metrics.items.properties.cvssV4_0.definitions.highScoreType",
                                              Number
                                            ],
                                      threatSeverity =
                                        std.contract.Sequence
                                            [
                                              refs."definitions.metrics.items.properties.cvssV4_0.definitions.highSeverityType",
                                              String
                                            ],
                                    },
                                required = {},
                              },
                            js2n.record.Record
                              {
                                additional = 'Some Dyn,
                                patterns = {},
                                properties =
                                  {
                                      threatScore =
                                        std.contract.Sequence
                                            [
                                              refs."definitions.metrics.items.properties.cvssV4_0.definitions.criticalScoreType",
                                              Number
                                            ],
                                      threatSeverity =
                                        std.contract.Sequence
                                            [
                                              refs."definitions.metrics.items.properties.cvssV4_0.definitions.criticalSeverityType",
                                              String
                                            ],
                                    },
                                required = {},
                              }
                          ]
                        | std.contract.any_of
                          [
                            js2n.record.Record
                              {
                                additional = 'Some Dyn,
                                patterns = {},
                                properties =
                                  {
                                      environmentalScore =
                                        std.contract.Sequence
                                            [
                                              refs."definitions.metrics.items.properties.cvssV4_0.definitions.noneScoreType",
                                              Number
                                            ],
                                      environmentalSeverity =
                                        std.contract.Sequence
                                            [
                                              refs."definitions.metrics.items.properties.cvssV4_0.definitions.noneSeverityType",
                                              String
                                            ],
                                    },
                                required = {},
                              },
                            js2n.record.Record
                              {
                                additional = 'Some Dyn,
                                patterns = {},
                                properties =
                                  {
                                      environmentalScore =
                                        std.contract.Sequence
                                            [
                                              refs."definitions.metrics.items.properties.cvssV4_0.definitions.lowScoreType",
                                              Number
                                            ],
                                      environmentalSeverity =
                                        std.contract.Sequence
                                            [
                                              refs."definitions.metrics.items.properties.cvssV4_0.definitions.lowSeverityType",
                                              String
                                            ],
                                    },
                                required = {},
                              },
                            js2n.record.Record
                              {
                                additional = 'Some Dyn,
                                patterns = {},
                                properties =
                                  {
                                      environmentalScore =
                                        std.contract.Sequence
                                            [
                                              refs."definitions.metrics.items.properties.cvssV4_0.definitions.mediumScoreType",
                                              Number
                                            ],
                                      environmentalSeverity =
                                        std.contract.Sequence
                                            [
                                              refs."definitions.metrics.items.properties.cvssV4_0.definitions.mediumSeverityType",
                                              String
                                            ],
                                    },
                                required = {},
                              },
                            js2n.record.Record
                              {
                                additional = 'Some Dyn,
                                patterns = {},
                                properties =
                                  {
                                      environmentalScore =
                                        std.contract.Sequence
                                            [
                                              refs."definitions.metrics.items.properties.cvssV4_0.definitions.highScoreType",
                                              Number
                                            ],
                                      environmentalSeverity =
                                        std.contract.Sequence
                                            [
                                              refs."definitions.metrics.items.properties.cvssV4_0.definitions.highSeverityType",
                                              String
                                            ],
                                    },
                                required = {},
                              },
                            js2n.record.Record
                              {
                                additional = 'Some Dyn,
                                patterns = {},
                                properties =
                                  {
                                      environmentalScore =
                                        std.contract.Sequence
                                            [
                                              refs."definitions.metrics.items.properties.cvssV4_0.definitions.criticalScoreType",
                                              Number
                                            ],
                                      environmentalSeverity =
                                        std.contract.Sequence
                                            [
                                              refs."definitions.metrics.items.properties.cvssV4_0.definitions.criticalSeverityType",
                                              String
                                            ],
                                    },
                                required = {},
                              }
                          ]
                        | {
                          Automatable
                            | refs."definitions.metrics.items.properties.cvssV4_0.definitions.automatableType"
                            | String
                            | optional,
                          Recovery
                            | refs."definitions.metrics.items.properties.cvssV4_0.definitions.recoveryType"
                            | String
                            | optional,
                          Safety
                            | refs."definitions.metrics.items.properties.cvssV4_0.definitions.safetyType"
                            | String
                            | optional,
                          attackComplexity
                            | refs."definitions.metrics.items.properties.cvssV4_0.definitions.attackComplexityType"
                            | String
                            | optional,
                          attackRequirements
                            | refs."definitions.metrics.items.properties.cvssV4_0.definitions.attackRequirementsType"
                            | String
                            | optional,
                          attackVector
                            | refs."definitions.metrics.items.properties.cvssV4_0.definitions.attackVectorType"
                            | String
                            | optional,
                          availabilityRequirement
                            | refs."definitions.metrics.items.properties.cvssV4_0.definitions.ciaRequirementType"
                            | String
                            | optional,
                          baseScore
                            | refs."definitions.metrics.items.properties.cvssV4_0.definitions.scoreType"
                            | Number,
                          baseSeverity
                            | refs."definitions.metrics.items.properties.cvssV4_0.definitions.severityType"
                            | String,
                          confidentialityRequirement
                            | refs."definitions.metrics.items.properties.cvssV4_0.definitions.ciaRequirementType"
                            | String
                            | optional,
                          exploitMaturity
                            | refs."definitions.metrics.items.properties.cvssV4_0.definitions.exploitMaturityType"
                            | String
                            | optional,
                          integrityRequirement
                            | refs."definitions.metrics.items.properties.cvssV4_0.definitions.ciaRequirementType"
                            | String
                            | optional,
                          modifiedAttackComplexity
                            | refs."definitions.metrics.items.properties.cvssV4_0.definitions.modifiedAttackComplexityType"
                            | String
                            | optional,
                          modifiedAttackRequirements
                            | refs."definitions.metrics.items.properties.cvssV4_0.definitions.modifiedAttackRequirementsType"
                            | String
                            | optional,
                          modifiedAttackVector
                            | refs."definitions.metrics.items.properties.cvssV4_0.definitions.modifiedAttackVectorType"
                            | String
                            | optional,
                          modifiedPrivilegesRequired
                            | refs."definitions.metrics.items.properties.cvssV4_0.definitions.modifiedPrivilegesRequiredType"
                            | String
                            | optional,
                          modifiedSubAvailabilityImpact
                            | refs."definitions.metrics.items.properties.cvssV4_0.definitions.modifiedSubIaType"
                            | String
                            | optional,
                          modifiedSubConfidentialityImpact
                            | refs."definitions.metrics.items.properties.cvssV4_0.definitions.modifiedSubCType"
                            | String
                            | optional,
                          modifiedSubIntegrityImpact
                            | refs."definitions.metrics.items.properties.cvssV4_0.definitions.modifiedSubIaType"
                            | String
                            | optional,
                          modifiedUserInteraction
                            | refs."definitions.metrics.items.properties.cvssV4_0.definitions.modifiedUserInteractionType"
                            | String
                            | optional,
                          modifiedVulnAvailabilityImpact
                            | refs."definitions.metrics.items.properties.cvssV4_0.definitions.modifiedVulnCiaType"
                            | String
                            | optional,
                          modifiedVulnConfidentialityImpact
                            | refs."definitions.metrics.items.properties.cvssV4_0.definitions.modifiedVulnCiaType"
                            | String
                            | optional,
                          modifiedVulnIntegrityImpact
                            | refs."definitions.metrics.items.properties.cvssV4_0.definitions.modifiedVulnCiaType"
                            | String
                            | optional,
                          privilegesRequired
                            | refs."definitions.metrics.items.properties.cvssV4_0.definitions.privilegesRequiredType"
                            | String
                            | optional,
                          providerUrgency
                            | refs."definitions.metrics.items.properties.cvssV4_0.definitions.providerUrgencyType"
                            | String
                            | optional,
                          subAvailabilityImpact
                            | refs."definitions.metrics.items.properties.cvssV4_0.definitions.subCiaType"
                            | String
                            | optional,
                          subConfidentialityImpact
                            | refs."definitions.metrics.items.properties.cvssV4_0.definitions.subCiaType"
                            | String
                            | optional,
                          subIntegrityImpact
                            | refs."definitions.metrics.items.properties.cvssV4_0.definitions.subCiaType"
                            | String
                            | optional,
                          userInteraction
                            | refs."definitions.metrics.items.properties.cvssV4_0.definitions.userInteractionType"
                            | String
                            | optional,
                          valueDensity
                            | refs."definitions.metrics.items.properties.cvssV4_0.definitions.valueDensityType"
                            | String
                            | optional,
                          vectorString
                            | js2n.string.Matches
                              "^CVSS:4[.]0/AV:[NALP]/AC:[LH]/AT:[NP]/PR:[NLH]/UI:[NPA]/VC:[HLN]/VI:[HLN]/VA:[HLN]/SC:[HLN]/SI:[HLN]/SA:[HLN](/E:[XAPU])?(/CR:[XHML])?(/IR:[XHML])?(/AR:[XHML])?(/MAV:[XNALP])?(/MAC:[XLH])?(/MAT:[XNP])?(/MPR:[XNLH])?(/MUI:[XNPA])?(/MVC:[XNLH])?(/MVI:[XNLH])?(/MVA:[XNLH])?(/MSC:[XNLH])?(/MSI:[XNLHS])?(/MSA:[XNLHS])?(/S:[XNP])?(/AU:[XNY])?(/R:[XAUI])?(/V:[XDC])?(/RE:[XLMH])?(/U:(X|Clear|Green|Amber|Red))?$",
                          version
                            | std.enum.TagOrString
                            | [| '"4.0" |]
                            | doc "CVSS Version",
                          vulnAvailabilityImpact
                            | refs."definitions.metrics.items.properties.cvssV4_0.definitions.vulnCiaType"
                            | String
                            | optional,
                          vulnConfidentialityImpact
                            | refs."definitions.metrics.items.properties.cvssV4_0.definitions.vulnCiaType"
                            | String
                            | optional,
                          vulnIntegrityImpact
                            | refs."definitions.metrics.items.properties.cvssV4_0.definitions.vulnCiaType"
                            | String
                            | optional,
                          vulnerabilityResponseEffort
                            | refs."definitions.metrics.items.properties.cvssV4_0.definitions.vulnerabilityResponseEffortType"
                            | String
                            | optional,
                        }
                        | optional,
                      format
                        | js2n.string.MaxLength 64
                        | js2n.string.MinLength 1
                        | doc "Name of the scoring format. This provides a bit of future proofing. Additional properties are not prohibited, so this will support the inclusion of proprietary formats. It also provides an easy future conversion mechanism when future score formats become part of the schema. example: cvssV44, format = 'cvssV44', other = cvssV4_4 JSON object. In the future, the other properties can be converted to score properties when they become part of the schema."
                        | optional,
                      other
                        | {
                          content
                            | js2n.record.MinProperties 1
                            | doc "JSON object not covered by another metrics format.",
                          type
                            | js2n.string.MaxLength 128
                            | js2n.string.MinLength 1
                            | doc "Name of the non-standard impact metrics format used.",
                        }
                        | doc "A non-standard impact description, may be prose or JSON block."
                        | optional,
                      scenarios
                        | js2n.array.MinItems 1
                        | js2n.array.UniqueItems
                        | Array
                          {
                            lang | refs."definitions.language" | String,
                            value
                              | js2n.string.MaxLength 4096
                              | js2n.string.MinLength 1
                              | doc "Description of the scenario this metrics object applies to. If no specific scenario is given, GENERAL is used as the default and applies when no more specific metric matches.",
                          }
                        | doc "Description of the scenarios this metrics object applies to. If no specific scenario is given, GENERAL is used as the default and applies when no more specific metric matches."
                        | optional,
                    }
                  ]
              )
            ],
      "definitions.metrics.items.properties.cvssV2_0.definitions.accessComplexityType" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'LOW, 'MEDIUM, 'HIGH |] ],
      "definitions.metrics.items.properties.cvssV2_0.definitions.accessVectorType" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'LOCAL, 'ADJACENT_NETWORK, 'NETWORK |] ],
      "definitions.metrics.items.properties.cvssV2_0.definitions.authenticationType" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'NONE, 'SINGLE, 'MULTIPLE |] ],
      "definitions.metrics.items.properties.cvssV2_0.definitions.ciaRequirementType" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'NOT_DEFINED, 'HIGH, 'MEDIUM, 'LOW |] ],
      "definitions.metrics.items.properties.cvssV2_0.definitions.ciaType" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'COMPLETE, 'PARTIAL, 'NONE |] ],
      "definitions.metrics.items.properties.cvssV2_0.definitions.collateralDamagePotentialType" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [| 'NOT_DEFINED, 'HIGH, 'MEDIUM_HIGH, 'LOW_MEDIUM, 'LOW, 'NONE |]
            ],
      "definitions.metrics.items.properties.cvssV2_0.definitions.exploitabilityType" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'NOT_DEFINED,
                'HIGH,
                'FUNCTIONAL,
                'PROOF_OF_CONCEPT,
                'UNPROVEN
              |]
            ],
      "definitions.metrics.items.properties.cvssV2_0.definitions.remediationLevelType" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'NOT_DEFINED,
                'UNAVAILABLE,
                'WORKAROUND,
                'TEMPORARY_FIX,
                'OFFICIAL_FIX
              |]
            ],
      "definitions.metrics.items.properties.cvssV2_0.definitions.reportConfidenceType" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [| 'NOT_DEFINED, 'CONFIRMED, 'UNCORROBORATED, 'UNCONFIRMED |]
            ],
      "definitions.metrics.items.properties.cvssV2_0.definitions.scoreType" =
        std.contract.Sequence [ js2n.number.Maximum 10, js2n.number.Minimum 0 ],
      "definitions.metrics.items.properties.cvssV2_0.definitions.targetDistributionType" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [| 'NOT_DEFINED, 'HIGH, 'MEDIUM, 'LOW, 'NONE |]
            ],
      "definitions.metrics.items.properties.cvssV3_0.definitions.attackComplexityType" =
        std.contract.Sequence [ std.enum.TagOrString, [| 'LOW, 'HIGH |] ],
      "definitions.metrics.items.properties.cvssV3_0.definitions.attackVectorType" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [| 'PHYSICAL, 'LOCAL, 'ADJACENT_NETWORK, 'NETWORK |]
            ],
      "definitions.metrics.items.properties.cvssV3_0.definitions.ciaRequirementType" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'NOT_DEFINED, 'HIGH, 'MEDIUM, 'LOW |] ],
      "definitions.metrics.items.properties.cvssV3_0.definitions.ciaType" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'HIGH, 'LOW, 'NONE |] ],
      "definitions.metrics.items.properties.cvssV3_0.definitions.confidenceType" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [| 'NOT_DEFINED, 'CONFIRMED, 'REASONABLE, 'UNKNOWN |]
            ],
      "definitions.metrics.items.properties.cvssV3_0.definitions.criticalScoreType" =
        js2n.Enum [ 9, 9.1, 9.2, 9.3, 9.4, 9.5, 9.6, 9.7, 9.8, 9.9, 10 ],
      "definitions.metrics.items.properties.cvssV3_0.definitions.criticalSeverityType" =
        std.contract.Equal "CRITICAL",
      "definitions.metrics.items.properties.cvssV3_0.definitions.exploitCodeMaturityType" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'NOT_DEFINED,
                'HIGH,
                'FUNCTIONAL,
                'PROOF_OF_CONCEPT,
                'UNPROVEN
              |]
            ],
      "definitions.metrics.items.properties.cvssV3_0.definitions.highScoreType" =
        js2n.Enum
            [
              7,
              7.1,
              7.2,
              7.3,
              7.4,
              7.5,
              7.6,
              7.7,
              7.8,
              7.9,
              8,
              8.1,
              8.2,
              8.3,
              8.4,
              8.5,
              8.6,
              8.7,
              8.8,
              8.9
            ],
      "definitions.metrics.items.properties.cvssV3_0.definitions.highSeverityType" =
        std.contract.Equal "HIGH",
      "definitions.metrics.items.properties.cvssV3_0.definitions.lowScoreType" =
        js2n.Enum
            [
              0.1,
              0.2,
              0.3,
              0.4,
              0.5,
              0.6,
              0.7,
              0.8,
              0.9,
              1,
              1.1,
              1.2,
              1.3,
              1.4,
              1.5,
              1.6,
              1.7,
              1.8,
              1.9,
              2,
              2.1,
              2.2,
              2.3,
              2.4,
              2.5,
              2.6,
              2.7,
              2.8,
              2.9,
              3,
              3.1,
              3.2,
              3.3,
              3.4,
              3.5,
              3.6,
              3.7,
              3.8,
              3.9
            ],
      "definitions.metrics.items.properties.cvssV3_0.definitions.lowSeverityType" =
        std.contract.Equal "LOW",
      "definitions.metrics.items.properties.cvssV3_0.definitions.mediumScoreType" =
        js2n.Enum
            [
              4,
              4.1,
              4.2,
              4.3,
              4.4,
              4.5,
              4.6,
              4.7,
              4.8,
              4.9,
              5,
              5.1,
              5.2,
              5.3,
              5.4,
              5.5,
              5.6,
              5.7,
              5.8,
              5.9,
              6,
              6.1,
              6.2,
              6.3,
              6.4,
              6.5,
              6.6,
              6.7,
              6.8,
              6.9
            ],
      "definitions.metrics.items.properties.cvssV3_0.definitions.mediumSeverityType" =
        std.contract.Equal "MEDIUM",
      "definitions.metrics.items.properties.cvssV3_0.definitions.modifiedAttackComplexityType" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'NOT_DEFINED, 'LOW, 'HIGH |] ],
      "definitions.metrics.items.properties.cvssV3_0.definitions.modifiedAttackVectorType" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [| 'NOT_DEFINED, 'PHYSICAL, 'LOCAL, 'ADJACENT_NETWORK, 'NETWORK |]
            ],
      "definitions.metrics.items.properties.cvssV3_0.definitions.modifiedCiaType" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'NOT_DEFINED, 'HIGH, 'LOW, 'NONE |] ],
      "definitions.metrics.items.properties.cvssV3_0.definitions.modifiedPrivilegesRequiredType" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'NOT_DEFINED, 'NONE, 'LOW, 'HIGH |] ],
      "definitions.metrics.items.properties.cvssV3_0.definitions.modifiedScopeType" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'NOT_DEFINED, 'CHANGED, 'UNCHANGED |] ],
      "definitions.metrics.items.properties.cvssV3_0.definitions.modifiedUserInteractionType" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'NOT_DEFINED, 'REQUIRED, 'NONE |] ],
      "definitions.metrics.items.properties.cvssV3_0.definitions.noneScoreType" =
        std.contract.Sequence [ js2n.number.Maximum 0, js2n.number.Minimum 0 ],
      "definitions.metrics.items.properties.cvssV3_0.definitions.noneSeverityType" =
        std.contract.Equal "NONE",
      "definitions.metrics.items.properties.cvssV3_0.definitions.privilegesRequiredType" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'NONE, 'LOW, 'HIGH |] ],
      "definitions.metrics.items.properties.cvssV3_0.definitions.remediationLevelType" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'NOT_DEFINED,
                'UNAVAILABLE,
                'WORKAROUND,
                'TEMPORARY_FIX,
                'OFFICIAL_FIX
              |]
            ],
      "definitions.metrics.items.properties.cvssV3_0.definitions.scopeType" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'CHANGED, 'UNCHANGED |] ],
      "definitions.metrics.items.properties.cvssV3_0.definitions.scoreType" =
        js2n.Enum
            [
              0,
              0.1,
              0.2,
              0.3,
              0.4,
              0.5,
              0.6,
              0.7,
              0.8,
              0.9,
              1,
              1.1,
              1.2,
              1.3,
              1.4,
              1.5,
              1.6,
              1.7,
              1.8,
              1.9,
              2,
              2.1,
              2.2,
              2.3,
              2.4,
              2.5,
              2.6,
              2.7,
              2.8,
              2.9,
              3,
              3.1,
              3.2,
              3.3,
              3.4,
              3.5,
              3.6,
              3.7,
              3.8,
              3.9,
              4,
              4.1,
              4.2,
              4.3,
              4.4,
              4.5,
              4.6,
              4.7,
              4.8,
              4.9,
              5,
              5.1,
              5.2,
              5.3,
              5.4,
              5.5,
              5.6,
              5.7,
              5.8,
              5.9,
              6,
              6.1,
              6.2,
              6.3,
              6.4,
              6.5,
              6.6,
              6.7,
              6.8,
              6.9,
              7,
              7.1,
              7.2,
              7.3,
              7.4,
              7.5,
              7.6,
              7.7,
              7.8,
              7.9,
              8,
              8.1,
              8.2,
              8.3,
              8.4,
              8.5,
              8.6,
              8.7,
              8.8,
              8.9,
              9,
              9.1,
              9.2,
              9.3,
              9.4,
              9.5,
              9.6,
              9.7,
              9.8,
              9.9,
              10
            ],
      "definitions.metrics.items.properties.cvssV3_0.definitions.severityType" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [| 'CRITICAL, 'HIGH, 'MEDIUM, 'LOW, 'NONE |]
            ],
      "definitions.metrics.items.properties.cvssV3_0.definitions.userInteractionType" =
        std.contract.Sequence [ std.enum.TagOrString, [| 'REQUIRED, 'NONE |] ],
      "definitions.metrics.items.properties.cvssV3_1.definitions.attackComplexityType" =
        std.contract.Sequence [ std.enum.TagOrString, [| 'LOW, 'HIGH |] ],
      "definitions.metrics.items.properties.cvssV3_1.definitions.attackVectorType" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [| 'PHYSICAL, 'LOCAL, 'ADJACENT_NETWORK, 'NETWORK |]
            ],
      "definitions.metrics.items.properties.cvssV3_1.definitions.ciaRequirementType" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'NOT_DEFINED, 'HIGH, 'MEDIUM, 'LOW |] ],
      "definitions.metrics.items.properties.cvssV3_1.definitions.ciaType" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'HIGH, 'LOW, 'NONE |] ],
      "definitions.metrics.items.properties.cvssV3_1.definitions.confidenceType" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [| 'NOT_DEFINED, 'CONFIRMED, 'REASONABLE, 'UNKNOWN |]
            ],
      "definitions.metrics.items.properties.cvssV3_1.definitions.criticalScoreType" =
        js2n.Enum [ 9, 9.1, 9.2, 9.3, 9.4, 9.5, 9.6, 9.7, 9.8, 9.9, 10 ],
      "definitions.metrics.items.properties.cvssV3_1.definitions.criticalSeverityType" =
        std.contract.Equal "CRITICAL",
      "definitions.metrics.items.properties.cvssV3_1.definitions.exploitCodeMaturityType" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'NOT_DEFINED,
                'HIGH,
                'FUNCTIONAL,
                'PROOF_OF_CONCEPT,
                'UNPROVEN
              |]
            ],
      "definitions.metrics.items.properties.cvssV3_1.definitions.highScoreType" =
        js2n.Enum
            [
              7,
              7.1,
              7.2,
              7.3,
              7.4,
              7.5,
              7.6,
              7.7,
              7.8,
              7.9,
              8,
              8.1,
              8.2,
              8.3,
              8.4,
              8.5,
              8.6,
              8.7,
              8.8,
              8.9
            ],
      "definitions.metrics.items.properties.cvssV3_1.definitions.highSeverityType" =
        std.contract.Equal "HIGH",
      "definitions.metrics.items.properties.cvssV3_1.definitions.lowScoreType" =
        js2n.Enum
            [
              0.1,
              0.2,
              0.3,
              0.4,
              0.5,
              0.6,
              0.7,
              0.8,
              0.9,
              1,
              1.1,
              1.2,
              1.3,
              1.4,
              1.5,
              1.6,
              1.7,
              1.8,
              1.9,
              2,
              2.1,
              2.2,
              2.3,
              2.4,
              2.5,
              2.6,
              2.7,
              2.8,
              2.9,
              3,
              3.1,
              3.2,
              3.3,
              3.4,
              3.5,
              3.6,
              3.7,
              3.8,
              3.9
            ],
      "definitions.metrics.items.properties.cvssV3_1.definitions.lowSeverityType" =
        std.contract.Equal "LOW",
      "definitions.metrics.items.properties.cvssV3_1.definitions.mediumScoreType" =
        js2n.Enum
            [
              4,
              4.1,
              4.2,
              4.3,
              4.4,
              4.5,
              4.6,
              4.7,
              4.8,
              4.9,
              5,
              5.1,
              5.2,
              5.3,
              5.4,
              5.5,
              5.6,
              5.7,
              5.8,
              5.9,
              6,
              6.1,
              6.2,
              6.3,
              6.4,
              6.5,
              6.6,
              6.7,
              6.8,
              6.9
            ],
      "definitions.metrics.items.properties.cvssV3_1.definitions.mediumSeverityType" =
        std.contract.Equal "MEDIUM",
      "definitions.metrics.items.properties.cvssV3_1.definitions.modifiedAttackComplexityType" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'NOT_DEFINED, 'LOW, 'HIGH |] ],
      "definitions.metrics.items.properties.cvssV3_1.definitions.modifiedAttackVectorType" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [| 'NOT_DEFINED, 'PHYSICAL, 'LOCAL, 'ADJACENT_NETWORK, 'NETWORK |]
            ],
      "definitions.metrics.items.properties.cvssV3_1.definitions.modifiedCiaType" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'NOT_DEFINED, 'HIGH, 'LOW, 'NONE |] ],
      "definitions.metrics.items.properties.cvssV3_1.definitions.modifiedPrivilegesRequiredType" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'NOT_DEFINED, 'NONE, 'LOW, 'HIGH |] ],
      "definitions.metrics.items.properties.cvssV3_1.definitions.modifiedScopeType" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'NOT_DEFINED, 'CHANGED, 'UNCHANGED |] ],
      "definitions.metrics.items.properties.cvssV3_1.definitions.modifiedUserInteractionType" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'NOT_DEFINED, 'REQUIRED, 'NONE |] ],
      "definitions.metrics.items.properties.cvssV3_1.definitions.noneScoreType" =
        std.contract.Sequence [ js2n.number.Maximum 0, js2n.number.Minimum 0 ],
      "definitions.metrics.items.properties.cvssV3_1.definitions.noneSeverityType" =
        std.contract.Equal "NONE",
      "definitions.metrics.items.properties.cvssV3_1.definitions.privilegesRequiredType" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'NONE, 'LOW, 'HIGH |] ],
      "definitions.metrics.items.properties.cvssV3_1.definitions.remediationLevelType" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'NOT_DEFINED,
                'UNAVAILABLE,
                'WORKAROUND,
                'TEMPORARY_FIX,
                'OFFICIAL_FIX
              |]
            ],
      "definitions.metrics.items.properties.cvssV3_1.definitions.scopeType" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'CHANGED, 'UNCHANGED |] ],
      "definitions.metrics.items.properties.cvssV3_1.definitions.scoreType" =
        js2n.Enum
            [
              0,
              0.1,
              0.2,
              0.3,
              0.4,
              0.5,
              0.6,
              0.7,
              0.8,
              0.9,
              1,
              1.1,
              1.2,
              1.3,
              1.4,
              1.5,
              1.6,
              1.7,
              1.8,
              1.9,
              2,
              2.1,
              2.2,
              2.3,
              2.4,
              2.5,
              2.6,
              2.7,
              2.8,
              2.9,
              3,
              3.1,
              3.2,
              3.3,
              3.4,
              3.5,
              3.6,
              3.7,
              3.8,
              3.9,
              4,
              4.1,
              4.2,
              4.3,
              4.4,
              4.5,
              4.6,
              4.7,
              4.8,
              4.9,
              5,
              5.1,
              5.2,
              5.3,
              5.4,
              5.5,
              5.6,
              5.7,
              5.8,
              5.9,
              6,
              6.1,
              6.2,
              6.3,
              6.4,
              6.5,
              6.6,
              6.7,
              6.8,
              6.9,
              7,
              7.1,
              7.2,
              7.3,
              7.4,
              7.5,
              7.6,
              7.7,
              7.8,
              7.9,
              8,
              8.1,
              8.2,
              8.3,
              8.4,
              8.5,
              8.6,
              8.7,
              8.8,
              8.9,
              9,
              9.1,
              9.2,
              9.3,
              9.4,
              9.5,
              9.6,
              9.7,
              9.8,
              9.9,
              10
            ],
      "definitions.metrics.items.properties.cvssV3_1.definitions.severityType" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [| 'CRITICAL, 'HIGH, 'MEDIUM, 'LOW, 'NONE |]
            ],
      "definitions.metrics.items.properties.cvssV3_1.definitions.userInteractionType" =
        std.contract.Sequence [ std.enum.TagOrString, [| 'REQUIRED, 'NONE |] ],
      "definitions.metrics.items.properties.cvssV4_0.definitions.attackComplexityType" =
        std.contract.Sequence [ std.enum.TagOrString, [| 'LOW, 'HIGH |] ],
      "definitions.metrics.items.properties.cvssV4_0.definitions.attackRequirementsType" =
        std.contract.Sequence [ std.enum.TagOrString, [| 'PRESENT, 'NONE |] ],
      "definitions.metrics.items.properties.cvssV4_0.definitions.attackVectorType" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [| 'PHYSICAL, 'LOCAL, 'ADJACENT, 'NETWORK |]
            ],
      "definitions.metrics.items.properties.cvssV4_0.definitions.automatableType" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'NOT_DEFINED, 'YES, 'NO |] ],
      "definitions.metrics.items.properties.cvssV4_0.definitions.ciaRequirementType" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'NOT_DEFINED, 'HIGH, 'MEDIUM, 'LOW |] ],
      "definitions.metrics.items.properties.cvssV4_0.definitions.criticalScoreType" =
        js2n.Enum [ 9, 9.1, 9.2, 9.3, 9.4, 9.5, 9.6, 9.7, 9.8, 9.9, 10 ],
      "definitions.metrics.items.properties.cvssV4_0.definitions.criticalSeverityType" =
        std.contract.Equal "CRITICAL",
      "definitions.metrics.items.properties.cvssV4_0.definitions.exploitMaturityType" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [| 'NOT_DEFINED, 'ATTACKED, 'PROOF_OF_CONCEPT, 'UNREPORTED |]
            ],
      "definitions.metrics.items.properties.cvssV4_0.definitions.highScoreType" =
        js2n.Enum
            [
              7,
              7.1,
              7.2,
              7.3,
              7.4,
              7.5,
              7.6,
              7.7,
              7.8,
              7.9,
              8,
              8.1,
              8.2,
              8.3,
              8.4,
              8.5,
              8.6,
              8.7,
              8.8,
              8.9
            ],
      "definitions.metrics.items.properties.cvssV4_0.definitions.highSeverityType" =
        std.contract.Equal "HIGH",
      "definitions.metrics.items.properties.cvssV4_0.definitions.lowScoreType" =
        js2n.Enum
            [
              0.1,
              0.2,
              0.3,
              0.4,
              0.5,
              0.6,
              0.7,
              0.8,
              0.9,
              1,
              1.1,
              1.2,
              1.3,
              1.4,
              1.5,
              1.6,
              1.7,
              1.8,
              1.9,
              2,
              2.1,
              2.2,
              2.3,
              2.4,
              2.5,
              2.6,
              2.7,
              2.8,
              2.9,
              3,
              3.1,
              3.2,
              3.3,
              3.4,
              3.5,
              3.6,
              3.7,
              3.8,
              3.9
            ],
      "definitions.metrics.items.properties.cvssV4_0.definitions.lowSeverityType" =
        std.contract.Equal "LOW",
      "definitions.metrics.items.properties.cvssV4_0.definitions.mediumScoreType" =
        js2n.Enum
            [
              4,
              4.1,
              4.2,
              4.3,
              4.4,
              4.5,
              4.6,
              4.7,
              4.8,
              4.9,
              5,
              5.1,
              5.2,
              5.3,
              5.4,
              5.5,
              5.6,
              5.7,
              5.8,
              5.9,
              6,
              6.1,
              6.2,
              6.3,
              6.4,
              6.5,
              6.6,
              6.7,
              6.8,
              6.9
            ],
      "definitions.metrics.items.properties.cvssV4_0.definitions.mediumSeverityType" =
        std.contract.Equal "MEDIUM",
      "definitions.metrics.items.properties.cvssV4_0.definitions.modifiedAttackComplexityType" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'NOT_DEFINED, 'LOW, 'HIGH |] ],
      "definitions.metrics.items.properties.cvssV4_0.definitions.modifiedAttackRequirementsType" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'NOT_DEFINED, 'PRESENT, 'NONE |] ],
      "definitions.metrics.items.properties.cvssV4_0.definitions.modifiedAttackVectorType" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [| 'NOT_DEFINED, 'PHYSICAL, 'LOCAL, 'ADJACENT, 'NETWORK |]
            ],
      "definitions.metrics.items.properties.cvssV4_0.definitions.modifiedPrivilegesRequiredType" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'NOT_DEFINED, 'NONE, 'LOW, 'HIGH |] ],
      "definitions.metrics.items.properties.cvssV4_0.definitions.modifiedSubCType" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'NOT_DEFINED, 'HIGH, 'LOW, 'NONE |] ],
      "definitions.metrics.items.properties.cvssV4_0.definitions.modifiedSubIaType" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [| 'NOT_DEFINED, 'SAFETY, 'HIGH, 'LOW, 'NONE |]
            ],
      "definitions.metrics.items.properties.cvssV4_0.definitions.modifiedUserInteractionType" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [| 'NOT_DEFINED, 'ACTIVE, 'PASSIVE, 'NONE |]
            ],
      "definitions.metrics.items.properties.cvssV4_0.definitions.modifiedVulnCiaType" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'NOT_DEFINED, 'HIGH, 'LOW, 'NONE |] ],
      "definitions.metrics.items.properties.cvssV4_0.definitions.noneScoreType" =
        std.contract.Sequence [ js2n.number.Maximum 0, js2n.number.Minimum 0 ],
      "definitions.metrics.items.properties.cvssV4_0.definitions.noneSeverityType" =
        std.contract.Equal "NONE",
      "definitions.metrics.items.properties.cvssV4_0.definitions.privilegesRequiredType" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'NONE, 'LOW, 'HIGH |] ],
      "definitions.metrics.items.properties.cvssV4_0.definitions.providerUrgencyType" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [| 'NOT_DEFINED, 'RED, 'AMBER, 'GREEN, 'CLEAR |]
            ],
      "definitions.metrics.items.properties.cvssV4_0.definitions.recoveryType" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [| 'NOT_DEFINED, 'IRRECOVERABLE, 'USER, 'AUTOMATIC |]
            ],
      "definitions.metrics.items.properties.cvssV4_0.definitions.safetyType" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'NOT_DEFINED, 'PRESENT, 'NEGLIGIBLE |] ],
      "definitions.metrics.items.properties.cvssV4_0.definitions.scoreType" =
        js2n.Enum
            [
              0,
              0.1,
              0.2,
              0.3,
              0.4,
              0.5,
              0.6,
              0.7,
              0.8,
              0.9,
              1,
              1.1,
              1.2,
              1.3,
              1.4,
              1.5,
              1.6,
              1.7,
              1.8,
              1.9,
              2,
              2.1,
              2.2,
              2.3,
              2.4,
              2.5,
              2.6,
              2.7,
              2.8,
              2.9,
              3,
              3.1,
              3.2,
              3.3,
              3.4,
              3.5,
              3.6,
              3.7,
              3.8,
              3.9,
              4,
              4.1,
              4.2,
              4.3,
              4.4,
              4.5,
              4.6,
              4.7,
              4.8,
              4.9,
              5,
              5.1,
              5.2,
              5.3,
              5.4,
              5.5,
              5.6,
              5.7,
              5.8,
              5.9,
              6,
              6.1,
              6.2,
              6.3,
              6.4,
              6.5,
              6.6,
              6.7,
              6.8,
              6.9,
              7,
              7.1,
              7.2,
              7.3,
              7.4,
              7.5,
              7.6,
              7.7,
              7.8,
              7.9,
              8,
              8.1,
              8.2,
              8.3,
              8.4,
              8.5,
              8.6,
              8.7,
              8.8,
              8.9,
              9,
              9.1,
              9.2,
              9.3,
              9.4,
              9.5,
              9.6,
              9.7,
              9.8,
              9.9,
              10
            ],
      "definitions.metrics.items.properties.cvssV4_0.definitions.severityType" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [| 'CRITICAL, 'HIGH, 'MEDIUM, 'LOW, 'NONE |]
            ],
      "definitions.metrics.items.properties.cvssV4_0.definitions.subCiaType" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'HIGH, 'LOW, 'NONE |] ],
      "definitions.metrics.items.properties.cvssV4_0.definitions.userInteractionType" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'ACTIVE, 'PASSIVE, 'NONE |] ],
      "definitions.metrics.items.properties.cvssV4_0.definitions.valueDensityType" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [| 'NOT_DEFINED, 'CONCENTRATED, 'DIFFUSE |]
            ],
      "definitions.metrics.items.properties.cvssV4_0.definitions.vulnCiaType" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'HIGH, 'LOW, 'NONE |] ],
      "definitions.metrics.items.properties.cvssV4_0.definitions.vulnerabilityResponseEffortType" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [| 'NOT_DEFINED, 'HIGH, 'MODERATE, 'LOW |]
            ],
      "definitions.orgId" =
        std.contract.Sequence [ refs."definitions.uuidType", String ],
      "definitions.problemTypes" =
        std.contract.Sequence
            [
              js2n.array.MinItems 1,
              js2n.array.UniqueItems,
              Array
                {
                  descriptions
                    | js2n.array.MinItems 1
                    | js2n.array.UniqueItems
                    | Array
                      {
                        cweId
                          | js2n.string.MaxLength 9
                          | js2n.string.MinLength 5
                          | js2n.string.Matches "^CWE-[1-9][0-9]*$"
                          | doc "CWE ID of the CWE that best describes this problemType entry."
                          | optional,
                        description
                          | js2n.string.MaxLength 4096
                          | js2n.string.MinLength 1
                          | doc "Text description of problemType, or title from CWE or OWASP.",
                        lang | refs."definitions.language" | String,
                        references
                          | refs."definitions.references"
                          | Array Dyn
                          | optional,
                        type
                          | js2n.string.MaxLength 128
                          | js2n.string.MinLength 1
                          | doc "Problemtype source, text, OWASP, CWE, etc.,"
                          | optional,
                      },
                }
            ],
      "definitions.product" =
        std.contract.Sequence
            [
              std.contract.any_of
                [
                  js2n.record.Required [ "product", "vendor" ],
                  js2n.record.Required [ "collectionURL", "packageName" ]
                ],
              std.contract.any_of
                [
                  js2n.record.Required [ "versions" ],
                  js2n.record.Required [ "defaultStatus" ]
                ],
              {
                collectionURL
                  | refs."definitions.uriType"
                  | String
                  | doc "URL identifying a package collection (determines the meaning of packageName)."
                  | optional,
                cpes
                  | js2n.array.UniqueItems
                  | Array (
                    std.contract.Sequence
                      [ refs."definitions.cpe22and23", String ]
                  )
                  | doc "Affected products defined by CPE. This is an array of CPE values (vulnerable and not), we use an array so that we can make multiple statements about the same version and they are separate (if we used a JSON object we'd essentially be keying on the CPE name and they would have to overlap). Also, this allows things like cveDataVersion or cveDescription to be applied directly to the product entry. This also allows more complex statements such as \"Product X between versions 10.2 and 10.8\" to be put in a machine-readable format. As well since multiple statements can be used multiple branches of the same product can be defined here. NOTE: Consider using the newer cpeApplicability block for defining CPE data using the CPE Applicability Language which includes more options for defining CPE Names."
                  | optional,
                defaultStatus
                  | refs."definitions.status"
                  | String
                  | doc "The default status for versions that are not otherwise listed in the versions list. If not specified, defaultStatus defaults to 'unknown'. Versions or defaultStatus may be omitted, but not both."
                  | optional,
                modules
                  | js2n.array.UniqueItems
                  | Array (
                    std.contract.Sequence
                      [ js2n.string.MaxLength 4096, js2n.string.MinLength 1 ]
                  )
                  | doc "A list of the affected components, features, modules, sub-components, sub-products, APIs, commands, utilities, programs, or functionalities (optional)."
                  | optional,
                packageName
                  | js2n.string.MaxLength 2048
                  | js2n.string.MinLength 1
                  | doc "Name or identifier of the affected software package as used in the package collection."
                  | optional,
                platforms
                  | js2n.array.MinItems 1
                  | js2n.array.UniqueItems
                  | Array (js2n.string.MaxLength 1024)
                  | doc "List of specific platforms if the vulnerability is only relevant in the context of these platforms (optional). Platforms may include execution environments, operating systems, virtualization technologies, hardware models, or computing architectures. The lack of this field or an empty array implies that the other fields are applicable to all relevant platforms."
                  | optional,
                product
                  | js2n.string.MaxLength 2048
                  | js2n.string.MinLength 1
                  | doc "Name of the affected product."
                  | optional,
                programFiles
                  | js2n.array.UniqueItems
                  | Array (
                    std.contract.Sequence
                      [ js2n.string.MaxLength 1024, js2n.string.MinLength 1 ]
                  )
                  | doc "A list of the affected source code files (optional)."
                  | optional,
                programRoutines
                  | js2n.array.UniqueItems
                  | Array
                    {
                      name
                        | js2n.string.MaxLength 4096
                        | js2n.string.MinLength 1
                        | doc "Name of the affected source code file, function, method, subroutine, or procedure.",
                    }
                  | doc "A list of the affected source code functions, methods, subroutines, or procedures (optional)."
                  | optional,
                repo
                  | refs."definitions.uriType"
                  | String
                  | doc "The URL of the source code repository, for informational purposes and/or to resolve git hash version ranges."
                  | optional,
                vendor
                  | js2n.string.MaxLength 512
                  | js2n.string.MinLength 1
                  | doc "Name of the organization, project, community, individual, or user that created or maintains this product or hosted service. Can be 'N/A' if none of those apply. When collectionURL and packageName are used, this field may optionally represent the user or account within the package collection associated with the package."
                  | optional,
                versions
                  | js2n.array.MinItems 1
                  | js2n.array.UniqueItems
                  | Array (
                    std.contract.Sequence
                      [
                        js2n.OneOf
                          [
                            std.contract.any_of
                              [
                                js2n.Null,
                                Bool,
                                Number,
                                String,
                                std.contract.Sequence
                                  [
                                    js2n.record.MaxProperties 2,
                                    js2n.record.Required [ "status", "version" ]
                                  ],
                                Array Dyn
                              ],
                            std.contract.any_of
                              [
                                js2n.Null,
                                Bool,
                                Number,
                                String,
                                std.contract.Sequence
                                  [
                                    js2n.record.MaxProperties 3,
                                    js2n.record.Required
                                      [ "status", "version", "versionType" ]
                                  ],
                                Array Dyn
                              ],
                            std.contract.any_of
                              [
                                js2n.Null,
                                Bool,
                                Number,
                                String,
                                js2n.record.Required
                                  [
                                    "lessThan",
                                    "status",
                                    "version",
                                    "versionType"
                                  ],
                                Array Dyn
                              ],
                            std.contract.any_of
                              [
                                js2n.Null,
                                Bool,
                                Number,
                                String,
                                js2n.record.Required
                                  [
                                    "lessThanOrEqual",
                                    "status",
                                    "version",
                                    "versionType"
                                  ],
                                Array Dyn
                              ]
                          ],
                        {
                          changes
                            | js2n.array.MinItems 1
                            | js2n.array.UniqueItems
                            | Array
                              {
                                at
                                  | refs."definitions.version"
                                  | String
                                  | doc "The version at which a status change occurs.",
                                status
                                  | refs."definitions.status"
                                  | String
                                  | doc "The new status in the range starting at the given version.",
                              }
                            | doc "A list of status changes that take place during the range. The array should be sorted in increasing order by the 'at' field, according to the versionType, but clients must re-sort the list themselves rather than assume it is sorted."
                            | optional,
                          lessThan
                            | refs."definitions.version"
                            | String
                            | doc "The non-inclusive upper limit of the range. This is the least version NOT in the range. The usual version syntax is expanded to allow a pattern to end in an asterisk `(*)`, indicating an arbitrarily large number in the version ordering. For example, `{version: 1.0 lessThan: 1.*}` would describe the entire 1.X branch for most range kinds, and `{version: 2.0, lessThan: *}` describes all versions starting at 2.0, including 3.0, 5.1, and so on. Only one of lessThan and lessThanOrEqual should be specified."
                            | optional,
                          lessThanOrEqual
                            | refs."definitions.version"
                            | String
                            | doc "The inclusive upper limit of the range. This is the greatest version contained in the range. Only one of lessThan and lessThanOrEqual should be specified. For example, `{version: 1.0, lessThanOrEqual: 1.3}` covers all versions from 1.0 up to and including 1.3."
                            | optional,
                          status
                            | refs."definitions.status"
                            | String
                            | doc "The vulnerability status for the version or range of versions. For a range, the status may be refined by the 'changes' list."
                            | optional,
                          version
                            | refs."definitions.version"
                            | String
                            | doc "The single version being described, or the version at the start of the range. By convention, typically 0 denotes the earliest possible version."
                            | optional,
                          versionType
                            | js2n.string.MaxLength 128
                            | js2n.string.MinLength 1
                            | doc "The version numbering system used for specifying the range. This defines the exact semantics of the comparison (less-than) operation on versions, which is required to understand the range itself. 'Custom' indicates that the version type is unspecified and should be avoided whenever possible. It is included primarily for use in conversion of older data files."
                            | optional,
                        }
                      ]
                  )
                  | doc "Set of product versions or version ranges related to the vulnerability. The versions satisfy the CNA Rules [8.1.2 requirement](https://cve.mitre.org/cve/cna/rules.html#section_8-1_cve_entry_information_requirements). Versions or defaultStatus may be omitted, but not both."
                  | optional,
                ..
              }
            ],
      "definitions.providerMetadata" =
        {
            dateUpdated
              | refs."definitions.timestamp"
              | String
              | doc "Timestamp to be set by the system of record at time of submission. If dateUpdated is provided to the system of record it will be replaced by the current timestamp at the time of submission."
              | optional,
            orgId
              | refs."definitions.orgId"
              | String
              | doc "The container provider's organizational UUID.",
            shortName
              | refs."definitions.shortName"
              | String
              | doc "The container provider's organizational short name."
              | optional,
          },
      "definitions.reference" =
        {
            name
              | js2n.string.MaxLength 512
              | js2n.string.MinLength 1
              | doc "User created name for the reference, often the title of the page."
              | optional,
            tags
              | js2n.array.MinItems 1
              | js2n.array.UniqueItems
              | Array (
                js2n.OneOf
                  [
                    std.contract.Sequence
                      [ refs."definitions.tagExtension", String ],
                    std.contract.Sequence
                      [
                        std.enum.TagOrString,
                        [|
                          'vdb-entry,
                          'vendor-advisory,
                          'third-party-advisory,
                          'technical-description,
                          'signature,
                          'release-notes,
                          'related,
                          'product,
                          'media-coverage,
                          'permissions-required,
                          'patch,
                          'not-applicable,
                          'mitigation,
                          'mailing-list,
                          'issue-tracking,
                          'government-resource,
                          'exploit,
                          'customer-entitlement,
                          'broken-link
                        |]
                      ]
                  ]
              )
              | doc "An array of one or more tags that describe the resource referenced by 'url'."
              | optional,
            url
              | refs."definitions.uriType"
              | String
              | doc "The uniform resource locator (URL), according to [RFC 3986](https://tools.ietf.org/html/rfc3986#section-1.1.3), that can be used to retrieve the referenced resource.",
          },
      "definitions.references" =
        std.contract.Sequence
            [
              js2n.array.MaxItems 512,
              js2n.array.MinItems 1,
              js2n.array.UniqueItems,
              Array (
                std.contract.Sequence
                  [ refs."definitions.reference", { _ | Dyn } ]
              )
            ],
      "definitions.shortName" =
        std.contract.Sequence
            [ js2n.string.MaxLength 32, js2n.string.MinLength 2 ],
      "definitions.solutions" =
        std.contract.Sequence
            [
              js2n.array.MinItems 1,
              js2n.array.UniqueItems,
              Array (
                std.contract.Sequence
                  [ refs."definitions.description", { _ | Dyn } ]
              )
            ],
      "definitions.source" = js2n.record.MinProperties 1,
      "definitions.status" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'unknown, 'unaffected, 'affected |] ],
      "definitions.tagExtension" =
        std.contract.Sequence
            [
              js2n.string.MaxLength 128,
              js2n.string.MinLength 2,
              js2n.string.Matches "^x_.*$"
            ],
      "definitions.taxonomyMappings" =
        std.contract.Sequence
            [
              js2n.array.MinItems 1,
              js2n.array.UniqueItems,
              Array
                {
                  taxonomyName
                    | js2n.string.MaxLength 128
                    | js2n.string.MinLength 1
                    | doc "The name of the taxonomy, eg., ATT&CK, D3FEND, CWE, CVSS",
                  taxonomyRelations
                    | js2n.array.MinItems 1
                    | js2n.array.UniqueItems
                    | Array
                      {
                        relationshipName
                          | js2n.string.MaxLength 128
                          | js2n.string.MinLength 1
                          | doc "A description of the relationship.",
                        relationshipValue
                          | js2n.string.MaxLength 2048
                          | js2n.string.MinLength 1
                          | doc "The target of the relationship.  Can be the CVE ID or another taxonomy identifier.",
                        taxonomyId
                          | js2n.string.MaxLength 2048
                          | js2n.string.MinLength 1
                          | doc "Identifier of the item in the taxonomy.  Used as the subject of the relationship.",
                      }
                    | doc "List of relationships to the taxonomy for the vulnerability.",
                  taxonomyVersion
                    | js2n.string.MaxLength 128
                    | js2n.string.MinLength 1
                    | doc "The version of taxonomy the identifiers come from."
                    | optional,
                }
            ],
      "definitions.timeline" =
        std.contract.Sequence
            [
              js2n.array.MinItems 1,
              js2n.array.UniqueItems,
              Array
                {
                  lang
                    | refs."definitions.language"
                    | String
                    | doc "The language used in the description of the event. The language field is included so that CVE Records can support translations. The value must be a BCP 47 language code.",
                  time
                    | refs."definitions.timestamp"
                    | String
                    | doc "Timestamp representing when the event in the timeline occurred. The timestamp format is based on RFC3339 and ISO ISO8601, with an optional timezone. yyyy-MM-ddTHH:mm:ss[+-]ZH:ZM - if the timezone offset is not given, GMT (+00:00) is assumed.",
                  value
                    | js2n.string.MaxLength 4096
                    | js2n.string.MinLength 1
                    | doc "A summary of the event.",
                }
            ],
      "definitions.timestamp" =
        js2n.string.Matches
            "^(((2000|2400|2800|(19|2[0-9](0[48]|[2468][048]|[13579][26])))-02-29)|(((19|2[0-9])[0-9]{2})-02-(0[1-9]|1[0-9]|2[0-8]))|(((19|2[0-9])[0-9]{2})-(0[13578]|10|12)-(0[1-9]|[12][0-9]|3[01]))|(((19|2[0-9])[0-9]{2})-(0[469]|11)-(0[1-9]|[12][0-9]|30)))T(2[0-3]|[01][0-9]):([0-5][0-9]):([0-5][0-9])(\\.[0-9]+)?(Z|[+-][0-9]{2}:[0-9]{2})?$",
      "definitions.uriType" =
        std.contract.Sequence
            [ js2n.string.MaxLength 2048, js2n.string.MinLength 1 ],
      "definitions.userId" =
        std.contract.Sequence [ refs."definitions.uuidType", String ],
      "definitions.uuidType" =
        js2n.string.Matches
            "^[0-9A-Fa-f]{8}-[0-9A-Fa-f]{4}-4[0-9A-Fa-f]{3}-[89ABab][0-9A-Fa-f]{3}-[0-9A-Fa-f]{12}$",
      "definitions.version" =
        std.contract.Sequence
            [ js2n.string.MaxLength 1024, js2n.string.MinLength 1 ],
      "definitions.workarounds" =
        std.contract.Sequence
            [
              js2n.array.MinItems 1,
              js2n.array.UniqueItems,
              Array (
                std.contract.Sequence
                  [ refs."definitions.description", { _ | Dyn } ]
              )
            ],
    }
    in
  js2n.OneOf
      [
        js2n.record.Record
          {
            additional = 'None,
            patterns = {},
            properties =
              {
                  containers =
                    js2n.record.Record
                        {
                          additional = 'None,
                          patterns = {},
                          properties =
                            {
                                adp =
                                  std.contract.Sequence
                                      [
                                        js2n.array.MinItems 1,
                                        js2n.array.UniqueItems,
                                        js2n.array.ArrayOf
                                          (std.contract.Sequence
                                            [
                                              refs."definitions.adpContainer",
                                              { _ | Dyn }
                                            ])
                                      ],
                                cna = refs."definitions.cnaPublishedContainer",
                              },
                          required = { cna = true, },
                        },
                  cveMetadata = refs."definitions.cveMetadataPublished",
                  dataType = refs."definitions.dataType",
                  dataVersion = refs."definitions.dataVersion",
                },
            required =
              {
                  containers = true,
                  cveMetadata = true,
                  dataType = true,
                  dataVersion = true,
                },
          },
        js2n.record.Record
          {
            additional = 'None,
            patterns = {},
            properties =
              {
                  containers =
                    js2n.record.Record
                        {
                          additional = 'None,
                          patterns = {},
                          properties =
                            { cna = refs."definitions.cnaRejectedContainer", },
                          required = { cna = true, },
                        },
                  cveMetadata = refs."definitions.cveMetadataRejected",
                  dataType = refs."definitions.dataType",
                  dataVersion = refs."definitions.dataVersion",
                },
            required =
              {
                  containers = true,
                  cveMetadata = true,
                  dataType = true,
                  dataVersion = true,
                },
          }
      ]