# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.hook_definition" =
        {
            additional_dependencies
              | Array String
              | doc m%"
                A list of additional_dependencies of the current hook
                https://pre-commit.com/#pre-commit-configyaml---hooks
              "%
              | optional,
            alias
              | String
              | doc m%"
                An additional identifier of the current hook for `pre-commit run <hookid>`
                https://pre-commit.com/#pre-commit-configyaml---hooks
              "%
              | optional,
            always_run
              | Bool
              | doc m%"
                Run the current hook when no files matched
                https://pre-commit.com/#pre-commit-configyaml---hooks
              "%
              | optional,
            args
              | Array String
              | doc m%"
                List of additional parameters to pass to the current hook
                https://pre-commit.com/#pre-commit-configyaml---hooks
              "%
              | optional,
            entry
              | String
              | doc m%"
                A command of the current hook
                https://pre-commit.com/#pre-commit-configyaml---hooks
              "%
              | optional,
            exclude
              | String
              | doc m%"
                A pattern to exclude files from `files` to run on of the current hook
                https://pre-commit.com/#pre-commit-configyaml---hooks
              "%
              | optional,
            exclude_types
              | refs."definitions.hook_definition.properties.types"
              | Array Dyn
              | doc m%"
                A list of file types to exclude of the current hook
                https://pre-commit.com/#pre-commit-configyaml---hooks
              "%
              | optional,
            files
              | String
              | doc m%"
                A pattern to include files to run on of the current hook
                https://pre-commit.com/#pre-commit-configyaml---hooks
              "%
              | optional,
            id
              | String
              | doc m%"
                An identifier of the current hook
                https://pre-commit.com/#pre-commit-configyaml---hooks
              "%
              | optional,
            language
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      std.enum.TagOrString,
                      [|
                        'system,
                        'script,
                        'pygrep,
                        'swift,
                        'rust,
                        'ruby,
                        'r,
                        'python_venv,
                        'python,
                        'perl,
                        'node,
                        'lua,
                        'golang,
                        'fail,
                        'dotnet,
                        'docker_image,
                        'docker,
                        'dart,
                        'coursier,
                        'conda
                      |]
                    ],
                  String
                ]
              | doc m%"
                A language the current hook is written in
                https://pre-commit.com/#pre-commit-configyaml---hooks
              "%
              | optional,
            language_version
              | String
              | doc m%"
                A language version of the current hook
                https://pre-commit.com/#pre-commit-configyaml---hooks
              "%
              | optional,
            log_file | String | doc "A log file of the current hook" | optional,
            name
              | String
              | doc m%"
                A name of the current hook
                https://pre-commit.com/#pre-commit-configyaml---hooks
              "%
              | optional,
            pass_filenames
              | Bool
              | doc m%"
                Whether to pass filenames to the current hook or not
                https://pre-commit.com/#pre-commit-configyaml---hooks
              "%
              | optional,
            stages
              | refs."properties.default_stages"
              | Array Dyn
              | doc m%"
                A stage of the current hook
                https://pre-commit.com/#pre-commit-configyaml---hooks
              "%
              | optional,
            types
              | Array (
                std.contract.any_of
                  [
                    std.contract.Sequence
                      [
                        std.enum.TagOrString,
                        [|
                          'zsh,
                          'zpt,
                          'zip,
                          'zig,
                          'zcml,
                          'yin,
                          'yang,
                          'yamllint,
                          'yaml,
                          'xsl,
                          'xsd,
                          'xquery,
                          'xml,
                          'xhtml,
                          'wsgi,
                          'woff2,
                          'woff,
                          'wkt,
                          'wheel,
                          'webp,
                          'wav,
                          'vue,
                          'vtl,
                          'vim,
                          'vhdl,
                          'verilog,
                          'vdx,
                          'vcxproj,
                          'vbproj,
                          'vb,
                          'urdf,
                          'txsprofile,
                          'twisted,
                          'twig,
                          'ttf,
                          'tsx,
                          'tsv,
                          'ts,
                          'toml,
                          'tiff,
                          'thrift,
                          'text,
                          'tex,
                          'terraform,
                          'tcsh,
                          'tar,
                          'system-verilog,
                          'symlink,
                          'swiftdeps,
                          'swift,
                          'swf,
                          'svg,
                          'svelte,
                          'stylus,
                          'sql,
                          'spec,
                          'solidity,
                          'socket,
                          'sln,
                          'shell,
                          'sh,
                          'scss,
                          'scheme,
                          'scala,
                          'sbt,
                          'sass,
                          'salt,
                          'rust,
                          'ruby,
                          'rst,
                          'relax-ng,
                          'r,
                          'qml,
                          'pyz,
                          'python3,
                          'python2,
                          'python,
                          'pyproj,
                          'pypirc,
                          'pylintrc,
                          'pyi,
                          'purescript,
                          'puppet,
                          'proto,
                          'prisma,
                          'prettierignore,
                          'powershell,
                          'pofile,
                          'png,
                          'plist,
                          'plantuml,
                          'plain-text,
                          'pkgbuild,
                          'php,
                          'perl,
                          'pem,
                          'pdf,
                          'pdbrc,
                          'p12,
                          'otf,
                          'ocaml,
                          '"objective-c++",
                          'objective-c,
                          'nunjucks,
                          'npmignore,
                          'non-executable,
                          'nix,
                          'nimble,
                          'nim,
                          'ngdoc,
                          'myst,
                          'musescore,
                          'modulemap,
                          'mib,
                          'meson,
                          'mention-bot,
                          'mdx,
                          'markdown,
                          'map,
                          'manifest,
                          'makefile,
                          'mailmap,
                          'lua,
                          'literate-haskell,
                          'liquid,
                          'less,
                          'lektorproject,
                          'lektor,
                          'lean,
                          'ksh,
                          'kotlin,
                          'kml,
                          'jupyter,
                          'jsx,
                          'jsonnet,
                          'json5,
                          'json,
                          'jshintrc,
                          'jpeg,
                          'jinja,
                          'jenkins,
                          'javascript,
                          'java-properties,
                          'java,
                          'jar,
                          'jade,
                          'inx,
                          'ino,
                          'inl,
                          'ini,
                          'inc,
                          'image,
                          'idris,
                          'idl,
                          'icon,
                          'icns,
                          'icalendar,
                          'html,
                          'hgrc,
                          'header,
                          'hcl,
                          'haskell,
                          'handlebars,
                          'gzip,
                          'gyp,
                          'gyb,
                          'groovy,
                          'graphql,
                          'gpx,
                          'gotmpl,
                          'go-sum,
                          'go-mod,
                          'go,
                          'gitmodules,
                          'gitlint,
                          'gitignore,
                          'gitconfig,
                          'gitattributes,
                          'gif,
                          'gherkin,
                          'geojson,
                          'gdscript,
                          'flake8,
                          'fish,
                          'file,
                          'expect,
                          'executable,
                          'erb,
                          'eps,
                          'eot,
                          'ejs,
                          'edn,
                          'editorconfig,
                          'dtd,
                          'dotenv,
                          'dockerignore,
                          'dockerfile,
                          'directory,
                          'diff,
                          'def,
                          'dash,
                          'dart,
                          'cython,
                          'cuda,
                          'csv,
                          'csslintrc,
                          'css,
                          'csproj,
                          'cson,
                          'csh,
                          'crystal,
                          'coveragerc,
                          'coffee,
                          'codespellrc,
                          'cmake,
                          'clojurescript,
                          'clojure,
                          'cbsd,
                          'c2hs,
                          '"c++",
                          '"c#",
                          'c,
                          'bzip2,
                          'browserslistrc,
                          'bowerrc,
                          'bitmap,
                          'binary,
                          'bib,
                          'bazelrc,
                          'bazel,
                          'bats,
                          'batch,
                          'bash,
                          'babelrc,
                          'awk,
                          'avif,
                          'audio,
                          'aspectj,
                          'asm,
                          'ash,
                          'asciidoc,
                          'asar,
                          'apinotes,
                          'alpm,
                          'adobe-illustrator
                        |]
                      ],
                    String
                  ]
              )
              | doc m%"
                A list of file types to run on combined via logical `and` of the current hook
                https://pre-commit.com/#pre-commit-configyaml---hooks
              "%
              | optional,
            types_or
              | refs."definitions.hook_definition.properties.types"
              | Array Dyn
              | doc m%"
                A list of file types to run on combined via logical `or` of the current hook
                https://pre-commit.com/#pre-commit-configyaml---hooks
              "%
              | optional,
            verbose
              | Bool
              | doc m%"
                Display an output of the current hook even it passes
                https://pre-commit.com/#pre-commit-configyaml---hooks
              "%
              | optional,
            ..
          },
      "definitions.hook_definition.properties.types" =
        Array (
            std.contract.any_of
              [
                std.contract.Sequence
                  [
                    std.enum.TagOrString,
                    [|
                      'zsh,
                      'zpt,
                      'zip,
                      'zig,
                      'zcml,
                      'yin,
                      'yang,
                      'yamllint,
                      'yaml,
                      'xsl,
                      'xsd,
                      'xquery,
                      'xml,
                      'xhtml,
                      'wsgi,
                      'woff2,
                      'woff,
                      'wkt,
                      'wheel,
                      'webp,
                      'wav,
                      'vue,
                      'vtl,
                      'vim,
                      'vhdl,
                      'verilog,
                      'vdx,
                      'vcxproj,
                      'vbproj,
                      'vb,
                      'urdf,
                      'txsprofile,
                      'twisted,
                      'twig,
                      'ttf,
                      'tsx,
                      'tsv,
                      'ts,
                      'toml,
                      'tiff,
                      'thrift,
                      'text,
                      'tex,
                      'terraform,
                      'tcsh,
                      'tar,
                      'system-verilog,
                      'symlink,
                      'swiftdeps,
                      'swift,
                      'swf,
                      'svg,
                      'svelte,
                      'stylus,
                      'sql,
                      'spec,
                      'solidity,
                      'socket,
                      'sln,
                      'shell,
                      'sh,
                      'scss,
                      'scheme,
                      'scala,
                      'sbt,
                      'sass,
                      'salt,
                      'rust,
                      'ruby,
                      'rst,
                      'relax-ng,
                      'r,
                      'qml,
                      'pyz,
                      'python3,
                      'python2,
                      'python,
                      'pyproj,
                      'pypirc,
                      'pylintrc,
                      'pyi,
                      'purescript,
                      'puppet,
                      'proto,
                      'prisma,
                      'prettierignore,
                      'powershell,
                      'pofile,
                      'png,
                      'plist,
                      'plantuml,
                      'plain-text,
                      'pkgbuild,
                      'php,
                      'perl,
                      'pem,
                      'pdf,
                      'pdbrc,
                      'p12,
                      'otf,
                      'ocaml,
                      '"objective-c++",
                      'objective-c,
                      'nunjucks,
                      'npmignore,
                      'non-executable,
                      'nix,
                      'nimble,
                      'nim,
                      'ngdoc,
                      'myst,
                      'musescore,
                      'modulemap,
                      'mib,
                      'meson,
                      'mention-bot,
                      'mdx,
                      'markdown,
                      'map,
                      'manifest,
                      'makefile,
                      'mailmap,
                      'lua,
                      'literate-haskell,
                      'liquid,
                      'less,
                      'lektorproject,
                      'lektor,
                      'lean,
                      'ksh,
                      'kotlin,
                      'kml,
                      'jupyter,
                      'jsx,
                      'jsonnet,
                      'json5,
                      'json,
                      'jshintrc,
                      'jpeg,
                      'jinja,
                      'jenkins,
                      'javascript,
                      'java-properties,
                      'java,
                      'jar,
                      'jade,
                      'inx,
                      'ino,
                      'inl,
                      'ini,
                      'inc,
                      'image,
                      'idris,
                      'idl,
                      'icon,
                      'icns,
                      'icalendar,
                      'html,
                      'hgrc,
                      'header,
                      'hcl,
                      'haskell,
                      'handlebars,
                      'gzip,
                      'gyp,
                      'gyb,
                      'groovy,
                      'graphql,
                      'gpx,
                      'gotmpl,
                      'go-sum,
                      'go-mod,
                      'go,
                      'gitmodules,
                      'gitlint,
                      'gitignore,
                      'gitconfig,
                      'gitattributes,
                      'gif,
                      'gherkin,
                      'geojson,
                      'gdscript,
                      'flake8,
                      'fish,
                      'file,
                      'expect,
                      'executable,
                      'erb,
                      'eps,
                      'eot,
                      'ejs,
                      'edn,
                      'editorconfig,
                      'dtd,
                      'dotenv,
                      'dockerignore,
                      'dockerfile,
                      'directory,
                      'diff,
                      'def,
                      'dash,
                      'dart,
                      'cython,
                      'cuda,
                      'csv,
                      'csslintrc,
                      'css,
                      'csproj,
                      'cson,
                      'csh,
                      'crystal,
                      'coveragerc,
                      'coffee,
                      'codespellrc,
                      'cmake,
                      'clojurescript,
                      'clojure,
                      'cbsd,
                      'c2hs,
                      '"c++",
                      '"c#",
                      'c,
                      'bzip2,
                      'browserslistrc,
                      'bowerrc,
                      'bitmap,
                      'binary,
                      'bib,
                      'bazelrc,
                      'bazel,
                      'bats,
                      'batch,
                      'bash,
                      'babelrc,
                      'awk,
                      'avif,
                      'audio,
                      'aspectj,
                      'asm,
                      'ash,
                      'asciidoc,
                      'asar,
                      'apinotes,
                      'alpm,
                      'adobe-illustrator
                    |]
                  ],
                String
              ]
          ),
      "definitions.local_repo" =
        {
            hooks
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.hook_definition",
                    js2n.record.Required [ "entry", "id", "language", "name" ]
                  ]
              )
              | optional,
            repo
              | std.enum.TagOrString
              | [| 'local |]
              | doc m%"
                A list of local hooks
                https://pre-commit.com/#2-add-a-pre-commit-configuration
              "%
              | optional,
            ..
          },
      "definitions.meta_repo" =
        {
            hooks
              | Array
                {
                  id
                    | std.enum.TagOrString
                    | [|
                      'identity,
                      'check-useless-excludes,
                      'check-hooks-apply
                    |],
                  ..
                }
              | optional,
            repo | std.enum.TagOrString | [| 'meta |] | optional,
            ..
          },
      "definitions.uri_repo" =
        {
            hooks
              | Array (
                std.contract.Sequence
                  [ refs."definitions.hook_definition", { _ | Dyn } ]
              )
              | doc m%"
                A list of hook mappings
                https://pre-commit.com/#pre-commit-configyaml---hooks.
              "%
              | optional,
            repo
              | js2n.string.Matches "^(?!(?:meta|local)$).*$"
              | doc m%"
                A repository url
                https://pre-commit.com/#2-add-a-pre-commit-configuration
              "%
              | optional,
            rev
              | String
              | doc m%"
                A revision or tag to clone at
                https://pre-commit.com/#2-add-a-pre-commit-configuration
              "%
              | optional,
            ..
          },
      "properties.default_stages" =
        Array (
            std.contract.Sequence
              [
                std.enum.TagOrString,
                [|
                  'manual,
                  'pre-rebase,
                  'pre-push,
                  'pre-merge-commit,
                  'pre-commit,
                  'post-rewrite,
                  'post-merge,
                  'post-commit,
                  'post-checkout,
                  'commit-msg,
                  'prepare-commit-msg,
                  'push,
                  'merge-commit,
                  'commit
                |]
              ]
          ),
    }
    in
  {
      ci
        | {
          autofix_commit_msg
            | String
            | doc m%"
              A commit message for pull request autofixes
              https://pre-commit.ci/#configuration
            "%
            | optional,
          autofix_prs
            | Bool
            | doc m%"
              Whether to autofix pull requests
              https://pre-commit.ci/#configuration
            "%
            | optional,
          autoupdate_branch
            | String
            | doc m%"
              A branch to send pull request's autoupdate to
              https://pre-commit.ci/#configuration
            "%
            | optional,
          autoupdate_commit_msg
            | String
            | doc m%"
              A commit message for autoupdate pull requests
              https://pre-commit.ci/#configuration
            "%
            | optional,
          autoupdate_schedule
            | std.enum.TagOrString
            | [| 'quarterly, 'monthly, 'weekly |]
            | doc m%"
              An autoupdate frequency
              https://pre-commit.ci/#configuration
            "%
            | optional,
          skip
            | Array String
            | doc m%"
              List of skipped hook's ids
              https://pre-commit.ci/#configuration
            "%
            | optional,
          submodules
            | Bool
            | doc m%"
              Whether to recursively check out submodules
              https://pre-commit.ci/#configuration
            "%
            | optional,
          ..
        }
        | doc m%"
          pre-commit.ci specific settings
          https://pre-commit.ci/#configuration
        "%
        | optional,
      default_install_hook_types
        | Array Dyn
        | doc m%"
          A list of hook types which will be used by default when running `pre-commit install`
          https://pre-commit.com/#pre-commit-configyaml---top-level
        "%
        | optional,
      default_language_version
        | { _ | String }
        | doc m%"
          Mappings for the default language versions of the current project
          https://pre-commit.com/#pre-commit-configyaml---top-level
        "%
        | optional,
      default_stages
        | Array (
          std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'manual,
                'pre-rebase,
                'pre-push,
                'pre-merge-commit,
                'pre-commit,
                'post-rewrite,
                'post-merge,
                'post-commit,
                'post-checkout,
                'commit-msg,
                'prepare-commit-msg,
                'push,
                'merge-commit,
                'commit
              |]
            ]
        )
        | doc m%"
          The default stages of the current project
          https://pre-commit.com/#pre-commit-configyaml---top-level
        "%
        | optional,
      exclude
        | String
        | doc m%"
          A file exclude pattern of the current project
          https://pre-commit.com/#pre-commit-configyaml---top-level
        "%
        | optional,
      fail_fast
        | Bool
        | doc m%"
          Whether stop running hooks after a first failure
          https://pre-commit.com/#pre-commit-configyaml---top-level
        "%
        | optional,
      files
        | String
        | doc m%"
          A file include pattern of the current project
          https://pre-commit.com/#pre-commit-configyaml---top-level
        "%
        | optional,
      minimum_pre_commit_version
        | String
        | doc m%"
          A minimum version of pre-commit
          https://pre-commit.com/#pre-commit-configyaml---top-level
        "%
        | optional,
      repos
        | Array (
          std.contract.any_of
            [
              refs."definitions.meta_repo",
              refs."definitions.local_repo",
              refs."definitions.uri_repo"
            ]
        )
        | doc m%"
          Repository mappings of the current project
          https://pre-commit.com/#pre-commit-configyaml---top-level
        "%,
      ..
    }