# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      "build.configuration"
        | js2n.array.Items
          [
            {
              buildDirectory
                | String
                | doc "The directory to build the project in"
                | optional,
              name | String | doc "The name of the build configuration",
              steps
                | js2n.array.Items
                  [
                    {
                      arguments
                        | js2n.array.Items [ String ] js2n.Always
                        | doc "Arguments to pass to the executable"
                        | optional,
                      executable | String | doc "The executable to run",
                      workingDirectory
                        | String
                        | doc "The working directory to run the executable in"
                        | optional,
                      ..
                    }
                  ] js2n.Always
                | doc "The steps required for the build",
              ..
            }
          ] js2n.Always
        | doc "A list of build configurations"
        | optional,
      "files.exclude"
        | js2n.array.Items [ String ] js2n.Always
        | doc "Files to exclude from the project"
        | optional,
      "project.name" | String | doc "The name of the project" | optional,
      targets
        | js2n.array.Items
          [
            {
              arguments
                | js2n.array.Items [ String ] js2n.Always
                | doc "Arguments to pass to the executable"
                | optional,
              executable | String | doc "The executable to run",
              name | String | doc "The name of the target",
              workingDirectory
                | String
                | doc "The working directory to run the executable in"
                | optional,
              ..
            }
          ] js2n.Always
        | doc "A list of targets"
        | optional,
      ..
    }