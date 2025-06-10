# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "properties.request.properties.bodyPatterns.items" =
        std.contract.Sequence
            [
              js2n.OneOf
                [
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        { caseInsensitive = Bool, equalTo = String, },
                      required = { equalTo = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            binaryEqualTo =
                              std.contract.Sequence
                                  [
                                    refs."properties.response.allOf.0.properties.base64Body",
                                    String
                                  ],
                          },
                      required = { binaryEqualTo = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { contains = String, },
                      required = { contains = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { doesNotContain = String, },
                      required = { doesNotContain = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { matches = String, },
                      required = { matches = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { doesNotMatch = String, },
                      required = { doesNotMatch = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            not =
                              std.contract.Sequence
                                  [ js2n.Always, { _ | Dyn } ],
                          },
                      required = { not = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            actualFormat = js2n.Always,
                            before = js2n.Always,
                            truncateActual = js2n.Always,
                            truncateExpected = js2n.Always,
                          },
                      required = { before = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            actualFormat = js2n.Always,
                            after = js2n.Always,
                            truncateActual = js2n.Always,
                            truncateExpected = js2n.Always,
                          },
                      required = { after = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            actualFormat = js2n.Always,
                            equalToDateTime = js2n.Always,
                            truncateActual = js2n.Always,
                            truncateExpected = js2n.Always,
                          },
                      required = { equalToDateTime = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            equalToJson = { _ | Dyn },
                            ignoreArrayOrder = Bool,
                            ignoreExtraElements = Bool,
                          },
                      required = { equalToJson = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            matchesJsonPath =
                              std.contract.any_of
                                  [
                                    String,
                                    std.contract.Sequence
                                      [
                                        js2n.Always,
                                        js2n.record.Record
                                          {
                                            additional = 'Some Dyn,
                                            patterns = {},
                                            properties =
                                              { expression = String, },
                                            required = { expression = true, },
                                          }
                                      ]
                                  ],
                          },
                      required = { matchesJsonPath = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            enablePlaceholders = Bool,
                            equalToXml = String,
                            placeholderClosingDelimiterRegex = String,
                            placeholderOpeningDelimiterRegex = String,
                          },
                      required = { equalToXml = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            matchesXPath =
                              std.contract.any_of
                                  [
                                    String,
                                    std.contract.Sequence
                                      [
                                        js2n.Always,
                                        js2n.record.Record
                                          {
                                            additional = 'Some Dyn,
                                            patterns = {},
                                            properties =
                                              { expression = String, },
                                            required = { expression = true, },
                                          }
                                      ]
                                  ],
                            xPathNamespaces =
                              js2n.record.Record
                                  {
                                    additional = 'Some String,
                                    patterns = {},
                                    properties = {},
                                    required = {},
                                  },
                          },
                      required = { matchesXPath = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            matchesJsonSchema =
                              std.contract.any_of
                                  [
                                    String,
                                    std.contract.Sequence
                                      [
                                        js2n.Always,
                                        js2n.record.Record
                                          {
                                            additional = 'Some Dyn,
                                            patterns = {},
                                            properties =
                                              { expression = String, },
                                            required = { expression = true, },
                                          }
                                      ]
                                  ],
                            xPathNamespaces =
                              js2n.record.Record
                                  {
                                    additional = 'Some String,
                                    patterns = {},
                                    properties = {},
                                    required = {},
                                  },
                          },
                      required = { matchesJsonSchema = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { absent = Bool, },
                      required = { absent = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            and =
                              js2n.array.ArrayOf
                                  (std.contract.Sequence
                                    [ js2n.Always, { _ | Dyn } ]),
                          },
                      required = { and = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            or =
                              js2n.array.ArrayOf
                                  (std.contract.Sequence
                                    [ js2n.Always, { _ | Dyn } ]),
                          },
                      required = { or = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            hasExactly =
                              js2n.array.ArrayOf
                                  (std.contract.Sequence
                                    [ js2n.Always, { _ | Dyn } ]),
                          },
                      required = { hasExactly = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            includes =
                              js2n.array.ArrayOf
                                  (std.contract.Sequence
                                    [ js2n.Always, { _ | Dyn } ]),
                          },
                      required = { includes = true, },
                    }
                ],
              { _ | Dyn }
            ],
      "properties.response.allOf.0.properties.base64Body" =
        js2n.string.Matches
            "^(?:[A-Za-z0-9+/]{4})*(?:[A-Za-z0-9+/]{2}==|[A-Za-z0-9+/]{3}=)?$",
    }
    in
  {
      id | String | doc "This stub mapping's unique identifier" | optional,
      metadata
        | { _ | Dyn }
        | doc "Arbitrary metadata to be used for e.g. tagging, documentation. Can also be used to find and remove stubs."
        | optional,
      name | String | doc "The stub mapping's name" | optional,
      newScenarioState
        | String
        | doc "The new state for the scenario to be updated to after this stub is served."
        | optional,
      persistent
        | Bool
        | doc "Indicates that the stub mapping should be persisted immediately on create/update/delete and survive resets to default."
        | optional,
      postServeActions
        | { _ | Dyn }
        | doc "A map of the names of post serve action extensions to trigger and their parameters."
        | optional,
      "priority"
        | std.number.Integer
        | js2n.number.Minimum 1
        | doc "This stub mapping's priority relative to others. 1 is highest."
        | optional,
      request
        | {
          basicAuthCredentials
            | { password | String, username | String, .. }
            | doc "Preemptive basic auth credentials to match against"
            | optional,
          bodyPatterns
            | Array (
              std.contract.Sequence
                [
                  js2n.OneOf
                    [
                      js2n.record.Record
                        {
                          additional = 'Some Dyn,
                          patterns = {},
                          properties =
                            { caseInsensitive = Bool, equalTo = String, },
                          required = { equalTo = true, },
                        },
                      js2n.record.Record
                        {
                          additional = 'Some Dyn,
                          patterns = {},
                          properties =
                            {
                                binaryEqualTo =
                                  refs."properties.response.allOf.0.properties.base64Body",
                              },
                          required = { binaryEqualTo = true, },
                        },
                      js2n.record.Record
                        {
                          additional = 'Some Dyn,
                          patterns = {},
                          properties = { contains = String, },
                          required = { contains = true, },
                        },
                      js2n.record.Record
                        {
                          additional = 'Some Dyn,
                          patterns = {},
                          properties = { doesNotContain = String, },
                          required = { doesNotContain = true, },
                        },
                      js2n.record.Record
                        {
                          additional = 'Some Dyn,
                          patterns = {},
                          properties = { matches = String, },
                          required = { matches = true, },
                        },
                      js2n.record.Record
                        {
                          additional = 'Some Dyn,
                          patterns = {},
                          properties = { doesNotMatch = String, },
                          required = { doesNotMatch = true, },
                        },
                      js2n.record.Record
                        {
                          additional = 'Some Dyn,
                          patterns = {},
                          properties =
                            {
                                not =
                                  std.contract.Sequence
                                      [
                                        refs."properties.request.properties.bodyPatterns.items",
                                        { _ | Dyn }
                                      ],
                              },
                          required = { not = true, },
                        },
                      js2n.record.Record
                        {
                          additional = 'Some Dyn,
                          patterns = {},
                          properties =
                            {
                                actualFormat =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                before =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                truncateActual =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                truncateExpected =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                              },
                          required = { before = true, },
                        },
                      js2n.record.Record
                        {
                          additional = 'Some Dyn,
                          patterns = {},
                          properties =
                            {
                                actualFormat =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                after =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                truncateActual =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                truncateExpected =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                              },
                          required = { after = true, },
                        },
                      js2n.record.Record
                        {
                          additional = 'Some Dyn,
                          patterns = {},
                          properties =
                            {
                                actualFormat =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                equalToDateTime =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                truncateActual =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                truncateExpected =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                              },
                          required = { equalToDateTime = true, },
                        },
                      js2n.record.Record
                        {
                          additional = 'Some Dyn,
                          patterns = {},
                          properties =
                            {
                                equalToJson = { _ | Dyn },
                                ignoreArrayOrder = Bool,
                                ignoreExtraElements = Bool,
                              },
                          required = { equalToJson = true, },
                        },
                      js2n.record.Record
                        {
                          additional = 'Some Dyn,
                          patterns = {},
                          properties =
                            {
                                matchesJsonPath =
                                  std.contract.any_of
                                      [
                                        String,
                                        std.contract.Sequence
                                          [
                                            refs."properties.request.properties.bodyPatterns.items",
                                            js2n.record.Record
                                              {
                                                additional = 'Some Dyn,
                                                patterns = {},
                                                properties =
                                                  { expression = String, },
                                                required =
                                                  { expression = true, },
                                              }
                                          ]
                                      ],
                              },
                          required = { matchesJsonPath = true, },
                        },
                      js2n.record.Record
                        {
                          additional = 'Some Dyn,
                          patterns = {},
                          properties =
                            {
                                enablePlaceholders = Bool,
                                equalToXml = String,
                                placeholderClosingDelimiterRegex = String,
                                placeholderOpeningDelimiterRegex = String,
                              },
                          required = { equalToXml = true, },
                        },
                      js2n.record.Record
                        {
                          additional = 'Some Dyn,
                          patterns = {},
                          properties =
                            {
                                matchesXPath =
                                  std.contract.any_of
                                      [
                                        String,
                                        std.contract.Sequence
                                          [
                                            refs."properties.request.properties.bodyPatterns.items",
                                            js2n.record.Record
                                              {
                                                additional = 'Some Dyn,
                                                patterns = {},
                                                properties =
                                                  { expression = String, },
                                                required =
                                                  { expression = true, },
                                              }
                                          ]
                                      ],
                                xPathNamespaces =
                                  js2n.record.Record
                                      {
                                        additional = 'Some String,
                                        patterns = {},
                                        properties = {},
                                        required = {},
                                      },
                              },
                          required = { matchesXPath = true, },
                        },
                      js2n.record.Record
                        {
                          additional = 'Some Dyn,
                          patterns = {},
                          properties =
                            {
                                matchesJsonSchema =
                                  std.contract.any_of
                                      [
                                        String,
                                        std.contract.Sequence
                                          [
                                            refs."properties.request.properties.bodyPatterns.items",
                                            js2n.record.Record
                                              {
                                                additional = 'Some Dyn,
                                                patterns = {},
                                                properties =
                                                  { expression = String, },
                                                required =
                                                  { expression = true, },
                                              }
                                          ]
                                      ],
                                xPathNamespaces =
                                  js2n.record.Record
                                      {
                                        additional = 'Some String,
                                        patterns = {},
                                        properties = {},
                                        required = {},
                                      },
                              },
                          required = { matchesJsonSchema = true, },
                        },
                      js2n.record.Record
                        {
                          additional = 'Some Dyn,
                          patterns = {},
                          properties = { absent = Bool, },
                          required = { absent = true, },
                        },
                      js2n.record.Record
                        {
                          additional = 'Some Dyn,
                          patterns = {},
                          properties =
                            {
                                and =
                                  js2n.array.ArrayOf
                                      (std.contract.Sequence
                                        [
                                          refs."properties.request.properties.bodyPatterns.items",
                                          { _ | Dyn }
                                        ]),
                              },
                          required = { and = true, },
                        },
                      js2n.record.Record
                        {
                          additional = 'Some Dyn,
                          patterns = {},
                          properties =
                            {
                                or =
                                  js2n.array.ArrayOf
                                      (std.contract.Sequence
                                        [
                                          refs."properties.request.properties.bodyPatterns.items",
                                          { _ | Dyn }
                                        ]),
                              },
                          required = { or = true, },
                        },
                      js2n.record.Record
                        {
                          additional = 'Some Dyn,
                          patterns = {},
                          properties =
                            {
                                hasExactly =
                                  js2n.array.ArrayOf
                                      (std.contract.Sequence
                                        [
                                          refs."properties.request.properties.bodyPatterns.items",
                                          { _ | Dyn }
                                        ]),
                              },
                          required = { hasExactly = true, },
                        },
                      js2n.record.Record
                        {
                          additional = 'Some Dyn,
                          patterns = {},
                          properties =
                            {
                                includes =
                                  js2n.array.ArrayOf
                                      (std.contract.Sequence
                                        [
                                          refs."properties.request.properties.bodyPatterns.items",
                                          { _ | Dyn }
                                        ]),
                              },
                          required = { includes = true, },
                        }
                    ],
                  { _ | Dyn }
                ]
            )
            | doc "Request body patterns to match against in the <key>: { \"<predicate>\": \"<value>\" } form"
            | optional,
          cookies
            | {
              _ | std.contract.Sequence
                [
                  refs."properties.request.properties.bodyPatterns.items",
                  { _ | Dyn }
                ]
            }
            | doc "Cookie patterns to match against in the <key>: { \"<predicate>\": \"<value>\" } form"
            | optional,
          customMatcher
            | {
              name
                | String
                | doc "The matcher's name specified in the implementation of the matcher."
                | optional,
              parameters | { _ | Dyn } | optional,
              ..
            }
            | doc "Custom request matcher to match against"
            | optional,
          formParameters
            | {
              _ | std.contract.Sequence
                [
                  refs."properties.request.properties.bodyPatterns.items",
                  { _ | Dyn }
                ]
            }
            | doc "application/x-www-form-urlencoded form parameter patterns to match against in the <key>: { \"<predicate>\": \"<value>\" } form"
            | optional,
          headers
            | {
              _ | std.contract.Sequence
                [
                  refs."properties.request.properties.bodyPatterns.items",
                  { _ | Dyn }
                ]
            }
            | doc "Header patterns to match against in the <key>: { \"<predicate>\": \"<value>\" } form"
            | optional,
          host | String | doc "The hostname part of the request URL" | optional,
          method
            | js2n.string.Matches "^[A-Z]+$"
            | doc "The HTTP request method e.g. GET"
            | optional,
          multipartPatterns
            | Array
              {
                bodyPatterns
                  | Array (
                    std.contract.Sequence
                      [
                        refs."properties.request.properties.bodyPatterns.items",
                        { _ | Dyn }
                      ]
                  )
                  | doc "Body patterns to match against in the <key>: { \"<predicate>\": \"<value>\" } form"
                  | optional,
                headers
                  | {
                    _ | std.contract.Sequence
                      [
                        refs."properties.request.properties.bodyPatterns.items",
                        { _ | Dyn }
                      ]
                  }
                  | doc "Header patterns to match against in the <key>: { \"<predicate>\": \"<value>\" } form"
                  | optional,
                matchingType
                  | std.enum.TagOrString
                  | [| 'ANY, 'ALL |]
                  | doc "Determines whether all or any of the parts must match the criteria for an overall match."
                  | optional,
                name | String | optional,
                ..
              }
            | doc "Multipart patterns to match against headers and body."
            | optional,
          pathParameters
            | {
              _ | std.contract.Sequence
                [
                  refs."properties.request.properties.bodyPatterns.items",
                  { _ | Dyn }
                ]
            }
            | doc m%"
              Path parameter patterns to match against in the <key>: { "<predicate>": "<value>" } form. Can only
              be used when the urlPathPattern URL match type is in use and all keys must be present as variables
              in the path template.
              
            "%
            | optional,
          port
            | std.number.Integer
            | js2n.number.Maximum 65535
            | js2n.number.Minimum 1
            | doc "The HTTP port number of the request URL"
            | optional,
          queryParameters
            | {
              _ | std.contract.Sequence
                [
                  refs."properties.request.properties.bodyPatterns.items",
                  { _ | Dyn }
                ]
            }
            | doc "Query parameter patterns to match against in the <key>: { \"<predicate>\": \"<value>\" } form"
            | optional,
          scheme
            | std.enum.TagOrString
            | [| 'https, 'http |]
            | doc "The scheme (protocol) part of the request URL"
            | optional,
          url
            | String
            | doc "The path and query to match exactly against. Only one of url, urlPattern, urlPath or urlPathPattern may be specified."
            | optional,
          urlPath
            | String
            | doc "The path to match exactly against. Only one of url, urlPattern, urlPath or urlPathPattern may be specified."
            | optional,
          urlPathPattern
            | String
            | doc "The path regex to match against. Only one of url, urlPattern, urlPath or urlPathPattern may be specified."
            | optional,
          urlPattern
            | String
            | doc "The path and query regex to match against. Only one of url, urlPattern, urlPath or urlPathPattern may be specified."
            | optional,
          ..
        }
        | optional,
      requiredScenarioState
        | String
        | doc "The required state of the scenario in order for this stub to be matched."
        | optional,
      response
        | {
          additionalProxyRequestHeaders
            | { _ | String }
            | doc "Extra request headers to send when proxying to another host."
            | optional,
          base64Body
            | js2n.string.Matches
              "^(?:[A-Za-z0-9+/]{4})*(?:[A-Za-z0-9+/]{2}==|[A-Za-z0-9+/]{3}=)?$"
            | doc "A base64 encoded string used to describe binary data."
            | optional,
          body
            | String
            | doc "The response body as a string. Only one of body, base64Body, jsonBody or bodyFileName may be specified."
            | optional,
          bodyFileName
            | String
            | doc "The path to the file containing the response body, relative to the configured file root. Only one of body, base64Body, jsonBody or bodyFileName may be specified."
            | optional,
          chunkedDribbleDelay
            | {
              numberOfChunks | std.number.Integer,
              totalDuration | std.number.Integer,
              ..
            }
            | doc "The parameters for chunked dribble delay - chopping the response into pieces and sending them at delayed intervals"
            | optional,
          delayDistribution
            | js2n.OneOf
              [
                js2n.record.Record
                  {
                    additional = 'Some Dyn,
                    patterns = {},
                    properties =
                      {
                          median = std.number.Integer,
                          sigma = Number,
                          type =
                            std.contract.Sequence
                                [ std.enum.TagOrString, [| 'lognormal |] ],
                        },
                    required = { median = true, sigma = true, },
                  },
                js2n.record.Record
                  {
                    additional = 'Some Dyn,
                    patterns = {},
                    properties =
                      {
                          lower = std.number.Integer,
                          type =
                            std.contract.Sequence
                                [ std.enum.TagOrString, [| 'uniform |] ],
                          upper = std.number.Integer,
                        },
                    required = { lower = true, upper = true, },
                  },
                js2n.record.Record
                  {
                    additional = 'Some Dyn,
                    patterns = {},
                    properties =
                      {
                          milliseconds = std.number.Integer,
                          type =
                            std.contract.Sequence
                                [ std.enum.TagOrString, [| 'fixed |] ],
                        },
                    required = { milliseconds = true, },
                  }
              ]
            | { _ | Dyn }
            | doc "The delay distribution. Valid property configuration is either median/sigma/type or lower/type/upper."
            | optional,
          fault
            | std.enum.TagOrString
            | [|
              'RANDOM_DATA_THEN_CLOSE,
              'MALFORMED_RESPONSE_CHUNK,
              'EMPTY_RESPONSE,
              'CONNECTION_RESET_BY_PEER
            |]
            | doc "The fault to apply (instead of a full, valid response)."
            | optional,
          fixedDelayMilliseconds
            | std.number.Integer
            | doc "Number of milliseconds to delay be before sending the response."
            | optional,
          fromConfiguredStub
            | Bool
            | doc "Read-only flag indicating false if this was the default, unmatched response. Not present otherwise."
            | optional,
          headers
            | { _ | String }
            | doc "Map of response headers to send"
            | optional,
          jsonBody
            | std.contract.any_of [ { _ | Dyn }, Array Dyn ]
            | doc "The response body as a JSON object. Only one of body, base64Body, jsonBody or bodyFileName may be specified."
            | optional,
          proxyBaseUrl
            | String
            | doc "The base URL of the target to proxy matching requests to."
            | optional,
          proxyUrlPrefixToRemove
            | String
            | doc "A path segment to remove from the beginning in incoming request URL paths before proxying to the target."
            | optional,
          removeProxyRequestHeaders
            | Array String
            | doc "Request headers to remove when proxying to another host."
            | optional,
          status
            | std.number.Integer
            | doc "The HTTP status code to be returned"
            | optional,
          statusMessage
            | String
            | doc "The HTTP status message to be returned"
            | optional,
          transformerParameters
            | { _ | Dyn }
            | doc "Parameters to apply to response transformers."
            | optional,
          transformers
            | Array String
            | doc "List of names of transformers to apply to this response."
            | optional,
          ..
        }
        | optional,
      scenarioName
        | String
        | doc "The name of the scenario that this stub mapping is part of"
        | optional,
      serveEventListeners
        | Array
          {
            name | String | optional,
            parameters | { _ | Dyn } | optional,
            requestPhases
              | Array (
                std.contract.Sequence
                  [
                    std.enum.TagOrString,
                    [|
                      'AFTER_COMPLETE,
                      'BEFORE_RESPONSE_SENT,
                      'AFTER_MATCH,
                      'BEFORE_MATCH
                    |]
                  ]
              )
              | optional,
            ..
          }
        | doc "The list of serve event listeners"
        | optional,
      uuid | String | doc "Alias for the id" | optional,
      ..
    }