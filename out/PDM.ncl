# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.pypi-def" =
        {
            password
              | String
              | doc "The password to access custom source"
              | optional,
            type
              | std.enum.TagOrString
              | [| 'find_links, 'index |]
              | doc "index or find_links"
              | optional,
            url | String | doc "The URL of custom package source",
            username
              | String
              | doc "The username to access custom source"
              | optional,
            verify_ssl
              | Bool
              | doc "Verify SSL certificate when query custom source"
              | optional,
          },
      "definitions.repository-def" =
        {
            ca_certs
              | String
              | doc "Path to a PEM-encoded CA cert bundle (used for server cert verification)"
              | optional,
            password
              | String
              | doc "The password to access custom repository"
              | optional,
            url | String | doc "The URL of custom package source" | optional,
            username
              | String
              | doc "The username to access custom repository"
              | optional,
            verify_ssl
              | Bool
              | doc "Verify SSL certificate when uploading to repository"
              | optional,
          },
    }
    in
  {
      build_isolation
        | Bool
        | doc m%"
          Isolate the build environment from the project environment
          Env var: PDM_BUILD_ISOLATION
        "%
        | optional,
      install
        | {
          cache | Bool | doc "Enable caching of wheel installations" | optional,
          cache_method
            | std.enum.TagOrString
            | [| 'pth, 'hardlink, 'symlink_individual, 'symlink |]
            | doc "Specify how to create links to the caches"
            | optional,
          parallel
            | Bool
            | doc m%"
              Whether to perform installation and uninstallation in parallel
              Env var: PDM_PARALLEL_INSTALL
            "%
            | optional,
        }
        | optional,
      pypi
        | js2n.record.Record
          {
            additional = 'Some refs."definitions.pypi-def",
            patterns = {},
            properties =
              {
                  ignore_stored_index = Bool,
                  json_api = Bool,
                  password = String,
                  url = String,
                  username = String,
                  verify_ssl = Bool,
                },
            required = {},
          }
        | optional,
      python
        | {
          providers
            | Array Dyn
            | doc "List of python provider names for findpython"
            | optional,
          use_pyenv | Bool | doc "Use the pyenv interpreter" | optional,
          use_venv
            | Bool
            | doc m%"
              Use virtual environments when available
              Env var: PDM_USE_VENV
            "%
            | optional,
        }
        | optional,
      repository | { _ | refs."definitions.repository-def" } | optional,
      strategy
        | {
          inherit_metadata
            | Bool
            | doc "Inherit the groups and markers from parents for each package"
            | optional,
          resolve_max_rounds
            | std.number.Integer
            | doc m%"
              Specify the max rounds of resolution process
              Env var: PDM_RESOLVE_MAX_ROUNDS
            "%
            | optional,
          save
            | std.enum.TagOrString
            | [| 'compatible, 'minimum, 'wildcard, 'exact |]
            | doc "Specify how to save versions when a package is added"
            | optional,
          update
            | std.enum.TagOrString
            | [| 'reuse-installed, 'all, 'reuse, 'eager |]
            | doc "The default strategy for updating packages"
            | optional,
        }
        | optional,
      use_uv
        | Bool
        | doc m%"
          Use uv for faster resolution and installation
          Env var: PDM_USE_UV
        "%
        | optional,
      venv
        | {
          backend
            | String
            | doc m%"
              Default backend to create virtualenv
              Env var: PDM_VENV_BACKEND
            "%
            | optional,
          in_project
            | Bool
            | doc m%"
              Create virtualenv in .venv under project root
              Env var: PDM_VENV_IN_PROJECT
            "%
            | optional,
          prompt
            | String
            | doc m%"
              Formatted string to be displayed in the prompt when virtualenv is active
              Env var: PDM_VENV_PROMPT
            "%
            | optional,
          with_pip
            | Bool
            | doc m%"
              Install pip when creating a new venv
               Env var: PDM_VENV_WITH_PIP
            "%
            | optional,
        }
        | optional,
    }