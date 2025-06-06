# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.backupName" = js2n.string.MinLength 1,
      "definitions.clearRemoteDir" = Bool,
      "definitions.passphrase" = js2n.string.MinLength 1,
      "definitions.removeLocalDir" = Bool,
      "definitions.script" = js2n.string.MinLength 1,
    }
    in
  {
      "$schema"
        | js2n.string.MinLength 1
        | doc "JSON Schema for deployed."
        | optional,
      backupName | refs."definitions.backupName" | optional,
      clearRemoteDir | refs."definitions.clearRemoteDir" | optional,
      cluster
        | js2n.array.UniqueItems
        | Array String
        | doc "Alias collection of environment to be deployed."
        | optional,
      modeList
        | js2n.array.MinItems 1
        | js2n.array.UniqueItems
        | Array
          {
            backupName | refs."definitions.backupName" | optional,
            backupPath
              | js2n.string.MinLength 2
              | doc "Backup path."
              | optional,
            clearRemoteDir | refs."definitions.clearRemoteDir" | optional,
            host
              | js2n.string.MinLength 1
              | doc "Hostname or IP address of the server.",
            localPath | js2n.string.MinLength 1 | doc "Local upload path.",
            mode
              | js2n.string.MinLength 1
              | doc "Deployment environment alias.",
            name | js2n.string.MinLength 1 | doc "Deployment environment name.",
            passphrase | refs."definitions.passphrase" | optional,
            password
              | js2n.string.MinLength 1
              | doc "Password for password-based user authentication."
              | optional,
            port
              | std.number.Integer
              | js2n.number.Minimum 1
              | doc "Port number of the server.",
            privateKey | std.contract.any_of [ { _ | Dyn }, String ] | optional,
            remotePath | js2n.string.MinLength 2 | doc "Deployment path.",
            removeLocalDir | refs."definitions.removeLocalDir" | optional,
            script | refs."definitions.script" | optional,
            username
              | js2n.string.MinLength 1
              | doc "Username for authentication.",
          },
      passphrase | refs."definitions.passphrase" | optional,
      plugin
        | js2n.array.UniqueItems
        | Array (
          std.contract.any_of
            [ String, js2n.array.Items [ String, { _ | Dyn } ] js2n.Always ]
        )
        | doc "List of plugins to load and use."
        | optional,
      privateKey | std.contract.any_of [ { _ | Dyn }, String ] | optional,
      projectName
        | js2n.string.MinLength 1
        | doc "Name of project to be released.",
      removeLocalDir | refs."definitions.removeLocalDir" | optional,
      script | refs."definitions.script" | optional,
    }