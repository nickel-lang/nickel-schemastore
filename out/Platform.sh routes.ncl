# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      _ | js2n.OneOf
        [
          js2n.record.Record
            {
              additional = 'None,
              patterns = {},
              properties =
                {
                    attributes =
                      js2n.record.Record
                          {
                            additional = 'Some String,
                            patterns = {},
                            properties = {},
                            required = {},
                          },
                    id = String,
                    primary = Bool,
                    redirects =
                      js2n.record.Record
                          {
                            additional = 'None,
                            patterns = {},
                            properties =
                              {
                                  expires =
                                    std.contract.any_of
                                        [ std.number.Integer, String ],
                                  paths =
                                    js2n.record.Record
                                        {
                                          additional =
                                            'Some
                                                (js2n.record.Record
                                                  {
                                                    additional = 'None,
                                                    patterns = {},
                                                    properties =
                                                      {
                                                          append_suffix = Bool,
                                                          code =
                                                            std.number.Integer,
                                                          expires =
                                                            std.contract.any_of
                                                                [
                                                                  std.number.Integer,
                                                                  String
                                                                ],
                                                          prefix = Bool,
                                                          regexp = Bool,
                                                          to = String,
                                                        },
                                                    required = { to = true, },
                                                  }),
                                          patterns = {},
                                          properties = {},
                                          required = {},
                                        },
                                },
                            required = { paths = true, },
                          },
                    tls =
                      js2n.record.Record
                          {
                            additional = 'None,
                            patterns = {},
                            properties =
                              {
                                  client_authentication = String,
                                  client_certificate_authorities =
                                    js2n.array.ArrayOf String,
                                  min_version =
                                    std.contract.Sequence
                                        [
                                          std.enum.TagOrString,
                                          [|
                                            '"TLSv1.2",
                                            '"TLSv1.3",
                                            '"TLSv1.0",
                                            '"TLSv1.1"
                                          |]
                                        ],
                                  strict_transport_security =
                                    js2n.record.Record
                                        {
                                          additional = 'None,
                                          patterns = {},
                                          properties =
                                            {
                                                enabled = Bool,
                                                include_subdomains = Bool,
                                                preload = Bool,
                                              },
                                          required = {},
                                        },
                                },
                            required = {},
                          },
                    to = String,
                    type = String,
                  },
              required = { to = true, type = true, },
            },
          js2n.record.Record
            {
              additional = 'None,
              patterns = {},
              properties =
                {
                    attributes =
                      js2n.record.Record
                          {
                            additional = 'Some String,
                            patterns = {},
                            properties = {},
                            required = {},
                          },
                    cache =
                      js2n.record.Record
                          {
                            additional = 'None,
                            patterns = {},
                            properties =
                              {
                                  cookies = js2n.array.ArrayOf String,
                                  default_ttl = std.number.Integer,
                                  enabled = Bool,
                                  headers = js2n.array.ArrayOf String,
                                },
                            required = { enabled = true, },
                          },
                    id = String,
                    primary = Bool,
                    redirects =
                      js2n.record.Record
                          {
                            additional = 'None,
                            patterns = {},
                            properties =
                              {
                                  expires =
                                    std.contract.any_of
                                        [ std.number.Integer, String ],
                                  paths =
                                    js2n.record.Record
                                        {
                                          additional =
                                            'Some
                                                (js2n.record.Record
                                                  {
                                                    additional = 'None,
                                                    patterns = {},
                                                    properties =
                                                      {
                                                          append_suffix = Bool,
                                                          code =
                                                            std.number.Integer,
                                                          expires =
                                                            std.contract.any_of
                                                                [
                                                                  std.number.Integer,
                                                                  String
                                                                ],
                                                          prefix = Bool,
                                                          regexp = Bool,
                                                          to = String,
                                                        },
                                                    required = { to = true, },
                                                  }),
                                          patterns = {},
                                          properties = {},
                                          required = {},
                                        },
                                },
                            required = { paths = true, },
                          },
                    ssi =
                      js2n.record.Record
                          {
                            additional = 'None,
                            patterns = {},
                            properties = { enabled = Bool, },
                            required = { enabled = true, },
                          },
                    tls =
                      js2n.record.Record
                          {
                            additional = 'None,
                            patterns = {},
                            properties =
                              {
                                  client_authentication = String,
                                  client_certificate_authorities =
                                    js2n.array.ArrayOf String,
                                  min_version =
                                    std.contract.Sequence
                                        [
                                          std.enum.TagOrString,
                                          [|
                                            '"TLSv1.2",
                                            '"TLSv1.3",
                                            '"TLSv1.0",
                                            '"TLSv1.1"
                                          |]
                                        ],
                                  strict_transport_security =
                                    js2n.record.Record
                                        {
                                          additional = 'None,
                                          patterns = {},
                                          properties =
                                            {
                                                enabled = Bool,
                                                include_subdomains = Bool,
                                                preload = Bool,
                                              },
                                          required = {},
                                        },
                                },
                            required = {},
                          },
                    type = String,
                    upstream = String,
                  },
              required = { type = true, upstream = true, },
            }
        ]
    }