# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  Array
      {
        calls
          | Array
            {
              args | js2n.record.MinProperties 1 | optional,
              expect
                | js2n.record.MinProperties 1
                | {
                  absent | js2n.array.MinItems 1 | optional,
                  body | js2n.record.MinProperties 1 | optional,
                  bodyPath | js2n.record.MinProperties 1 | optional,
                  bodySchema | String | optional,
                  bodySchemaFile | String | optional,
                  bodySchemaURI | String | optional,
                  contentType | String | optional,
                  exactBody | js2n.record.MinProperties 1 | optional,
                  headers | js2n.record.MinProperties 1 | optional,
                  statusCode
                    | std.number.Integer
                    | js2n.Enum
                      [
                        200,
                        201,
                        202,
                        203,
                        204,
                        205,
                        206,
                        207,
                        208,
                        209,
                        226,
                        300,
                        301,
                        302,
                        303,
                        304,
                        305,
                        306,
                        307,
                        308,
                        400,
                        401,
                        402,
                        403,
                        404,
                        405,
                        406,
                        407,
                        408,
                        409,
                        410,
                        411,
                        412,
                        413,
                        414,
                        415,
                        416,
                        417,
                        418,
                        421,
                        422,
                        423,
                        424,
                        426,
                        428,
                        429,
                        431,
                        451,
                        500,
                        501,
                        502,
                        503,
                        504,
                        505,
                        506,
                        507,
                        508,
                        510,
                        511
                      ]
                    | optional,
                },
              on
                | js2n.record.MinProperties 1
                | {
                  body | std.contract.any_of [ { _ | Dyn }, String ] | optional,
                  bodyFile | String | optional,
                  headers
                    | js2n.record.MinProperties 1
                    | {
                      Accept
                        | std.enum.TagOrString
                        | [|
                          '"text/csv",
                          '"text/xml",
                          '"application/xml",
                          '"application/json"
                        |]
                        | optional,
                      Authorization | String | optional,
                      Content-Type
                        | std.enum.TagOrString
                        | [|
                          '"text/csv",
                          '"text/xml",
                          '"application/xml",
                          '"application/json"
                        |]
                        | optional,
                      ..
                    }
                    | optional,
                  method
                    | std.enum.TagOrString
                    | [|
                      'TRACE,
                      'CONNECT,
                      'PATCH,
                      'OPTIONS,
                      'HEAD,
                      'DELETE,
                      'PUT,
                      'POST,
                      'GET
                    |],
                  params | js2n.record.MinProperties 1 | optional,
                  url | String,
                },
              remember
                | js2n.record.MinProperties 1
                | {
                  bodyPath | js2n.record.MinProperties 1 | optional,
                  headers | js2n.record.MinProperties 1 | optional,
                }
                | optional,
            },
        description | String | doc "Long description of the test." | optional,
        ignore
          | js2n.string.MinLength 10
          | doc "Ignore test due to a reason"
          | optional,
        name
          | String
          | doc "Short name of the test that will be used in reports."
          | optional,
      }