# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      config
        | {
          bitcoinURL | String | optional,
          codeshipProjectID
            | String
            | doc "The ID for the project, available in the URL for the codeship project."
            | optional,
          codeshipProjectUUID
            | String
            | doc "The UUID for the project, available in the General tab of your project setting."
            | optional,
          facebookApplicationID | String | optional,
          facebookUsername | String | optional,
          flattrUsername | String | optional,
          gaTrackingID | String | optional,
          githubBranch
            | String
            | doc "The branch to constrain the badge to."
            | optional,
          githubEvent
            | String
            | doc "The event to constrain the badge to."
            | optional,
          githubSlug
            | String
            | doc "The Github slug of the project (e.g., SchemaStore/schemastore)"
            | optional,
          githubUsername | String | doc "The Github username to use" | optional,
          githubWorkflow
            | String
            | doc "The name or location of the workflow file to show the badge for."
            | optional,
          gratipayUsername | String | optional,
          homepage | String | doc "The home page URL" | optional,
          nodeicoQueryString
            | std.contract.any_of
              [
                String,
                {
                  compact | js2n.Enum [ true ] | optional,
                  downloadRank | js2n.Enum [ true ] | optional,
                  downloads | js2n.Enum [ true ] | optional,
                  height | js2n.Enum [ 1, 2, 3 ] | optional,
                  mini | js2n.Enum [ true ] | optional,
                  months | std.number.Integer | optional,
                  stars | js2n.Enum [ true ] | optional,
                }
              ]
            | doc m%"
              Either a query string as a string, or an object containing the options.
              
              See https://nodei.co for details
            "%
            | optional,
          npmPackageName | String | doc "The npm package name" | optional,
          opencollectiveURL
            | String
            | doc "The URL to the Open Collective donate page."
            | optional,
          opencollectiveUsername
            | String
            | doc "The Open Collective username to donate to."
            | optional,
          patreonURL
            | String
            | doc "The URL to the Patreon donate page."
            | optional,
          patreonUsername
            | String
            | doc "The Patreon username to donate to."
            | optional,
          paypalButtonID | String | optional,
          paypalURL | String | optional,
          paypalUsername | String | optional,
          quoraRealname | String | optional,
          quoraUsername | String | optional,
          saucelabsAuthToken
            | String
            | doc m%"
              SauceLabs auth token, should probably not be used.
              Use `SAUCELABS_AUTH_TOKEN` env var instead.
            "%
            | optional,
          saucelabsUsername
            | String
            | doc "The username of the SauceLabs account"
            | optional,
          sixtydevstipsID
            | String
            | doc "The 60devs username to donate to."
            | optional,
          sixtydevstipsURL
            | String
            | doc "The URL to the 60devs donate page."
            | optional,
          slackinURL | String | optional,
          travisTLD
            | String
            | doc "The TLD to use for Travis CI. Use \"com\" if you have moved to travis-ci.com"
            | optional,
          twitterUsername
            | String
            | doc "The twitter username to tweet at"
            | optional,
          wishlistURL | String | optional,
        }
        | doc "Configuration object"
        | optional,
      list
        | Array (
          std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'quorafollow,
                'githubstar,
                'githubfollow,
                'twitterfollow,
                'twittertweet,
                'facebookfollow,
                'facebooklike,
                'hackernewssubmit,
                'redditsubmit,
                'googleplusone,
                'gabeacon,
                'slackin,
                'slackinscript,
                'wishlist,
                'bitcoin,
                'paypal,
                'flattr,
                'gratipay,
                'opencollective,
                'patreon,
                'sixtydevstips,
                'waffle,
                'bithound,
                'codeclimate,
                'coveralls,
                'codeship,
                'githubworkflow,
                'travisci,
                'saucelabs,
                'saucelabsbm,
                'nodeico,
                'daviddmdev,
                'daviddm,
                'npmdownloads,
                'npmversion,
                '"---"
              |]
            ]
        )
        | doc "Array of badges. Use \"---\" to denote a separation."
        | optional,
    }