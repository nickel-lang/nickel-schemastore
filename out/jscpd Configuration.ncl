# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.color" =
        js2n.OneOf
            [
              std.contract.Sequence [ refs."definitions.colorPreset", String ],
              std.contract.Sequence [ refs."definitions.colorHex", String ]
            ],
      "definitions.colorHex" = js2n.string.Matches "([0-9a-fA-F]{3}){1,2}",
      "definitions.colorPreset" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'black,
                'cyan,
                'gray,
                'grey,
                'pink,
                'purple,
                'orange,
                'yellow,
                'red,
                'blue,
                'green
              |]
            ],
      "definitions.format" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'yaml,
                'xquery,
                'xojo,
                'xeora,
                'wiki,
                'url,
                'wasm,
                'visual-basic,
                'vim,
                'vhdl,
                'verilog,
                'velocity,
                'vbnet,
                'typescript,
                'twig,
                'tt2,
                'tsx,
                'textile,
                'tcl,
                'tap,
                'swift,
                'stylus,
                'sql,
                'soy,
                'smarty,
                'smalltalk,
                'scss,
                'scheme,
                'scala,
                'sass,
                'sas,
                'rust,
                'ruby,
                'roboconf,
                'rip,
                'rest,
                'renpy,
                'reason,
                'r,
                'qore,
                'q,
                'python,
                'pure,
                'puppet,
                'pug,
                'protobuf,
                'properties,
                'prolog,
                'processing,
                'powershell,
                'plsql,
                'php,
                'perl,
                'pascal,
                'parigp,
                'oz,
                'opencl,
                'ocaml,
                'objectivec,
                'nsis,
                'nix,
                'nim,
                'nginx,
                'nasm,
                'n4js,
                'monkey,
                'mizar,
                'mel,
                'matlab,
                'markup,
                'markdown,
                'makefile,
                'lua,
                'lolcode,
                'livescript,
                'lisp,
                'liquid,
                'less,
                'latex,
                'kotlin,
                'keymap,
                'julia,
                'jsx,
                'json,
                'jolie,
                'javascript,
                'java,
                'j,
                'io,
                'ini,
                'inform7,
                'icon,
                'ichigojam,
                'http,
                'hsts,
                'hpkp,
                'haxe,
                'haskell,
                'handlebars,
                'haml,
                'groovy,
                'graphql,
                'go,
                'glsl,
                'git,
                'gherkin,
                'gedcom,
                'fsharp,
                'fortran,
                'flow,
                'erlang,
                'erb,
                'elm,
                'elixir,
                'eiffel,
                'docker,
                'django,
                'diff,
                'dart,
                'd,
                'css,
                'css-extras,
                'csp,
                'csharp,
                'crystal,
                'cpp-header,
                'cpp,
                'comments,
                'coffeescript,
                'clojure,
                'clike,
                'c-header,
                'c,
                'bro,
                'brainfuck,
                'bison,
                'batch,
                'basic,
                'bash,
                'autoit,
                'autohotkey,
                'aspnet,
                'asm6502,
                'asciidoc,
                'arff,
                'arduino,
                'applescript,
                'apl,
                'apacheconf,
                'ada,
                'actionscript,
                'abap
              |]
            ],
    }
    in
  {
      absolute | Bool | doc "use absolute paths in reports" | optional,
      blame
        | Bool
        | doc "get information about authors and dates of duplicated blocks from Git"
        | optional,
      exitCode
        | std.number.Integer
        | doc "exit code to use when at least one duplicate code block is detected but threshold is not exceeded"
        | optional,
      format
        | Array refs."definitions.format"
        | doc "list of formats for which to detect duplication (default: all); see https://github.com/kucherenko/jscpd/blob/master/supported_formats.md"
        | optional,
      formatsExts
        | { _ | Array String }
        | doc "custom mapping from formats to file extensions (default: https://github.com/kucherenko/jscpd/blob/master/packages/tokenizer/src/formats.ts); see https://github.com/kucherenko/jscpd/blob/master/supported_formats.md"
        | optional,
      gitignore | Bool | doc "ignore all files from .gitignore file" | optional,
      ignore
        | Array String
        | doc "glob pattern for files that should be excluded from duplicate detection"
        | optional,
      ignoreCase
        | Bool
        | doc "ignore case of symbols in code (experimental)"
        | optional,
      ignorePattern
        | Array String
        | doc "ignore code blocks matching these regular expressions"
        | optional,
      maxLines
        | std.number.Integer
        | doc "maximum size of source file in lines to check for duplication"
        | optional,
      maxSize
        | std.contract.any_of
          [
            js2n.string.Matches "^\\+?[0-9]+(\\.[0-9]+)? *[kKmMgGtTpP][bB]$",
            std.number.Integer
          ]
        | doc "maximum size of source file in bytes to check for duplication (e.g.,: 1kb, 1mb, 120kb)"
        | optional,
      minLines
        | std.number.Integer
        | doc "minimum size of code block in lines to check for duplication"
        | optional,
      minTokens
        | std.number.Integer
        | doc "minimum size of code block in tokens to check for duplication"
        | optional,
      mode
        | std.enum.TagOrString
        | [| 'weak, 'strict, 'mild |]
        | doc "mode of detection quality; see https://github.com/kucherenko/jscpd/blob/master/packages/jscpd/README.md#mode"
        | optional,
      noSymlinks | Bool | doc "do not follow symlinks" | optional,
      output
        | String
        | doc "path to directory for non-console reports"
        | optional,
      path
        | Array String
        | doc "paths that should be included in duplicate detection (default: [process.cwd()])"
        | optional,
      pattern
        | String
        | doc "glob pattern for files that should be included in duplicate detection (e.g., **/*.txt); only used to filter directories configured via path option"
        | optional,
      reporters
        | Array (
          std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'xcode,
                'threshold,
                'silent,
                'console,
                'html,
                'consoleFull,
                'markdown,
                'csv,
                'json,
                'xml
              |]
            ]
        )
        | doc "a list of reporters to use to output information about duplication; see https://github.com/kucherenko/jscpd/blob/master/packages/jscpd/README.md#reporters"
        | optional,
      reportersOptions
        | {
          badge
            | {
              color
                | refs."definitions.color"
                | doc "badge color (name or RGB code without #, default: green if beneath threshold, red if above threshold, grey if threshold not set); see https://github.com/badgen/badgen/blob/master/src/color-presets.ts"
                | optional,
              icon
                | String
                | doc "URL for icon to display in front of badge subject text (e.g., data:image/svg+xml;base64,...)"
                | optional,
              iconWidth
                | Number
                | doc "SVG width of icon to display in front of badge subject text; set this if icon is not square"
                | optional,
              label
                | String
                | doc "badge subject text (URL-encoding needed for spaces or special characters)"
                | optional,
              labelColor
                | refs."definitions.color"
                | doc "badge label color (name or RGB code without #); see https://github.com/badgen/badgen/blob/master/src/color-presets.ts"
                | optional,
              path
                | String
                | doc "output path for duplication level badge (default: path.join(output, 'jscpd-badge.svg'))"
                | optional,
              scale
                | Number
                | doc "size of badge relative to default of 1"
                | optional,
              status
                | String
                | doc "badge value text (URL-encoding needed for spaces or special characters, default: duplication %)"
                | optional,
              style
                | std.enum.TagOrString
                | [| 'classic, 'flat |]
                | doc "badge look: flat or classic"
                | optional,
            }
            | optional,
        }
        | optional,
      silent
        | Bool
        | doc "do not write duplicate detection progress and result to console"
        | optional,
      skipLocal
        | Bool
        | doc "skip duplicates within folders; just detect cross-folder duplicates"
        | optional,
      store
        | std.enum.TagOrString
        | [| 'redis, 'leveldb |]
        | doc "store used to collect information about code (default: in-memory store); install @jscpd/leveldb-store and use leveldb for big repositories"
        | optional,
      threshold
        | Number
        | doc "maximum allowed duplicate lines expressed as a percentage; exit with error and exit code 1 when threshold exceeded"
        | optional,
      verbose
        | Bool
        | doc "show full information during duplicate detection"
        | optional,
    }