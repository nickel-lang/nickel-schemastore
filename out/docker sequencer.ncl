# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.Step" =
        {
            commands
              | Array Dyn
              | doc "A list of commands to execute within the container"
              | optional,
            interactive
              | Bool
              | doc "Keep STDIN open even if not attached"
              | optional,
            local_user
              | Bool
              | doc "Disables the `user` option and executes these commands with the hosts uid and gid."
              | optional,
            privileged
              | Bool
              | doc "Give extended privileges to the commands"
              | optional,
            tty | Bool | doc "Allocate a pseudo-TTY" | optional,
            user
              | String
              | doc "Username or UID (format: <name|uid>[:<group|gid>])"
              | optional,
            workdir
              | String
              | doc "Working directory inside the container"
              | optional,
          },
    }
    in
  {
      background_task
        | Array Dyn
        | doc "Task with which to keep the container alive while executing commands"
        | optional,
      cpus | String | doc "Number of CPUs" | optional,
      docker_exec_shell
        | Array Dyn
        | doc "Shell in which to execute each sequence step command"
        | optional,
      entrypoint
        | String
        | doc "Overwrite the default ENTRYPOINT of the image"
        | optional,
      env | Array Dyn | doc "Set environment variables" | optional,
      env_file
        | Array Dyn
        | doc "Read in files of environment variables"
        | optional,
      image | String | doc "The docker image name" | optional,
      init
        | Bool
        | doc "Run an init inside the container that forwards signals and reaps processes"
        | optional,
      interactive
        | Bool
        | doc "Keep STDIN open even if not attached"
        | optional,
      local_user
        | Bool
        | doc "Disables the `user` option and runs the container with the hosts uid and gid."
        | optional,
      memory | std.number.Integer | doc "Memory limit in bytes" | optional,
      mount
        | Array Dyn
        | doc "Attach a filesystem mount to the container"
        | optional,
      name | String | doc "Assign a name to the container" | optional,
      network | String | optional,
      platform
        | String
        | doc "Set platform if server is multi-platform capable"
        | optional,
      privileged
        | Bool
        | doc "Give extended privileges to this container"
        | optional,
      publish
        | Array Dyn
        | doc "Publish a container's port(s) to the host"
        | optional,
      pull
        | std.enum.TagOrString
        | [| 'never, 'missing, 'always |]
        | doc "Pull image before running (\"always\"|\"missing\"|\"never\") (default \"missing\")"
        | optional,
      read_only
        | Bool
        | doc "Mount the container's root filesystem as read only"
        | optional,
      rm
        | Bool
        | doc "Automatically remove the container when it exits"
        | optional,
      runtime | String | doc "Runtime to use for this container" | optional,
      security_opt | Array Dyn | doc "Security Options" | optional,
      sequence | Array refs."definitions.Step" | optional,
      tty | Bool | doc "Allocate a pseudo-TTY" | optional,
      ulimit | String | doc "Ulimit options" | optional,
      user
        | String
        | doc "Username or UID (format: <name|uid>[:<group|gid>])"
        | optional,
      volumes | Array Dyn | doc "Bind mount volumes" | optional,
      volumes_from
        | Array Dyn
        | doc "Mount volumes from the specified container(s)"
        | optional,
      workdir
        | String
        | doc "Working directory inside the container"
        | optional,
    }