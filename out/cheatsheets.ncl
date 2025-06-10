# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      cheatpaths
        | Array
          {
            name
              | js2n.string.MinLength 1
              | doc m%"
                A cheatpath name
                https://github.com/cheat/cheat#cheatpaths
              "%
              | optional,
            path
              | js2n.string.MinLength 1
              | doc m%"
                A cheatpath path
                https://github.com/cheat/cheat#cheatpaths
              "%
              | optional,
            readonly
              | Bool
              | doc m%"
                Whether allow creating cheatsheets in a cheatpath
                https://github.com/cheat/cheat#cheatpaths
              "%
              | optional,
            tags
              | js2n.array.UniqueItems
              | Array (js2n.string.MinLength 1)
              | doc m%"
                Cheatpath tags
                https://github.com/cheat/cheat#cheatpaths
              "%
              | optional,
          }
        | doc m%"
          Cheatpaths
          https://github.com/cheat/cheat#cheatpaths
        "%
        | optional,
      colorize
        | Bool
        | doc m%"
          Whether cheatsheets should be colorized
          https://github.com/cheat/cheat#cheatpaths
        "%
        | optional,
      editor
        | js2n.OneOf
          [
            std.contract.Sequence
              [
                std.enum.TagOrString,
                [| '"/usr/bin/emacs", '"/usr/bin/vim", '"/usr/bin/nano" |]
              ],
            js2n.Always
          ]
        | String
        | doc m%"
          An editor to modify cheatsheets
          https://github.com/cheat/cheat#cheatpaths
        "%
        | optional,
      formatter
        | std.enum.TagOrString
        | [| 'terminal16m, 'terminal256, 'terminal |]
        | doc m%"
          A formatter to format cheatsheets
          https://github.com/cheat/cheat#cheatpaths
        "%
        | optional,
      pager
        | js2n.OneOf
          [
            std.contract.Sequence [ std.enum.TagOrString, [| 'more, 'less |] ],
            js2n.Always
          ]
        | String
        | doc m%"
          A pager to read long cheatsheets
          https://github.com/cheat/cheat#cheatpaths
        "%
        | optional,
      style
        | std.enum.TagOrString
        | [|
          'xcode-dark,
          'xcode,
          'witchhazel,
          'vulcan,
          'vs,
          'vim,
          'trac,
          'tango,
          'swapoff,
          'solarized-light,
          'solarized-dark256,
          'solarized-dark,
          'rrt,
          'rose-pine-moon,
          'rose-pine-dawn,
          'rose-pine,
          'rainbow_dash,
          'pygments,
          'perldoc,
          'pastie,
          'paraiso-light,
          'paraiso-dark,
          'onesenterprise,
          'onedark,
          'nord,
          'native,
          'murphy,
          'monokailight,
          'monokai,
          'modus-vivendi,
          'modus-operandi,
          'manni,
          'lovelace,
          'igor,
          'hrdark,
          'hr_high_contrast,
          'gruvbox-light,
          'gruvbox,
          'github-dark,
          'github,
          'fruity,
          'friendly,
          'emacs,
          'dracula,
          'doom-one2,
          'doom-one,
          'compat,
          'colorful,
          'catppuccin-mocha,
          'catppuccin-macchiato,
          'catppuccin-latte,
          'catppuccin-frappe,
          'bw,
          'borland,
          'base16-snazzy,
          'average,
          'autumn,
          'arduino,
          'api,
          'algol_nu,
          'algol,
          'abap
        |]
        | doc m%"
          A color schema applied for cheatsheets
          https://github.com/cheat/cheat#cheatpaths
        "%
        | optional,
    }