# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      lifecycle
        | {
          post_build
            | Array (
              std.contract.any_of
                [
                  String,
                  {
                    allow_failure
                      | Bool
                      | doc "whether to fail the whole helmwave if command fail"
                      | optional,
                    args
                      | Array String
                      | doc "arguments to pass to executable"
                      | optional,
                    cmd | String | doc "executable to run",
                    show
                      | Bool
                      | doc "whether to log command stdout"
                      | optional,
                  }
                ]
            )
            | doc "post_build hooks"
            | optional,
          post_down
            | Array (
              std.contract.any_of
                [
                  String,
                  {
                    allow_failure
                      | Bool
                      | doc "whether to fail the whole helmwave if command fail"
                      | optional,
                    args
                      | Array String
                      | doc "arguments to pass to executable"
                      | optional,
                    cmd | String | doc "executable to run",
                    show
                      | Bool
                      | doc "whether to log command stdout"
                      | optional,
                  }
                ]
            )
            | doc "post_down hooks"
            | optional,
          post_rollback
            | Array (
              std.contract.any_of
                [
                  String,
                  {
                    allow_failure
                      | Bool
                      | doc "whether to fail the whole helmwave if command fail"
                      | optional,
                    args
                      | Array String
                      | doc "arguments to pass to executable"
                      | optional,
                    cmd | String | doc "executable to run",
                    show
                      | Bool
                      | doc "whether to log command stdout"
                      | optional,
                  }
                ]
            )
            | doc "post_rollback hooks"
            | optional,
          post_up
            | Array (
              std.contract.any_of
                [
                  String,
                  {
                    allow_failure
                      | Bool
                      | doc "whether to fail the whole helmwave if command fail"
                      | optional,
                    args
                      | Array String
                      | doc "arguments to pass to executable"
                      | optional,
                    cmd | String | doc "executable to run",
                    show
                      | Bool
                      | doc "whether to log command stdout"
                      | optional,
                  }
                ]
            )
            | doc "post_up hooks"
            | optional,
          pre_build
            | Array (
              std.contract.any_of
                [
                  String,
                  {
                    allow_failure
                      | Bool
                      | doc "whether to fail the whole helmwave if command fail"
                      | optional,
                    args
                      | Array String
                      | doc "arguments to pass to executable"
                      | optional,
                    cmd | String | doc "executable to run",
                    show
                      | Bool
                      | doc "whether to log command stdout"
                      | optional,
                  }
                ]
            )
            | doc "pre_build hooks"
            | optional,
          pre_down
            | Array (
              std.contract.any_of
                [
                  String,
                  {
                    allow_failure
                      | Bool
                      | doc "whether to fail the whole helmwave if command fail"
                      | optional,
                    args
                      | Array String
                      | doc "arguments to pass to executable"
                      | optional,
                    cmd | String | doc "executable to run",
                    show
                      | Bool
                      | doc "whether to log command stdout"
                      | optional,
                  }
                ]
            )
            | doc "pre_down hooks"
            | optional,
          pre_rollback
            | Array (
              std.contract.any_of
                [
                  String,
                  {
                    allow_failure
                      | Bool
                      | doc "whether to fail the whole helmwave if command fail"
                      | optional,
                    args
                      | Array String
                      | doc "arguments to pass to executable"
                      | optional,
                    cmd | String | doc "executable to run",
                    show
                      | Bool
                      | doc "whether to log command stdout"
                      | optional,
                  }
                ]
            )
            | doc "pre_rollback hooks"
            | optional,
          pre_up
            | Array (
              std.contract.any_of
                [
                  String,
                  {
                    allow_failure
                      | Bool
                      | doc "whether to fail the whole helmwave if command fail"
                      | optional,
                    args
                      | Array String
                      | doc "arguments to pass to executable"
                      | optional,
                    cmd | String | doc "executable to run",
                    show
                      | Bool
                      | doc "whether to log command stdout"
                      | optional,
                  }
                ]
            )
            | doc "pre_up hooks"
            | optional,
        }
        | doc "helmwave lifecycle hooks"
        | optional,
      monitors
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
                      js2n.record.Required [ "prometheus" ],
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Required [ "http" ],
                      Array Dyn
                    ]
                ],
              {
                failure_threshold | std.number.Integer | optional,
                http
                  | {
                    body | String | optional,
                    expected_codes | Array std.number.Integer,
                    headers | { _ | String } | optional,
                    insecure | Bool | optional,
                    method | String | optional,
                    url | String,
                  }
                  | optional,
                interval
                  | std.contract.any_of [ String, std.number.Integer ]
                  | optional,
                iteration_timeout
                  | std.contract.any_of [ String, std.number.Integer ]
                  | doc "After this timeout hits monitor iteration will be considered as failed"
                  | optional,
                name | String,
                prometheus
                  | {
                    expr | String,
                    insecure | Bool | optional,
                    success_mode
                      | std.enum.TagOrString
                      | [| 'if_vector, 'if_empty |]
                      | optional,
                    url | String,
                  }
                  | optional,
                success_threshold | std.number.Integer | optional,
                total_timeout
                  | std.contract.any_of [ String, std.number.Integer ]
                  | doc "After this timeout hits monitor will fail regardless of current streak"
                  | optional,
                type | std.enum.TagOrString | [| 'http, 'prometheus |],
              }
            ]
        )
        | optional,
      project | String | doc "reserved for future" | optional,
      registries
        | Array
          {
            host
              | js2n.string.Matches "^.*(:[0-9]+)?$"
              | doc "OCI registry host optionally with port",
            insecure | Bool | optional,
            password | String | optional,
            username | String | optional,
          }
        | doc "helm OCI registries"
        | optional,
      releases
        | Array
          {
            allow_failure
              | Bool
              | doc "Whether to ignore errors and proceed with dependant releases"
              | optional,
            atomic | Bool | optional,
            chart
              | std.contract.any_of
                [
                  String,
                  {
                    ca_file
                      | String
                      | doc "Verify certificates of HTTPS-enabled servers using this CA bundle"
                      | optional,
                    cert_file
                      | String
                      | doc "Identify HTTPS client using this SSL certificate file"
                      | optional,
                    insecure
                      | Bool
                      | doc "Connect to server with an insecure way by skipping certificate verification"
                      | optional,
                    key_file
                      | String
                      | doc "Identify HTTPS client using this SSL key file"
                      | optional,
                    keyring
                      | String
                      | doc "Location of public keys used for verification"
                      | optional,
                    name | String | doc "Name of the chart",
                    pass_credentials
                      | Bool
                      | doc "Pass credentials to all domains"
                      | optional,
                    password
                      | String
                      | doc "Chart repository password"
                      | optional,
                    plain_http
                      | Bool
                      | doc "Connect to server with plain http and not https"
                      | optional,
                    repo_url | String | doc "Chart repository url" | optional,
                    skip_dependency_update
                      | Bool
                      | doc "Skip updating and downloading dependencies"
                      | optional,
                    skip_refresh
                      | Bool
                      | doc "Skip refreshing repositories"
                      | optional,
                    username
                      | String
                      | doc "Chart repository username"
                      | optional,
                    verify
                      | Bool
                      | doc "Verify the provenance of the chart before using it"
                      | optional,
                    version | String | doc "Chart version" | optional,
                  }
                ]
              | doc "Describes chart that release uses"
              | optional,
            cleanup_on_fail | Bool | optional,
            context | String | optional,
            create_namespace
              | Bool
              | doc "Whether to create namespace if it doesnt exits"
              | optional,
            delete_propagation
              | std.enum.TagOrString
              | [| 'foreground, 'orphan, 'background |]
              | doc "Selects the deletion cascading strategy for the dependents"
              | optional,
            depends_on
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
                            js2n.record.Required [ "name" ],
                            Array Dyn
                          ],
                        std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            js2n.record.Required [ "tag" ],
                            Array Dyn
                          ]
                      ],
                    {
                      name
                        | String
                        | doc "Uniqname (or just name if in same namespace) of dependency release"
                        | optional,
                      "optional"
                        | Bool
                        | doc "Whether the dependency is required to be present in plan"
                        | optional,
                      tag
                        | String
                        | doc "All available releases with the tag will be applied as dependencies"
                        | optional,
                    }
                  ]
              )
              | doc "List of dependencies that are required to succeed before this release"
              | optional,
            description | String | optional,
            disable_hooks | Bool | optional,
            disable_open_api_validation | Bool | optional,
            enable_dns | Bool | optional,
            "force" | Bool | optional,
            hide_notes
              | Bool
              | doc "Output rendered chart notes after upgrade/install"
              | optional,
            labels | { _ | String } | optional,
            lifecycle
              | {
                post_build
                  | Array (
                    std.contract.any_of
                      [
                        String,
                        {
                          allow_failure
                            | Bool
                            | doc "whether to fail the whole helmwave if command fail"
                            | optional,
                          args
                            | Array String
                            | doc "arguments to pass to executable"
                            | optional,
                          cmd | String | doc "executable to run",
                          show
                            | Bool
                            | doc "whether to log command stdout"
                            | optional,
                        }
                      ]
                  )
                  | doc "post_build hooks"
                  | optional,
                post_down
                  | Array (
                    std.contract.any_of
                      [
                        String,
                        {
                          allow_failure
                            | Bool
                            | doc "whether to fail the whole helmwave if command fail"
                            | optional,
                          args
                            | Array String
                            | doc "arguments to pass to executable"
                            | optional,
                          cmd | String | doc "executable to run",
                          show
                            | Bool
                            | doc "whether to log command stdout"
                            | optional,
                        }
                      ]
                  )
                  | doc "post_down hooks"
                  | optional,
                post_rollback
                  | Array (
                    std.contract.any_of
                      [
                        String,
                        {
                          allow_failure
                            | Bool
                            | doc "whether to fail the whole helmwave if command fail"
                            | optional,
                          args
                            | Array String
                            | doc "arguments to pass to executable"
                            | optional,
                          cmd | String | doc "executable to run",
                          show
                            | Bool
                            | doc "whether to log command stdout"
                            | optional,
                        }
                      ]
                  )
                  | doc "post_rollback hooks"
                  | optional,
                post_up
                  | Array (
                    std.contract.any_of
                      [
                        String,
                        {
                          allow_failure
                            | Bool
                            | doc "whether to fail the whole helmwave if command fail"
                            | optional,
                          args
                            | Array String
                            | doc "arguments to pass to executable"
                            | optional,
                          cmd | String | doc "executable to run",
                          show
                            | Bool
                            | doc "whether to log command stdout"
                            | optional,
                        }
                      ]
                  )
                  | doc "post_up hooks"
                  | optional,
                pre_build
                  | Array (
                    std.contract.any_of
                      [
                        String,
                        {
                          allow_failure
                            | Bool
                            | doc "whether to fail the whole helmwave if command fail"
                            | optional,
                          args
                            | Array String
                            | doc "arguments to pass to executable"
                            | optional,
                          cmd | String | doc "executable to run",
                          show
                            | Bool
                            | doc "whether to log command stdout"
                            | optional,
                        }
                      ]
                  )
                  | doc "pre_build hooks"
                  | optional,
                pre_down
                  | Array (
                    std.contract.any_of
                      [
                        String,
                        {
                          allow_failure
                            | Bool
                            | doc "whether to fail the whole helmwave if command fail"
                            | optional,
                          args
                            | Array String
                            | doc "arguments to pass to executable"
                            | optional,
                          cmd | String | doc "executable to run",
                          show
                            | Bool
                            | doc "whether to log command stdout"
                            | optional,
                        }
                      ]
                  )
                  | doc "pre_down hooks"
                  | optional,
                pre_rollback
                  | Array (
                    std.contract.any_of
                      [
                        String,
                        {
                          allow_failure
                            | Bool
                            | doc "whether to fail the whole helmwave if command fail"
                            | optional,
                          args
                            | Array String
                            | doc "arguments to pass to executable"
                            | optional,
                          cmd | String | doc "executable to run",
                          show
                            | Bool
                            | doc "whether to log command stdout"
                            | optional,
                        }
                      ]
                  )
                  | doc "pre_rollback hooks"
                  | optional,
                pre_up
                  | Array (
                    std.contract.any_of
                      [
                        String,
                        {
                          allow_failure
                            | Bool
                            | doc "whether to fail the whole helmwave if command fail"
                            | optional,
                          args
                            | Array String
                            | doc "arguments to pass to executable"
                            | optional,
                          cmd | String | doc "executable to run",
                          show
                            | Bool
                            | doc "whether to log command stdout"
                            | optional,
                        }
                      ]
                  )
                  | doc "pre_up hooks"
                  | optional,
              }
              | doc "Lifecycle hooks"
              | optional,
            max_history | std.number.Integer | optional,
            monitors
              | Array
                {
                  action
                    | std.enum.TagOrString
                    | [| 'uninstall, 'rollback, '"" |]
                    | optional,
                  name | String,
                }
              | optional,
            name | String,
            namespace | String,
            offline_kube_version
              | String
              | doc "Kubernetes version for offline mode"
              | optional,
            pending_release_strategy
              | std.enum.TagOrString
              | [| '"", 'uninstall, 'rollback |]
              | doc "Strategy to handle releases in pending statuses (pending-install/pending-upgrade/pending-rollback)"
              | optional,
            post_renderer
              | Array String
              | doc "List of post_renders to manipulate with manifests"
              | optional,
            recreate | Bool | optional,
            reset_then_reuse_values | Bool | optional,
            reset_values | Bool | optional,
            reuse_values | Bool | optional,
            skip_crds
              | Bool
              | doc "Skips installing CRDs when install flag is enabled during upgrade"
              | optional,
            skip_schema_validation
              | Bool
              | doc "Determines if JSON schema validation is disabled."
              | optional,
            store
              | { _ | Dyn }
              | doc "It allows to pass your custom fields from helmwave.yml to values"
              | optional,
            sub_notes
              | Bool
              | doc "Determines whether sub-notes are rendered in the chart"
              | optional,
            tags
              | Array String
              | doc "Tags allows you choose releases for build"
              | optional,
            take_ownership
              | Bool
              | doc "Will ignore the check for helm annotations and take ownership of the resources"
              | optional,
            tests
              | {
                enabled | Bool | doc "Whether to run helm tests" | optional,
                filters
                  | { _ | Array String }
                  | doc "Filter tests by attributes"
                  | optional,
                force_show_logs
                  | Bool
                  | doc "Always show tests logs"
                  | optional,
              }
              | doc "Configuration for helm tests"
              | optional,
            timeout
              | std.contract.any_of [ String, std.number.Integer ]
              | optional,
            values
              | Array (
                std.contract.any_of
                  [
                    String,
                    {
                      delimiter_left | String | optional,
                      delimiter_right | String | optional,
                      dst | String | optional,
                      renderer
                        | std.enum.TagOrString
                        | [| 'sops, 'copy, 'gomplate, 'sprig |]
                        | doc "How to render the file"
                        | optional,
                      src
                        | String
                        | doc "Source of values. Can be local path or HTTP URL",
                      strict
                        | Bool
                        | doc "Whether to fail if values is not found"
                        | optional,
                    }
                  ]
              )
              | optional,
            wait
              | Bool
              | doc "Whether to wait for all resource to become ready"
              | optional,
            wait_for_jobs
              | Bool
              | doc "Whether to wait for all jobs to become ready"
              | optional,
          }
        | doc "what you wanna deploy"
        | optional,
      repositories
        | Array
          {
            caFile | String | optional,
            certFile | String | optional,
            "force"
              | Bool
              | doc "force update helm repo list and download dependencies"
              | optional,
            insecure_skip_tls_verify | Bool | optional,
            keyFile | String | optional,
            name | String | optional,
            pass_credentials_all | Bool | optional,
            password | String | optional,
            url | String | optional,
            username | String | optional,
          }
        | doc "helm repositories"
        | optional,
      version
        | js2n.string.Matches "^[0-9]+\\.[0-9]+\\.[0-9]+$"
        | doc "will check current version and project version"
        | optional,
      ..
    }