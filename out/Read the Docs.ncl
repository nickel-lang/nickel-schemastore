# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      build
        | std.contract.any_of
          [
            js2n.record.Required [ "tools" ],
            js2n.record.Required [ "commands" ]
          ]
        | {
          apt_packages
            | Array String
            | doc "List of packages to be installed with apt-get."
            | optional,
          commands
            | Array String
            | doc "Override the whole build process with custom commands. When using this option, none of the commands from build.jobs will be executed."
            | optional,
          jobs
            | {
              build
                | {
                  epub | Array String | optional,
                  html | Array String | optional,
                  htmlzip | Array String | optional,
                  pdf | Array String | optional,
                }
                | doc "Override the default build process."
                | optional,
              create_environment
                | Array String
                | doc "Override the default environment creation process."
                | optional,
              install
                | Array String
                | doc "Override the default installation process."
                | optional,
              post_build | Array String | optional,
              post_checkout | Array String | optional,
              post_create_environment | Array String | optional,
              post_install | Array String | optional,
              post_system_dependencies | Array String | optional,
              pre_build | Array String | optional,
              pre_create_environment | Array String | optional,
              pre_install | Array String | optional,
              pre_system_dependencies | Array String | optional,
            }
            | doc "Run custom commands at any point in the build process"
            | optional,
          os
            | std.enum.TagOrString
            | [|
              'ubuntu-lts-latest,
              '"ubuntu-24.04",
              '"ubuntu-22.04",
              '"ubuntu-20.04"
            |]
            | doc "Operating system to be used in the build.",
          tools
            | js2n.record.MinProperties 1
            | {
              golang
                | std.enum.TagOrString
                | [|
                  'latest,
                  '"1.24",
                  '"1.23",
                  '"1.22",
                  '"1.21",
                  '"1.20",
                  '"1.19",
                  '"1.18",
                  '"1.17"
                |]
                | optional,
              nodejs
                | std.enum.TagOrString
                | [| 'latest, '"23", '"22", '"20", '"19", '"18", '"16", '"14" |]
                | optional,
              python
                | std.enum.TagOrString
                | [|
                  'mambaforge-latest,
                  '"mambaforge-23.11",
                  '"mambaforge-22.9",
                  '"mambaforge-4.10",
                  'miniconda-latest,
                  '"miniconda3-3.12-24.9",
                  '"miniconda3-3.12-24.1",
                  '"miniconda3-4.7",
                  'latest,
                  '"3.13",
                  '"3.12",
                  '"3.11",
                  '"3.10",
                  '"3.9",
                  '"3.8",
                  '"3.7",
                  '"3.6",
                  '"3",
                  '"2.7"
                |]
                | optional,
              ruby
                | std.enum.TagOrString
                | [| 'latest, '"3.4", '"3.3" |]
                | optional,
              rust
                | std.enum.TagOrString
                | [|
                  'latest,
                  '"1.86",
                  '"1.82",
                  '"1.78",
                  '"1.75",
                  '"1.70",
                  '"1.64",
                  '"1.61",
                  '"1.55"
                |]
                | optional,
            }
            | doc "Tools and their version to be used in the build."
            | optional,
        }
        | doc "Configuration for the documentation build process."
        | optional,
      conda
        | {
          environment
            | String
            | doc "The path to the Conda environment file from the root of the project.",
          ..
        }
        | doc "Configuration for Conda support."
        | optional,
      formats
        | std.contract.any_of
          [
            Array (
              std.contract.Sequence
                [ std.enum.TagOrString, [| 'epub, 'pdf, 'htmlzip |] ]
            ),
            std.contract.Sequence [ std.enum.TagOrString, [| 'all |] ]
          ]
        | doc "Formats of the documentation to be built."
        | optional,
      mkdocs
        | {
          configuration | String | doc "The path to the mkdocs.yml file.",
          fail_on_warning
            | Bool
            | doc "Add the --strict option to mkdocs build."
            | optional,
        }
        | doc "Configuration for mkdocs documentation."
        | optional,
      python
        | {
          install
            | Array (
              std.contract.any_of
                [
                  js2n.Null,
                  Bool,
                  Number,
                  String,
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { requirements = String, },
                      required = { requirements = true, },
                    },
                  Array Dyn,
                  js2n.Null,
                  Bool,
                  Number,
                  String,
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            extra_requirements = js2n.array.ArrayOf String,
                            method =
                              std.contract.Sequence
                                  [
                                    std.enum.TagOrString,
                                    [| 'setuptools, 'pip |]
                                  ],
                            path = String,
                          },
                      required = { path = true, },
                    },
                  Array Dyn
                ]
            )
            | doc "Installation of packages and requirements."
            | optional,
        }
        | doc "Configuration of the Python environment to be used."
        | optional,
      search
        | {
          ignore | Array String | doc "List of patterns." | optional,
          ranking
            | std.contract.any_of
              [
                js2n.Null,
                Bool,
                Number,
                String,
                {
                  _ | std.contract.Sequence
                    [ js2n.number.Maximum 10, js2n.number.Minimum (-10) ]
                },
                Array Dyn
              ]
            | doc "Map of patterns to ranks."
            | optional,
        }
        | optional,
      sphinx
        | {
          builder
            | std.enum.TagOrString
            | [| 'singlehtml, 'dirhtml, 'html |]
            | doc "The builder type for the sphinx documentation."
            | optional,
          configuration | String | doc "The path to the conf.py file.",
          fail_on_warning
            | Bool
            | doc "Add the -W option to sphinx-build."
            | optional,
        }
        | doc "Configuration for sphinx documentation."
        | optional,
      submodules
        | {
          exclude
            | std.contract.any_of
              [
                Array String,
                std.contract.Sequence [ std.enum.TagOrString, [| 'all |] ]
              ]
            | doc "List of submodules to be ignored."
            | optional,
          include
            | std.contract.any_of
              [
                Array String,
                std.contract.Sequence [ std.enum.TagOrString, [| 'all |] ]
              ]
            | doc "List of submodules to be included."
            | optional,
          recursive | Bool | doc "Do a recursive clone?" | optional,
        }
        | doc "Submodules configuration."
        | optional,
      version | js2n.Enum [ 2 ] | doc "The version of the spec to use.",
    }