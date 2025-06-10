# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.envVar" =
        {
            key | String | doc "The name of the environment variables",
            value | String | doc "The value of the environment variable",
          },
      "definitions.label" =
        {
            isRegex | Bool | doc "Interpreted the value as regex" | optional,
            key | String | doc "The name of the label",
            value | String | doc "The value of the label",
          },
    }
    in
  {
      commandTests
        | Array
          {
            args
              | Array String
              | doc "The arguments to pass to the command."
              | optional,
            command | String | doc "The command to run in the test.",
            envVars | Array refs."definitions.envVar" | optional,
            excludedError
              | js2n.array.MinItems 1
              | Array String
              | doc "List of regexes that should not match the stderr from running the command."
              | optional,
            excludedOutput
              | js2n.array.MinItems 1
              | Array String
              | doc "List of regexes that should not match the stdout from running the command.."
              | optional,
            exitCode
              | std.number.Integer
              | doc "Exit code that the command should exit with."
              | optional,
            expectedError
              | js2n.array.MinItems 1
              | Array String
              | doc "List of regexes that should match the stderr from running the command."
              | optional,
            expectedOutput
              | js2n.array.MinItems 1
              | Array String
              | doc "List of regexes that should match the stdout from running the command."
              | optional,
            name | String | doc "The name of the test",
            setup
              | Array (Array String)
              | doc "A list of commands (each with optional flags) to run before the actual command under test."
              | optional,
            teardown
              | Array (Array String)
              | doc "A list of commands (each with optional flags) to run after the actual command under test."
              | optional,
            ..
          }
        | doc "A list of command tests"
        | optional,
      fileContentTests
        | Array
          {
            excludedContents
              | js2n.array.MinItems 1
              | Array String
              | doc "List of regexes that should not match the contents of the file"
              | optional,
            expectedContents
              | js2n.array.MinItems 1
              | Array String
              | doc "List of regexes that should match the contents of the file"
              | optional,
            name | String | doc "The name of the test",
            path | String | doc "Path to the file under test",
            ..
          }
        | doc "File content tests open a file on the file system and check its contents. These tests assume the specified file is a file, and that it exists"
        | optional,
      fileExistenceTests
        | Array
          {
            gid
              | Number
              | doc "The expected Unix group ID of the owner of the file or directory."
              | optional,
            isExecutableBy
              | std.enum.TagOrString
              | [| 'other, 'any, 'group, 'owner |]
              | doc "Checks if file is executable by a given user. "
              | optional,
            name | String | doc "The name of the test",
            path | String | doc "Path to the file or directory under test",
            permissions
              | String
              | doc "The expected Unix permission string (e.g. drwxrwxrwx) of the files or directory."
              | optional,
            shouldExist
              | Bool
              | doc "Whether or not the specified file or directory should exist in the file system",
            uid
              | Number
              | doc "The expected Unix user ID of the owner of the file or directory."
              | optional,
            ..
          }
        | doc "File existence tests check to make sure a specific file (or directory) exist within the file system of the image. No contents of the files or directories are checked. These tests can also be used to ensure a file or directory is not present in the file system."
        | optional,
      globalEnvVars
        | js2n.array.MinItems 1
        | Array refs."definitions.envVar"
        | doc "A list of environment variables can optionally be specified as part of the test setup. "
        | optional,
      licenseTests
        | Array
          {
            debian
              | Bool
              | doc "if the image is based on Debian, check where Debian lists all licenses.",
            files
              | js2n.array.MinItems 1
              | Array String
              | doc "A list of other files to check."
              | optional,
            ..
          }
        | doc "License tests check a list of copyright files and makes sure all licenses are allowed at Google. By default it will look at where Debian lists all copyright files, but can also look at an arbitrary list of files."
        | optional,
      metadataTest
        | {
          cmd
            | js2n.array.MinItems 1
            | Array String
            | doc "The CMD specified in the container"
            | optional,
          entrypoint
            | js2n.array.MinItems 1
            | Array String
            | doc "The entrypoint of the container"
            | optional,
          env
            | js2n.array.MinItems 1
            | Array refs."definitions.envVar"
            | doc "A list of environment variable key/value pairs that should be set in the container."
            | optional,
          exposedPorts
            | js2n.array.MinItems 1
            | Array String
            | doc "The ports exposed in the container."
            | optional,
          labels
            | js2n.array.MinItems 1
            | Array refs."definitions.label"
            | doc "A list of image labels key/value pairs that should be set on the container."
            | optional,
          unexposedPorts
            | js2n.array.MinItems 1
            | Array String
            | doc "The ports NOT exposed in the container."
            | optional,
          unmountedVolumes
            | js2n.array.MinItems 1
            | Array String
            | doc "The volumes NOT exposed in the container"
            | optional,
          volumes
            | js2n.array.MinItems 1
            | Array String
            | doc "The volumes exposed in the container."
            | optional,
          workdir
            | String
            | doc "The default working directory of the container."
            | optional,
          ..
        }
        | optional,
      schemaVersion | String | doc "The schema version of Structure Tests.",
    }