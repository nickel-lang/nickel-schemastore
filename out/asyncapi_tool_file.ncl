# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      description
        | String
        | doc "By default scripts read description of repository there project is stored. You can override this behaviour by providing custom description."
        | optional,
      filters
        | {
          categories
            | js2n.array.MinItems 1
            | Array (
              std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      std.enum.TagOrString,
                      [|
                        'ide-extension,
                        'bundler,
                        'cli,
                        'other,
                        'compare-tool,
                        'validator,
                        'mocking-and-testing,
                        'github-action,
                        'framework,
                        'dsl,
                        'ui-component,
                        'editor,
                        'documentation-generator,
                        'directory,
                        'converter,
                        'code-generator,
                        'code-first,
                        'api
                      |]
                    ],
                  String
                ]
            )
            | doc "Categories are used to group tools by different use case, like documentation or code generation. If have a list of fixed categories. If you use different one that your tool lands under \"other\" category. Feel free to add your category through a pull request to AsyncAPI website repository.",
          hasCommercial
            | Bool
            | doc "Indicate if your tool is open source or commercial offering, like SAAS for example"
            | optional,
          language
            | std.contract.any_of
              [
                std.contract.Sequence
                  [
                    std.enum.TagOrString,
                    [|
                      'Groovy,
                      'Shell,
                      'Rust,
                      'Ruby,
                      'R,
                      'YAML,
                      'Markdown,
                      'Scala,
                      'Kotlin,
                      'TypeScript,
                      'Python,
                      '"C#",
                      '"C/C++",
                      'HTML,
                      'JavaScript,
                      'Java,
                      'Go
                    |]
                  ],
                String,
                js2n.array.ArrayOf
                  (std.contract.any_of
                    [
                      std.contract.Sequence
                        [
                          std.enum.TagOrString,
                          [|
                            'Groovy,
                            'Shell,
                            'Rust,
                            'Ruby,
                            'R,
                            'YAML,
                            'Markdown,
                            'Scala,
                            'Kotlin,
                            'TypeScript,
                            'Python,
                            '"C#",
                            '"C/C++",
                            'HTML,
                            'JavaScript,
                            'Java,
                            'Go
                          |]
                        ],
                      String
                    ])
              ]
            | doc "The language referred to is the runtime language selected by the user, not the generator or library language. For example, the Generator written in JavaScript generates Python code from the JavaScript template and the result of generation is a Python app, so the language for Generator is specified as Python. But for the Bundler library, users need to know if it can be integrated into their TypeScript codebase, so its language is specified as TypeScript. If some language in the schema's enum is omitted, it can be added through a pull request to the AsyncAPI website repository."
            | optional,
          technology
            | Array (
              std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      std.enum.TagOrString,
                      [|
                        'Flask,
                        'Jenkins,
                        'Azure,
                        'Scala,
                        'Kubernetes-native,
                        'Saas,
                        'Maven,
                        'Node-red,
                        'Docker,
                        'AWS,
                        'Springboot,
                        '"ASP.NET",
                        '".NET",
                        '"React JS",
                        'Hermes,
                        '"Node js"
                      |]
                    ],
                  String
                ]
            )
            | doc "Provide a list of different technologies used in the tool. Put details useful for tool user and tool contributor."
            | optional,
        },
      links
        | {
          docsUrl
            | String
            | doc "You can provide URL to project documentation in case you have more than just a readme file."
            | optional,
          repoUrl
            | String
            | doc "You can provide URL to project codebase in case you have more than one tool present inside single repository."
            | optional,
          websiteUrl
            | String
            | doc "You can provide URL to the website where your project hosts some demo or project landing page."
            | optional,
        }
        | optional,
      title
        | String
        | doc "Human-readable name of the tool that will be visible to people in the list of tools.",
    }