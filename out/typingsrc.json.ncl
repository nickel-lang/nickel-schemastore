# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      ca
        | std.contract.any_of [ String, Array String ]
        | doc "A string or array of strings of trusted certificates in PEM format"
        | optional,
      cert | String | doc "Public x509 certificate to use" | optional,
      defaultSource
        | std.enum.TagOrString
        | [| 'https, 'http, 'bower, 'bitbucket, 'github, 'npm, 'file |]
        | doc "Override the default installation source (e.g., when doing 'typings install debug')"
        | optional,
      githubToken
        | String
        | doc "Set your GitHub for resolving 'github:' locations"
        | optional,
      httpProxy | String | doc "The proxy to use for HTTP requests" | optional,
      httpsProxy
        | String
        | doc "The proxy to use for HTTPS requests"
        | optional,
      key | String | doc "Private key to use for SSL" | optional,
      noProxy
        | String
        | doc "A string of space-separated hosts to not proxy"
        | optional,
      proxy
        | String
        | doc "A HTTP(s) proxy URI for outgoing requests"
        | optional,
      registryURL | String | doc "Override the registry URL" | optional,
      rejectUnauthorized
        | Bool
        | doc "Reject invalid SSL certificates"
        | optional,
      userAgent
        | String
        | doc "Set the User-Agent for HTTP requests"
        | optional,
      ..
    }