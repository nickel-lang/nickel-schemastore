# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      actions
        | Array
          {
            emails | Array String | optional,
            name
              | String
              | doc "Name of the action for reference from alert definitions.",
            numbers | Array String | optional,
            type | String | doc "Type of action to perform.",
            ..
          }
        | optional,
      alerts
        | Array
          {
            action | String | doc "Name of the action to perform.",
            description
              | String
              | doc "Informative alert description, displayed in the email, sms, or slack."
              | optional,
            disable | Bool | doc "Disable the alert." | optional,
            evaluation_periods
              | std.number.Integer
              | doc "Number of periods to evaluate over."
              | optional,
            metric | String | doc "Name of the metric.",
            namespace | String | doc "Metric namespace." | optional,
            operator
              | std.enum.TagOrString
              | [| '"<=", '">=", '"<", '">" |]
              | doc "Operator is the comparison operator."
              | optional,
            period
              | std.contract.any_of [ std.number.Integer, String ]
              | doc "Period is the alert query time-span."
              | optional,
            statistic
              | std.enum.TagOrString
              | [| 'count, 'sum, 'avg, 'max, 'min |]
              | doc "Name of statistic to perform.",
            threshold
              | std.number.Integer
              | doc "Threshold which is compared to the operator.",
            ..
          }
        | optional,
      cors
        | {
          allowed_credentials
            | Bool
            | doc "A boolean indicating whether the request can include user credentials such as cookies, HTTP authentication or client side SSL certificates. Defaults to true."
            | optional,
          allowed_headers | Array String | optional,
          allowed_methods | Array String | optional,
          allowed_origins | Array String | optional,
          enable
            | Bool
            | doc "Enable Cross-Origin Resource Sharing."
            | optional,
          exposed_headers | Array String | optional,
          max_age
            | std.number.Integer
            | doc "A number indicating how long (in seconds) the results of a preflight request can be cached."
            | optional,
          ..
        }
        | optional,
      description | String | doc "An optional project description." | optional,
      dns | { _ | Dyn } | optional,
      environment | { _ | Dyn } | optional,
      error_pages
        | {
          dir
            | String
            | doc "Path to directory from which error pages are served."
            | optional,
          disable | Bool | doc "Disable default error pages." | optional,
          variables
            | {
              color | String | doc "Theme color." | optional,
              support_email
                | String
                | doc "Support email for contact link."
                | optional,
              ..
            }
            | optional,
          ..
        }
        | optional,
      headers | { _ | Dyn } | optional,
      hooks
        | {
          build | String | doc "Hook command(s) to run." | optional,
          clean | String | doc "Hook command(s) to run." | optional,
          postbuild | String | doc "Hook command(s) to run." | optional,
          postdeploy | String | doc "Hook command(s) to run." | optional,
          prebuild | String | doc "Hook command(s) to run." | optional,
          predeploy | String | doc "Hook command(s) to run." | optional,
          ..
        }
        | optional,
      inject | { _ | Dyn } | optional,
      lambda
        | {
          accelerate
            | Bool
            | doc "Enable S3 acceleration for faster uploads via the CloudFront CDN."
            | optional,
          memory
            | std.number.Integer
            | js2n.Enum
              [
                128,
                192,
                256,
                320,
                384,
                448,
                512,
                576,
                640,
                704,
                768,
                832,
                896,
                960,
                1024,
                1088,
                1152,
                1216,
                1280,
                1344,
                1408,
                1472,
                1536,
                1600,
                1664,
                1728,
                1792,
                1856,
                1920,
                1984,
                2048,
                2112,
                2176,
                2240,
                2304,
                2368,
                2432,
                2496,
                2560,
                2624,
                2688,
                2752,
                2816,
                2880,
                2944,
                3008
              ]
            | doc "Lambda memory size."
            | optional,
          warm
            | Bool
            | doc "Active warming mitigates cold starts when enabled."
            | optional,
          warm_count
            | std.number.Integer
            | doc "Number of concurrent containers to warm."
            | optional,
          warm_rate
            | String
            | doc "Active warming sends requests to your application at this interval."
            | optional,
          ..
        }
        | optional,
      name | String | doc "A machine-friendly project name.",
      profile
        | String
        | doc "AWS credentials profile name, these are stored in ~/.aws/credentials."
        | optional,
      proxy
        | {
          backoff
            | {
              attempts
                | std.number.Integer
                | doc "Attempts made before failing."
                | optional,
              factor
                | Number
                | doc "Factor applied to each attempt."
                | optional,
              jitter | Bool | doc "Apply jitter." | optional,
              max
                | std.number.Integer
                | doc "Maximum time in milliseconds before retrying."
                | optional,
              min
                | std.number.Integer
                | doc "Minimum time in milliseconds before retrying."
                | optional,
              ..
            }
            | optional,
          command
            | String
            | doc "Command run to start your application."
            | optional,
          listen_timeout
            | std.number.Integer
            | doc "Timeout in seconds Up will wait for your app to boot and listen on `PORT`."
            | optional,
          shutdown_timeout
            | std.number.Integer
            | doc "Timeout in seconds Up will wait after sending a SIGINT to your server, before sending a SIGKILL."
            | optional,
          timeout
            | std.number.Integer
            | doc "Timeout in seconds per request."
            | optional,
          ..
        }
        | optional,
      redirects | { _ | Dyn } | optional,
      regions
        | js2n.array.MinItems 1
        | Array (
          std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'sa-east-1,
                'eu-west-3,
                'eu-west-2,
                'eu-west-1,
                'eu-central-1,
                'ca-central-1,
                'ap-northeast-1,
                'ap-southeast-2,
                'ap-southeast-1,
                'ap-northeast-2,
                'ap-south-1,
                'us-west-2,
                'us-west-1,
                'us-east-1,
                'us-east-2
              |]
            ]
        )
        | doc "List of target AWS regions for deployment."
        | optional,
      stages
        | {
          development
            | {
              domain | String | doc "Domain hostname for the stage." | optional,
              ..
            }
            | optional,
          production
            | {
              domain | String | doc "Domain hostname for the stage." | optional,
              ..
            }
            | optional,
          staging
            | {
              domain | String | doc "Domain hostname for the stage." | optional,
              ..
            }
            | optional,
          ..
        }
        | optional,
      static
        | {
          dir
            | String
            | doc "Path to directory from which assets are served."
            | optional,
          prefix | String | doc "Optional URL path prefix." | optional,
          ..
        }
        | optional,
      type
        | std.enum.TagOrString
        | [| 'server, 'static |]
        | doc "The type of project."
        | optional,
      ..
    }