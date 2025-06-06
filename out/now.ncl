# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = { "definitions.alias" = String, "definitions.env" = { _ | String }, }
    in
  {
      alias
        | std.contract.any_of
          [
            std.contract.Sequence
              [ js2n.array.MaxItems 64, Array refs."definitions.alias" ],
            refs."definitions.alias"
          ]
        | optional,
      build
        | {
          env
            | refs."definitions.env"
            | doc "environment variables passed to the Build processes"
            | optional,
          ..
        }
        | optional,
      builds
        | Array
          {
            config
              | { _ | Dyn }
              | doc "An object including arbitrary metadata to be passed to the Builder."
              | optional,
            src
              | String
              | doc "A glob expression or pathname. If more than one file is resolved, one build will be created per matched file. It can include `*` and `**`.",
            use
              | String
              | doc "A npm module to be installed by the build process. It can include a semver compatible version (e.g.: `@org/proj@1`).",
            ..
          }
        | doc "a list of build descriptions whose src references valid source files"
        | optional,
      env
        | refs."definitions.env"
        | doc "environment variables passed to the invoked Serverless Functions"
        | optional,
      github
        | {
          autoAlias
            | Bool
            | doc "When set to false, Now for GitHub will not apply the alias upon merge."
            | optional,
          autoJobCancelation
            | Bool
            | doc "When set to false, Now for GitHub will always build pushes in sequence without cancelling a build for the most recent commit."
            | optional,
          enabled
            | Bool
            | doc "When set to false, Now for GitHub will not deploy the given project regardless of the GitHub app being installed."
            | optional,
          silent
            | Bool
            | doc "When set to true, Now for GitHub will stop commenting on pull requests and commits."
            | optional,
          ..
        }
        | doc "Git integration options"
        | optional,
      name
        | js2n.string.MaxLength 52
        | doc "name for the deployment"
        | optional,
      public
        | Bool
        | doc "When set to true, both the source view and logs view will be publicly accessible (when the user is authenticated with ZEIT)."
        | optional,
      regions
        | Array String
        | doc "the deployment regions of the Serverless Functions that get created as a result of the build steps"
        | optional,
      routes
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
                      js2n.record.Required [ "src" ],
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Required [ "handle" ],
                      Array Dyn
                    ]
                ],
              {
                continue
                  | Bool
                  | doc "A boolean to change matching behavior. If true, routing will continue even when the src is matched."
                  | optional,
                dest
                  | String
                  | doc "A destination pathname or full URL, including querystring, with the ability to embed capture groups as $1, $2…"
                  | optional,
                handle | std.enum.TagOrString | [| 'filesystem |] | optional,
                headers
                  | { _ | String }
                  | doc "A set of headers to apply for responses."
                  | optional,
                methods
                  | Array (
                    std.contract.Sequence
                      [
                        std.enum.TagOrString,
                        [|
                          'PATCH,
                          'TRACE,
                          'OPTIONS,
                          'CONNECT,
                          'DELETE,
                          'PUT,
                          'POST,
                          'HEAD,
                          'GET
                        |]
                      ]
                  )
                  | doc "A set of HTTP method types. If no method is provided, requests with any HTTP method will be a candidate for the route."
                  | optional,
                src
                  | String
                  | doc "A PCRE-compatible regular expression that matches each incoming pathname (excluding querystring)."
                  | optional,
                status
                  | std.number.Integer
                  | js2n.number.Maximum 599
                  | js2n.number.Minimum 100
                  | doc "A status code to respond with. Can be used in tandem with `Location:` header to implement redirects."
                  | optional,
                ..
              }
            ]
        )
        | doc "a list of route definitions"
        | optional,
      scope
        | String
        | doc "an ID or slug for teams, or an email address, username, or ID for users"
        | optional,
      version
        | js2n.Enum [ 1, 2 ]
        | doc "the Now Platform version that the deployment should use and is known to work with"
        | optional,
      ..
    }