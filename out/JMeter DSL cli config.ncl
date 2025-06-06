# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      recorder
        | {
          correlations
            | Array
              {
                extractor
                  | std.contract.any_of
                    [
                      String,
                      {
                        regex
                          | String
                          | doc "Regular expression where the first capturing group defines the extracted value, while the rest is used for context matching",
                        target
                          | std.enum.TagOrString
                          | [|
                            'RESPONSE_MESSAGE,
                            'RESPONSE_CODE,
                            'RESPONSE_BODY_AS_A_DOCUMENT,
                            'RESPONSE_BODY_UNESCAPED,
                            'REQUEST_HEADERS,
                            'REQUEST_URL,
                            'RESPONSE_HEADERS,
                            'RESPONSE_BODY
                          |]
                          | doc m%"
                            Specifies sample result property to apply the extractor to.
                            For details on available options check: https://javadoc.io/static/us.abstracta.jmeter/jmeter-java-dsl/1.8/us/abstracta/jmeter/javadsl/core/postprocessors/DslRegexExtractor.TargetField.html#enum.constant.summary
                          "%
                          | optional,
                        ..
                      }
                    ]
                  | doc "Defines regular expression and, optionally, other parameters which define how to extract values from responses (or even requests), to be used in following requests"
                  | optional,
                replacement
                  | String
                  | doc "Regular expression used to replace in requests previously extracted values. The first capturing group defines the place where the extracted value should appear (and replaced by variable reference), while the rest of the regex is used for context matching"
                  | optional,
                variable
                  | String
                  | doc "Name of the variable used to store a value extracted from a response and to be used in a following request"
                  | optional,
              }
            | doc "Specifies list of correlation rules between requests and previous responses, avoiding fixed and brittle recorded test plans"
            | optional,
          headerExcludes
            | Array String
            | doc "Regular expressions used to ignore matching headers from recording"
            | optional,
          headerIgnoreDefaultFilter
            | Bool
            | doc "Specifies to use or not the default headers filter. The default filter ignores these headers: Accept-Language,Upgrade-Insecure-Requests,Accept-Encoding,User-Agent,Accept,Referer,Origin,X-Requested-With,Cache-Control"
            | optional,
          logFilteredRequests
            | Bool
            | doc "Specifies to include in generated JTL file, filtered and not recorded requests or not."
            | optional,
          url | String | doc "Initial URL to start recording from" | optional,
          urlExcludes
            | Array String
            | doc m%"
              Regular expressions used to NOT record requests with matching URLs.
              NOTE: Don't include scheme (e.g: http://) in regex
            "%
            | optional,
          urlIgnoreDefaultFilter
            | Bool
            | doc "Specifies to use or not the default URL filter. The default filter ignores URLs matching: (?i).*\\.(bmp|css|js|gif|ico|jpe?g|png|svg|swf|ttf|woff2?|webp)(\\?.*)?"
            | optional,
          urlIncludes
            | Array String
            | doc m%"
              Regular expressions used to only record requests with matching URLs.
              NOTE: Don't include scheme (e.g: http://) in regex
            "%
            | optional,
          workdir
            | String
            | doc "Directory where logs (eg: jtl files) and other relevant data is stored"
            | optional,
        }
        | optional,
    }