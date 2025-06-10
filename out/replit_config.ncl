# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      audio | Bool | doc "Enable/disable system-wide audio in REPL" | optional,
      language
        | std.enum.TagOrString
        | [|
          'java_maven,
          'riddlejs,
          'scala,
          'testj_beta,
          'html_beta,
          'python_beta,
          'java10_beta,
          'wasm,
          'testj,
          'raku,
          'python3_beta,
          'nodejs_static,
          'go_beta,
          'static,
          'pyxel,
          'nodejs_beta,
          'php_cli,
          'java10,
          'sqlite,
          'php7,
          'elisp,
          'nodejs_prybar,
          'php_server,
          'java_swing,
          'tkinter,
          'Tkinter,
          'reason,
          'love2d,
          'pygame,
          'ocaml,
          'typescript,
          'erlang,
          'tcl,
          'reason_nodejs,
          'gatsbyjsv2,
          'dart,
          'nim,
          'elixir,
          'perl6,
          'julia,
          'crystal,
          'polygott,
          'quil,
          'bash,
          'flow,
          'reactre,
          'reactts,
          'reactjs,
          'gatsbyjs,
          'nextjs,
          'rlang,
          'rails,
          'sinatra,
          'express,
          'django,
          'jest,
          'basic,
          'python_turtle,
          'swift,
          'rust,
          'html,
          'web_project,
          'fsharp,
          'csharp,
          'c,
          'cpp11,
          'cpp,
          'java,
          'go,
          'enzyme,
          'nodejs,
          'python3,
          'php,
          'roy,
          'ruby,
          'python,
          'lua,
          'apl,
          'scheme,
          'coffeescript,
          'babel,
          'javascript,
          'unlambda,
          'react_native,
          'bloop,
          'emoticon,
          '"brainf***",
          'lolcode,
          'forth,
          'qbasic,
          'kotlin,
          'haskell,
          'clojure
        |]
        | doc "Language name used in REPL"
        | optional,
      languages
        | {
          _ | {
            glob
              | js2n.string.MinLength 1
              | doc "Glob for language files"
              | optional,
            languageServer
              | { start | String | doc "Command to run server" | optional, }
              | doc "Language Server Protocol (LSP) configuration"
              | optional,
          }
        }
        | js2n.record.FieldsMatch "."
        | doc "Language configuration"
        | optional,
      packager
        | {
          afterInstall
            | String
            | doc "Command to run on new package install"
            | optional,
          features
            | {
              guessImports
                | Bool
                | doc "Enable/disable guessing required packages"
                | optional,
              packageSearch
                | Bool
                | doc "Enable/disable package search panel"
                | optional,
            }
            | doc "Universal Package Manager (UPM) features"
            | optional,
          ignoredPackages
            | js2n.array.MinItems 1
            | js2n.array.UniqueItems
            | Array (js2n.string.MinLength 1)
            | doc "List of ignored packages"
            | optional,
          ignoredPaths
            | js2n.array.MinItems 1
            | js2n.array.UniqueItems
            | Array (js2n.string.MinLength 1)
            | doc "List of ignored path"
            | optional,
          language
            | std.enum.TagOrString
            | [|
              'rust,
              'dotnet,
              'rlang,
              'java-maven,
              'dart-pub,
              'elisp-cask,
              'ruby-bundler,
              'nodejs-yarn,
              'nodejs-npm,
              'python-python2-poetry,
              'python-python3-poetry
            |]
            | doc "Language name"
            | optional,
        }
        | doc "Universal Package Manager (UPM) configuration"
        | optional,
      run
        | std.contract.any_of [ String, Array String ]
        | doc "Command to run REPL"
        | optional,
    }