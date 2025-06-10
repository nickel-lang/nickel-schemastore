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
        | {
          cuda
            | String
            | doc "Cog automatically picks the correct version of CUDA to install, but this lets you override it for whatever reason."
            | optional,
          cudnn
            | String
            | doc "Cog automatically picks the correct version of cuDNN to install, but this lets you override it for whatever reason."
            | optional,
          fast
            | Bool
            | doc "A flag to enable the experimental fast-push feature from a config level."
            | optional,
          gpu
            | Bool
            | doc "Enable GPUs for this model. When enabled, the [nvidia-docker](https://github.com/NVIDIA/nvidia-docker) base image will be used, and Cog will automatically figure out what versions of CUDA and cuDNN to use based on the version of Python, PyTorch, and Tensorflow that you are using."
            | optional,
          pre_install
            | js2n.Nullable (Array String)
            | doc "A list of setup commands to run in the environment before your Python packages are installed."
            | optional,
          python_overrides
            | String
            | doc "A file in the format of pip requirements that specifies python overrides."
            | optional,
          python_packages
            | js2n.Nullable (Array String)
            | doc "A list of Python packages to install, in the format `package==version`."
            | optional,
          python_requirements
            | String
            | doc "A pip requirements file specifying the Python packages to install."
            | optional,
          python_version
            | std.contract.any_of [ Number, String ]
            | doc "The minor (`3.8`) or patch (`3.8.1`) version of Python to use."
            | optional,
          run
            | js2n.Nullable
              (Array (
                std.contract.any_of
                  [
                    String,
                    {
                      command | String,
                      mounts
                        | Array
                          {
                            id | String,
                            target | String,
                            type | std.enum.TagOrString | [| 'secret |],
                            ..
                          }
                        | optional,
                      ..
                    }
                  ]
              ))
            | doc "A list of setup commands to run in the environment after your system packages and Python packages have been installed. If you're familiar with Docker, it's like a `RUN` instruction in your `Dockerfile`."
            | optional,
          system_packages
            | js2n.Nullable (Array String)
            | doc "A list of Ubuntu APT packages to install."
            | optional,
        }
        | doc "This stanza describes how to build the Docker image your model runs in."
        | optional,
      concurrency
        | {
          default_target
            | std.number.Integer
            | doc "The default target for number of concurrent predictions. This setting can be used by an autoscaler to determine when to scale a deployment of a model up or down."
            | optional,
          max
            | std.number.Integer
            | doc "The maximum number of concurrent predictions.",
        }
        | doc "The concurrency settings for the model."
        | optional,
      environment
        | js2n.Nullable
          (Array (js2n.string.Matches "^[A-Za-z_][A-Za-z0-9_]*=[^\\s]+$"))
        | doc "A list of environment variables to make available during builds and at runtime, in the format `NAME=value`"
        | optional,
      image
        | String
        | doc "The name given to built Docker images. If you want to push to a registry, this should also include the registry name."
        | optional,
      predict
        | String
        | doc "The pointer to the `Predictor` object in your code, which defines how predictions are run on your model."
        | optional,
      tests
        | js2n.Nullable (Array ({ _ | Dyn }))
        | doc "A list of test cog commands to run."
        | optional,
      train
        | String
        | doc "The pointer to the `Predictor` object in your code, which defines how predictions are run on your model."
        | optional,
    }