# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      enabledcategories
        | {
          apps
            | String
            | doc m%"
              Whether to show applications
              https://github.com/yamnikov-oleg/projektor#configuration
            "%
            | optional,
          calc
            | String
            | doc m%"
              Whether to enable calculator
              https://github.com/yamnikov-oleg/projektor#configuration
            "%
            | optional,
          commands
            | String
            | doc m%"
              Whether to show commands
              https://github.com/yamnikov-oleg/projektor#configuration
            "%
            | optional,
          files
            | String
            | doc m%"
              Whether to show files
              https://github.com/yamnikov-oleg/projektor#configuration
            "%
            | optional,
          history
            | String
            | doc m%"
              Whether to show history
              https://github.com/yamnikov-oleg/projektor#configuration
            "%
            | optional,
          url
            | String
            | doc m%"
              Whether to show urls
              https://github.com/yamnikov-oleg/projektor#configuration
            "%
            | optional,
          websearch
            | String
            | doc m%"
              Whether to allow web search
              https://github.com/yamnikov-oleg/projektor#configuration
            "%
            | optional,
        }
        | doc m%"
          Global enabled category settings
          https://github.com/yamnikov-oleg/projektor#configuration
        "%
        | optional,
      forcecacheinterval
        | std.number.Integer
        | js2n.number.Minimum 0
        | doc m%"
          A delay between daemon run with '-dry' flag
          https://github.com/yamnikov-oleg/projektor#configuration
        "%
        | optional,
      history
        | {
          capacity
            | std.number.Integer
            | js2n.number.Minimum 0
            | doc m%"
              A capacity
              https://github.com/yamnikov-oleg/projektor#configuration
            "%
            | optional,
        }
        | doc m%"
          Global history settings
          https://github.com/yamnikov-oleg/projektor#configuration
        "%
        | optional,
      keybind
        | js2n.string.MinLength 1
        | doc m%"
          A daemon keybinding
          https://github.com/yamnikov-oleg/projektor#configuration
        "%
        | optional,
      ui
        | {
          height
            | js2n.string.Matches "^\\d+$"
            | doc m%"
              A height
              https://github.com/yamnikov-oleg/projektor#configuration
            "%
            | optional,
          width
            | js2n.string.Matches "^\\d+$"
            | doc m%"
              A width
              https://github.com/yamnikov-oleg/projektor#configuration
            "%
            | optional,
        }
        | doc m%"
          Global UI settings
          https://github.com/yamnikov-oleg/projektor#configuration
        "%
        | optional,
      url
        | {
          capacity
            | js2n.string.MinLength 1
            | doc m%"
              An icon
              https://github.com/yamnikov-oleg/projektor#configuration
            "%
            | optional,
        }
        | doc m%"
          Global url settings
          https://github.com/yamnikov-oleg/projektor#configuration
        "%
        | optional,
      websearch
        | {
          engine
            | js2n.string.MinLength 1
            | doc m%"
              A url template
              https://github.com/yamnikov-oleg/projektor#configuration
            "%
            | optional,
          icon
            | js2n.string.MinLength 1
            | doc m%"
              An entry icon
              https://github.com/yamnikov-oleg/projektor#configuration
            "%
            | optional,
        }
        | doc m%"
          Global web search settings
          https://github.com/yamnikov-oleg/projektor#configuration
        "%
        | optional,
    }