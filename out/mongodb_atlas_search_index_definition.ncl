# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.CharFilter" =
        std.contract.Sequence
            [
              js2n.record.DependentContracts
                {
                  ignoredTags =
                    std.contract.any_of
                        [
                          js2n.Null,
                          Bool,
                          Number,
                          String,
                          {
                            type
                              | std.enum.TagOrString
                              | [| 'htmlStrip |]
                              | optional,
                            ..
                          },
                          Array Dyn
                        ],
                },
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
                        properties = { type = js2n.Const "mapping", },
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
                    { mappings | { _ | Dyn }, .. },
                    Array Dyn
                  ]) js2n.Always,
              {
                ignoredTags
                  | Array String
                  | doc "List that contains the HTML tags to exclude from filtering."
                  | optional,
                type
                  | std.enum.TagOrString
                  | [| 'persian, 'mapping, 'icuNormalize, 'htmlStrip |]
                  | doc "Human-readable label that identifies this character filter type.",
              }
            ],
      "definitions.CustomAnalyzer" =
        {
            charFilters
              | Array (
                std.contract.Sequence
                  [ refs."definitions.CharFilter", { _ | Dyn } ]
              )
              | doc "Array containing zero or more character filters."
              | optional,
            name
              | js2n.string.Matches "^(?!^lucene\\.|builtin\\.|mongodb\\.).*"
              | doc m%"
                Name of the custom analyzer.
                Names must be unique within an index, and may not start with any of the following strings:
                - lucene.
                - builtin.
                - mongodb.
              "%,
            tokenFilters
              | Array (
                std.contract.Sequence
                  [ refs."definitions.TokenFilter", { _ | Dyn } ]
              )
              | doc "Array containing zero or more token filters."
              | optional,
            tokenizer | refs."definitions.Tokenizer" | { _ | Dyn },
          },
      "definitions.Mappings" =
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
                      js2n.record.Record
                        {
                          additional = 'None,
                          patterns = {},
                          properties = { dynamic = js2n.Const true, },
                          required = {},
                        },
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Record
                        {
                          additional = 'None,
                          patterns = {},
                          properties =
                            {
                                dynamic = Bool,
                                fields =
                                  js2n.record.Record
                                      {
                                        additional = 'Some Dyn,
                                        patterns =
                                          {
                                              "^.*$" =
                                                std.contract.any_of
                                                    [
                                                      std.contract.Sequence
                                                        [
                                                          refs."definitions.MappingsField",
                                                          { _ | Dyn }
                                                        ],
                                                      js2n.array.ArrayOf
                                                        (std.contract.Sequence
                                                          [
                                                            refs."definitions.MappingsField",
                                                            { _ | Dyn }
                                                          ])
                                                    ],
                                            },
                                        properties = {},
                                        required = {},
                                      },
                              },
                          required = { fields = true, },
                        },
                      Array Dyn
                    ]
                ],
              { _ | Dyn }
            ],
      "definitions.MappingsField" =
        std.contract.Sequence
            [
              js2n.record.DependentContracts
                {
                  analyzer =
                    std.contract.any_of
                        [
                          js2n.Null,
                          Bool,
                          Number,
                          String,
                          {
                            type
                              | std.enum.TagOrString
                              | [| 'string, 'autocomplete |]
                              | optional,
                            ..
                          },
                          Array Dyn
                        ],
                  dynamic =
                    std.contract.any_of
                        [
                          js2n.Null,
                          Bool,
                          Number,
                          String,
                          {
                            type
                              | std.enum.TagOrString
                              | [| 'embeddedDocuments, 'document |]
                              | optional,
                            ..
                          },
                          Array Dyn
                        ],
                  fields =
                    std.contract.any_of
                        [
                          js2n.Null,
                          Bool,
                          Number,
                          String,
                          {
                            type
                              | std.enum.TagOrString
                              | [| 'embeddedDocuments, 'document |]
                              | optional,
                            ..
                          },
                          Array Dyn
                        ],
                  foldDiacritics =
                    std.contract.any_of
                        [
                          js2n.Null,
                          Bool,
                          Number,
                          String,
                          {
                            type
                              | std.enum.TagOrString
                              | [| 'autocomplete |]
                              | optional,
                            ..
                          },
                          Array Dyn
                        ],
                  ignoreAbove =
                    std.contract.any_of
                        [
                          js2n.Null,
                          Bool,
                          Number,
                          String,
                          {
                            type
                              | std.enum.TagOrString
                              | [| 'string |]
                              | optional,
                            ..
                          },
                          Array Dyn
                        ],
                  indexDoubles =
                    std.contract.any_of
                        [
                          js2n.Null,
                          Bool,
                          Number,
                          String,
                          {
                            type
                              | std.enum.TagOrString
                              | [| 'numberFacet, 'number |]
                              | optional,
                            ..
                          },
                          Array Dyn
                        ],
                  indexIntegers =
                    std.contract.any_of
                        [
                          js2n.Null,
                          Bool,
                          Number,
                          String,
                          {
                            type
                              | std.enum.TagOrString
                              | [| 'numberFacet, 'number |]
                              | optional,
                            ..
                          },
                          Array Dyn
                        ],
                  indexOptions =
                    std.contract.any_of
                        [
                          js2n.Null,
                          Bool,
                          Number,
                          String,
                          {
                            type
                              | std.enum.TagOrString
                              | [| 'string |]
                              | optional,
                            ..
                          },
                          Array Dyn
                        ],
                  indexShapes =
                    std.contract.any_of
                        [
                          js2n.Null,
                          Bool,
                          Number,
                          String,
                          {
                            type | std.enum.TagOrString | [| 'geo |] | optional,
                            ..
                          },
                          Array Dyn
                        ],
                  maxGrams =
                    std.contract.any_of
                        [
                          js2n.Null,
                          Bool,
                          Number,
                          String,
                          {
                            type
                              | std.enum.TagOrString
                              | [| 'autocomplete |]
                              | optional,
                            ..
                          },
                          Array Dyn
                        ],
                  minGrams =
                    std.contract.any_of
                        [
                          js2n.Null,
                          Bool,
                          Number,
                          String,
                          {
                            type
                              | std.enum.TagOrString
                              | [| 'autocomplete |]
                              | optional,
                            ..
                          },
                          Array Dyn
                        ],
                  multi =
                    std.contract.any_of
                        [
                          js2n.Null,
                          Bool,
                          Number,
                          String,
                          {
                            type
                              | std.enum.TagOrString
                              | [| 'string |]
                              | optional,
                            ..
                          },
                          Array Dyn
                        ],
                  norms =
                    std.contract.any_of
                        [
                          js2n.Null,
                          Bool,
                          Number,
                          String,
                          {
                            type
                              | std.enum.TagOrString
                              | [| 'string |]
                              | optional,
                            ..
                          },
                          Array Dyn
                        ],
                  representation =
                    std.contract.any_of
                        [
                          js2n.Null,
                          Bool,
                          Number,
                          String,
                          {
                            type
                              | std.enum.TagOrString
                              | [| 'numberFacet, 'number |]
                              | optional,
                            ..
                          },
                          Array Dyn
                        ],
                  searchAnalyzer =
                    std.contract.any_of
                        [
                          js2n.Null,
                          Bool,
                          Number,
                          String,
                          {
                            type
                              | std.enum.TagOrString
                              | [| 'string |]
                              | optional,
                            ..
                          },
                          Array Dyn
                        ],
                  store =
                    std.contract.any_of
                        [
                          js2n.Null,
                          Bool,
                          Number,
                          String,
                          {
                            type
                              | std.enum.TagOrString
                              | [| 'string |]
                              | optional,
                            ..
                          },
                          Array Dyn
                        ],
                  tokenization =
                    std.contract.any_of
                        [
                          js2n.Null,
                          Bool,
                          Number,
                          String,
                          {
                            type
                              | std.enum.TagOrString
                              | [| 'autocomplete |]
                              | optional,
                            ..
                          },
                          Array Dyn
                        ],
                },
              {
                analyzer | String | optional,
                dynamic | Bool | optional,
                fields | { _ | Dyn } | optional,
                foldDiacritics | Bool | optional,
                ignoreAbove | std.number.Integer | optional,
                indexDoubles | Bool | optional,
                indexIntegers | Bool | optional,
                indexOptions
                  | std.enum.TagOrString
                  | [| 'offsets, 'positions, 'freqs, 'docs |]
                  | optional,
                indexShapes | Bool | optional,
                maxGrams | std.number.Integer | optional,
                minGrams | std.number.Integer | optional,
                multi
                  | {
                    analyzer | String | optional,
                    type | std.enum.TagOrString | [| 'string |] | optional,
                    ..
                  }
                  | optional,
                norms | std.enum.TagOrString | [| 'omit, 'include |] | optional,
                representation
                  | std.enum.TagOrString
                  | [| 'double, 'int64 |]
                  | optional,
                searchAnalyzer | String | optional,
                store | Bool | optional,
                tokenization
                  | std.enum.TagOrString
                  | [| 'nGram, 'rightEdgeGram, 'edgeGram |]
                  | optional,
                type
                  | std.enum.TagOrString
                  | [|
                    'uuid,
                    'token,
                    'stringFacet,
                    'string,
                    'objectId,
                    'numberFacet,
                    'number,
                    'geo,
                    'embeddedDocuments,
                    'document,
                    'dateFacet,
                    'date,
                    'boolean,
                    'autocomplete
                  |]
                  | optional,
              }
            ],
      "definitions.StoredSource" =
        std.contract.any_of
            [
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        exclude = js2n.array.ArrayOf String,
                        include = js2n.array.ArrayOf String,
                      },
                  required = { include = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        exclude = js2n.array.ArrayOf String,
                        include = js2n.array.ArrayOf String,
                      },
                  required = { exclude = true, },
                }
            ],
      "definitions.Synonym" =
        {
            analyzer
              | std.enum.TagOrString
              | [|
                'shingle,
                'daitchMokotoffSoundex,
                'edgeGram,
                'nGram,
                '"lucene.ukrainian",
                '"lucene.turkish",
                '"lucene.thai",
                '"lucene.swedish",
                '"lucene.spanish",
                '"lucene.sorani",
                '"lucene.smartcn",
                '"lucene.russian",
                '"lucene.romanian",
                '"lucene.portuguese",
                '"lucene.persian",
                '"lucene.norwegian",
                '"lucene.nori",
                '"lucene.morfologik",
                '"lucene.lithuanian",
                '"lucene.latvian",
                '"lucene.korean",
                '"lucene.japanese",
                '"lucene.italian",
                '"lucene.irish",
                '"lucene.indonesian",
                '"lucene.hungarian",
                '"lucene.hindi",
                '"lucene.greek",
                '"lucene.german",
                '"lucene.galician",
                '"lucene.french",
                '"lucene.finnish",
                '"lucene.english",
                '"lucene.dutch",
                '"lucene.danish",
                '"lucene.czech",
                '"lucene.cjk",
                '"lucene.chinese",
                '"lucene.catalan",
                '"lucene.bulgarian",
                '"lucene.brazilian",
                '"lucene.bengali",
                '"lucene.basque",
                '"lucene.armenian",
                '"lucene.arabic",
                '"lucene.keyword",
                '"lucene.whitespace",
                '"lucene.simple",
                '"lucene.standard"
              |]
              | optional,
            name | String | optional,
            source | { collection | String | optional, .. } | optional,
          },
      "definitions.TokenFilter" =
        {
            type
              | std.enum.TagOrString
              | [|
                'trim,
                'stopword,
                'snowballStemming,
                'shingle,
                'reverse,
                'regex,
                'nGram,
                'lowercase,
                'length,
                'icuNormalizer,
                'icuFolding,
                'edgeGram,
                'daitchMokotoffSoundex,
                'asciiFolding
              |]
              | doc "Human-readable label that identifies this token filter type.",
          },
      "definitions.Tokenizer" =
        {
            type
              | std.enum.TagOrString
              | [|
                'whitespace,
                'uaxUrlEmail,
                'standard,
                'regexSplit,
                'regexCaptureGroup,
                'nGram,
                'keyword,
                'edgeGram
              |],
          },
    }
    in
  {
      analyzer
        | String
        | doc m%"
          Specifies the analyzer to apply to string fields when indexing.
          If you set this only at the top and do not specify an analyzer for the fields in the index definition, Atlas Search applies this analyzer to all the fields.
          To use a different analyzer for each field, you must specify a different analyzer for the field.
          If omitted, defaults to Standard Analyzer.
        "%
        | optional,
      analyzers
        | Array refs."definitions.CustomAnalyzer"
        | doc "Specifies the Custom Analyzers to use in this index."
        | optional,
      mappings | refs."definitions.Mappings" | { _ | Dyn },
      name
        | String
        | doc m%"
          Specifies a name for the index. In each namespace, names of all indexes in the namespace must be unique.
          If omitted, defaults to default.
        "%
        | optional,
      searchAnalyzer
        | String
        | doc m%"
          Specifies the analyzer to apply to query text before searching with it.
          If omitted, defaults to Standard Analyzer.
        "%
        | optional,
      storedSource
        | std.contract.any_of [ Bool, refs."definitions.StoredSource" ]
        | doc m%"
          Specifies fields in the documents to store for query-time look-ups using the returnedStoredSource option.
          You can store fields of all BSON Data Types on Atlas Search.
          
          Value can be one of the following:
          true, to store all fields
          false, to not store any fields
          Object that specifies the fields to include or exclude from storage
          
          If omitted, defaults to false.
        "%
        | optional,
      synonyms
        | Array refs."definitions.Synonym"
        | doc "Synonym mappings to use in your index."
        | optional,
    }