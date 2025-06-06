# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      authors
        | Array String
        | doc "A list of authors, along with their contact email"
        | optional,
      crystal
        | String
        | doc "A restriction to indicate what Crystal versions are supported"
        | optional,
      dependencies
        | {
          _ | {
            bitbucket
              | String
              | doc "Bitbucket repository URL as user/repo"
              | optional,
            bookmark
              | String
              | doc "Install the specified bookmark of a Mercurial dependency"
              | optional,
            branch
              | String
              | doc "Install the specified branch of a Git dependency"
              | optional,
            codeberg
              | String
              | doc "Codeberg repository URL as user/repo"
              | optional,
            commit
              | String
              | doc "Install the specified commit of a Git, Mercurial, or Fossil dependency"
              | optional,
            fossil | String | doc "A Fossil repository URL" | optional,
            git | String | doc "A Git repository URL" | optional,
            github
              | String
              | doc "GitHub repository URL as user/repo"
              | optional,
            gitlab
              | String
              | doc "GitLab repository URL as user/repo"
              | optional,
            hg | String | doc "A Mercurial repository URL" | optional,
            path | String | doc "A local path to the dependency" | optional,
            tag
              | String
              | doc "Install the specified tag of a Git, Mercurial, or Fossil dependency"
              | optional,
            version
              | String
              | doc "A version requirement for the dependency"
              | optional,
          }
        }
        | doc m%"
          A list of required dependencies
          https://github.com/crystal-lang/shards/blob/master/docs/shard.yml.adoc#dependency-attributes
        "%
        | optional,
      description
        | String
        | doc "A single line description of the project"
        | optional,
      development_dependencies
        | {
          _ | {
            bitbucket
              | String
              | doc "Bitbucket repository URL as user/repo"
              | optional,
            bookmark
              | String
              | doc "Install the specified bookmark of a Mercurial dependency"
              | optional,
            branch
              | String
              | doc "Install the specified branch of a Git dependency"
              | optional,
            codeberg
              | String
              | doc "Codeberg repository URL as user/repo"
              | optional,
            commit
              | String
              | doc "Install the specified commit of a Git, Mercurial, or Fossil dependency"
              | optional,
            fossil | String | doc "A Fossil repository URL" | optional,
            git | String | doc "A Git repository URL" | optional,
            github
              | String
              | doc "GitHub repository URL as user/repo"
              | optional,
            gitlab
              | String
              | doc "GitLab repository URL as user/repo"
              | optional,
            hg | String | doc "A Mercurial repository URL" | optional,
            path | String | doc "A local path to the dependency" | optional,
            tag
              | String
              | doc "Install the specified tag of a Git, Mercurial, or Fossil dependency"
              | optional,
            version
              | String
              | doc "A version requirement for the dependency"
              | optional,
          }
        }
        | doc m%"
          A list of dependencies required to work on the project, but not necessary to build and run the project
          https://github.com/crystal-lang/shards/blob/master/docs/shard.yml.adoc#dependency-attributes
        "%
        | optional,
      documentation
        | String
        | doc "The URL to a website providing the project's documentation for online browsing"
        | optional,
      executables
        | Array String
        | doc "A list of executables to be installed"
        | optional,
      homepage | String | doc "The URL of the project's homepage" | optional,
      libraries
        | { _ | String }
        | doc "A list of shared libraries the shard tries to link to"
        | optional,
      license
        | String
        | doc "An SPDX license expression or an URL to a license file."
        | optional,
      name
        | js2n.string.MaxLength 50
        | js2n.string.Matches
          "^(?!.*__|.*--|.*crystal|[0-9_-])[a-z0-9_-]+(?<![_-])$"
        | doc "The name of the project",
      repository
        | String
        | doc "The URL of the project's canonical repository"
        | optional,
      scripts
        | {
          postinstall
            | String
            | doc "Will be run whenever the dependency is installed or upgraded in a project that requires it"
            | optional,
        }
        | doc "Script hooks to run"
        | optional,
      targets
        | {
          _ | {
            main
              | String
              | doc "The main source file to compile for this target",
          }
        }
        | doc "A list of targets to build"
        | optional,
      version
        | js2n.string.Matches "^(?!.*\\.\\.|.*--)[0-9a-zA-Z.-]+$"
        | doc "The version number of the project",
    }