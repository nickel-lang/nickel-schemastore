# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.file_type" =
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
            ],
      "definitions.file_types" =
        Array (std.contract.Sequence [ refs."definitions.file_type", String ]),
      "definitions.language" =
        std.contract.any_of
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
            ],
      "definitions.stage" =
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
            ],
      "definitions.stages" =
        Array (std.contract.Sequence [ refs."definitions.stage", String ]),
    }
    in
  std.contract.Sequence
      [
        js2n.array.MinItems 1,
        Array
          {
            additional_dependencies
              | Array String
              | doc "(optional) a list of dependencies that will be installed in the environment where this hook gets run. One useful application is to install plugins for hooks such as eslint."
              | optional,
            alias
              | String
              | doc "(optional) allows the hook to be referenced using an additional id."
              | optional,
            always_run
              | Bool
              | doc "(optional) if true this hook will run even if there are no matching files."
              | optional,
            args
              | Array String
              | doc "(optional) list of additional parameters to pass to the hook."
              | optional,
            description
              | String
              | doc "(optional) description of the hook. Used for metadata purposes only."
              | optional,
            entry
              | String
              | doc "entry point - the executable to run. Can also contain arguments that will not be overridden such as `entry: autopep8 -i`.",
            exclude
              | String
              | doc "(optional) exclude files that were matched by files."
              | optional,
            exclude_types
              | refs."definitions.file_types"
              | doc "(optional) pattern of files to exclude."
              | optional,
            fail_fast
              | Bool
              | doc "(optional) if true this hook will run even if there are no matching files."
              | optional,
            files
              | String
              | doc "(optional) the pattern of files to run on."
              | optional,
            id
              | String
              | doc "id of the hook - used in pre-commit-config.yaml.",
            language
              | refs."definitions.language"
              | doc "language of the hook - tells pre-commit how to install the hook.",
            language_version
              | String
              | doc "(optional) see Overriding language version at https://pre-commit.com/#overriding-language-version"
              | optional,
            log_file
              | String
              | doc "(optional) if present, the hook output will additionally be written to a file."
              | optional,
            minimum_pre_commit_version
              | String
              | doc "(optional) allows one to indicate a minimum compatible pre-commit version."
              | optional,
            name
              | String
              | doc "name of the hook - shown during hook execution.",
            pass_filenames
              | Bool
              | doc "(optional) if false no filenames will be passed to the hook."
              | optional,
            require_serial
              | Bool
              | doc "(optional) if true this hook will execute using a single process instead of in parallel."
              | optional,
            stages
              | refs."definitions.stages"
              | doc "(optional) confines the hook to the commit, merge-commit, push, prepare-commit-msg, commit-msg, post-checkout, post-commit, post-merge, post-rewrite, or manual stage. See Confining hooks to run at certain stages in https://pre-commit.com/#confining-hooks-to-run-at-certain-stages"
              | optional,
            types
              | refs."definitions.file_types"
              | doc "(optional) list of file types to run on (AND)."
              | optional,
            types_or
              | refs."definitions.file_types"
              | doc "(optional) list of file types to run on (OR)."
              | optional,
            verbose
              | Bool
              | doc "(optional) if true, forces the output of the hook to be printed even when the hook passes."
              | optional,
          }
      ]