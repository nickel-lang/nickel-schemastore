# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.Dependencies" = Array String,
      "definitions.InputResource" =
        std.contract.any_of
            [
              String,
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        extensions = js2n.Nullable (js2n.array.ArrayOf String),
                        paths = js2n.array.ArrayOf String,
                      },
                  required = { paths = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { cmd_stdout = String, },
                  required = { cmd_stdout = true, },
                }
            ],
      "definitions.InputResources" =
        Array (
            std.contract.Sequence
              [
                refs."definitions.InputResource",
                std.contract.any_of [ { _ | Dyn }, String ]
              ]
          ),
      "definitions.OutputResource" =
        std.contract.any_of
            [
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        extensions = js2n.Nullable (js2n.array.ArrayOf String),
                        paths = js2n.array.ArrayOf String,
                      },
                  required = { paths = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { cmd_stdout = String, },
                  required = { cmd_stdout = true, },
                }
            ],
      "definitions.OutputResources" =
        Array (
            std.contract.Sequence
              [ refs."definitions.OutputResource", { _ | Dyn } ]
          ),
      "definitions.Target" =
        std.contract.any_of
            [
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        build = String,
                        dependencies =
                          std.contract.Sequence
                              [ refs."definitions.Dependencies", Array Dyn ],
                        input =
                          std.contract.Sequence
                              [ refs."definitions.InputResources", Array Dyn ],
                        output =
                          std.contract.Sequence
                              [ refs."definitions.OutputResources", Array Dyn ],
                      },
                  required = { build = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        dependencies =
                          std.contract.Sequence
                              [ refs."definitions.Dependencies", Array Dyn ],
                        input =
                          std.contract.Sequence
                              [ refs."definitions.InputResources", Array Dyn ],
                        service = String,
                      },
                  required = { service = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        dependencies =
                          std.contract.Sequence
                              [ refs."definitions.Dependencies", Array Dyn ],
                      },
                  required = { dependencies = true, },
                }
            ],
    }
    in
  {
      imports
        | { _ | String }
        | doc m%"
          Import definitions from other Žinoma projects.
          
          `imports` should be an object, the keys being the project names and the values their respective paths.
          
          Before importing a project, you should make sure this project has its name defined. You should use the same name as key in the `imports` object.
          
          Once a project is imported, targets from that project can be referenced by specifying their fully qualified name: `imported_project_name::target_name`.
          
          __Example__
          
          `packages/api/zinoma.yml`:
          
          ```yaml name: api
          
          targets: test: build: cargo test ```
          
          `packages/webapp/zinoma.yml`:
          
          ```yaml name: webapp
          
          targets: test: build: cargo test ```
          
          `./zinoma.yml`:
          
          ```yaml imports: api: packages/api webapp: packages/webapp
          
          targets: test_all: dependencies: [api::test, webapp::test] ```
          
          In this example, the target `test_all` depend from targets defined in different projects.
        "%
        | optional,
      name
        | js2n.Nullable String
        | doc m%"
          Name of the project.
          
          A project name must be a string. It should start with an alphanumeric character or `_` and contain only alphanumeric characters, `-`, or `_`.
          
          Project names should be unique. Two projects cannot have the same name.
          
          __Example__
          
          ```yaml name: my_project ```
        "%
        | optional,
      targets
        | { _ | refs."definitions.Target" }
        | doc m%"
          Targets (aka tasks) of this project.
          
          [`Targets`] represent commands and scripts to execute in your build flow.
          
          [`Targets`]: struct.Target.html
          
          Targets run in parallel by default. To force targets to run sequentially, you can define [`dependencies`] on other targets.
          
          [`dependencies`]: enum.Target.html#variant.Build.field.dependencies
          
          Each target must have a unique name inside the project. The target name must be a string. It should start with an alphanumeric character or `_` and contain only alphanumeric characters, `-`, or `_`.
          
          __Example__
          
          ```yaml targets: speak_cow: build: echo 'Moo' speak_dog: build: echo 'Woof!' ```
          
          In this example:
          
          - `zinoma speak_cow` will print `Moo` - `zinoma speak_dog` will print `Woof!` - `zinoma speak_cow speak_dog` will print both `Moo` and `Woof!` (not necessarily in this order)
        "%
        | optional,
    }