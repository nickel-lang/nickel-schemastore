# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      GlobalConfiguration
        | { RequestIdKey | js2n.string.Matches "^(.*)$" | optional, .. }
        | optional,
      Routes
        | Array
          {
            AddClaimsToRequest | { _ | Dyn } | optional,
            AddHeadersToRequest | { _ | Dyn } | optional,
            AddQueriesToRequest | { _ | Dyn } | optional,
            AuthenticationOptions
              | {
                AllowedScopes | Array Dyn | optional,
                AuthenticationProviderKey
                  | js2n.string.Matches "^(.*)$"
                  | optional,
                ..
              }
              | optional,
            DangerousAcceptAnyServerCertificateValidator | Bool | optional,
            DownstreamHostAndPorts
              | Array
                {
                  Host | js2n.string.Matches "^(.*)$" | optional,
                  Port | std.number.Integer | optional,
                  ..
                }
              | optional,
            DownstreamPathTemplate | js2n.string.Matches "^(.*)$" | optional,
            DownstreamScheme | js2n.string.Matches "^(.*)$" | optional,
            FileCacheOptions
              | {
                Region | js2n.string.Matches "^(.*)$" | optional,
                TtlSeconds | std.number.Integer | optional,
                ..
              }
              | optional,
            HttpHandlerOptions
              | {
                AllowAutoRedirect | Bool | optional,
                UseCookieContainer | Bool | optional,
                UseTracing | Bool | optional,
                ..
              }
              | optional,
            LoadBalancer | js2n.string.Matches "^(.*)$" | optional,
            QoSOptions
              | {
                DurationOfBreak | std.number.Integer | optional,
                ExceptionsAllowedBeforeBreaking | std.number.Integer | optional,
                TimeoutValue | std.number.Integer | optional,
                ..
              }
              | optional,
            RateLimitOptions
              | {
                ClientWhitelist | Array Dyn | optional,
                EnableRateLimiting | Bool | optional,
                Limit | std.number.Integer | optional,
                Period | js2n.string.Matches "^(.*)$" | optional,
                PeriodTimespan | std.number.Integer | optional,
                ..
              }
              | optional,
            RequestIdKey | js2n.string.Matches "^(.*)$" | optional,
            RouteClaimsRequirement | { _ | Dyn } | optional,
            RouteIsCaseSensitive | Bool | optional,
            ServiceName | js2n.string.Matches "^(.*)$" | optional,
            UpstreamHttpMethod
              | Array (js2n.string.Matches "^(.*)$")
              | optional,
            UpstreamPathTemplate | js2n.string.Matches "^(.*)$" | optional,
            ..
          },
      ..
    }