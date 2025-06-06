# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      changer
        | {
          coordinates
            | {
              md
                | String
                | doc "MD step from the 'mds' section that is used for relaxation MDs"
                | optional,
              slow_growth
                | std.enum.TagOrString
                | [| '"", 'morse_only, 'full, '"true", 'yes |]
                | doc "Whether the chosen MD step is a slow growth/free-energy simulation to relax after applying a reaction recipe. `true` and `yes` are equivalent to `full` for backwards compatibility. `morse_only` disables using pairs to transition non-bonded interactions as well and only uses morse bonds to emulate simple non-bonded interactions. The empty string means no slow growth."
                | optional,
              slow_growth_pairs
                | std.contract.any_of
                  [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ]
                | doc "This is deprecated. Specify in `config.changer.coordinates.slow_growth` instead."
                | optional,
              ..
            }
            | doc "Settings related to coordinate/geometry changes when applying a recipe",
          topology
            | {
              parameterization
                | std.enum.TagOrString
                | [| 'basic, 'grappa |]
                | doc "Parameterization scheme that is used on the topology file after changes to it"
                | optional,
              parameterization_kwargs
                | {  .. }
                | doc "Keyword argument container for the selected parameterization scheme"
                | optional,
            }
            | doc "Settings for parameter changes in the topology file",
          ..
        }
        | doc "Settings for applying a reaction recipe",
      cwd
        | String
        | doc "Working directory. Default is current working directory"
        | optional,
      dryrun
        | Bool
        | doc "Don't run the actual simulations, just print the tasks"
        | optional,
      edr
        | String
        | doc ".edr file of a finished simulation for starting directly with a reaction"
        | optional,
      ff
        | String
        | doc "Force field directory (looks for .ff in cwd if not set)"
        | optional,
      gmx_mdrun_flags
        | String
        | doc "Flags passed to gmx mdrun. Default `-maxh 24 -dlb yes`"
        | optional,
      gro | String | doc "Coordinate file" | optional,
      gromacs_alias
        | String
        | doc "Gromacs alias. e.g. `gmx` or `mpirun gmx_mpi`"
        | optional,
      grompp_prefix
        | String
        | doc "Prefix command for grompp execution on non MPI compiled clusters, e.g., 'srun --ntasks=1'."
        | optional,
      kmc
        | std.enum.TagOrString
        | [|
          'dummy_first,
          'multi_rfkmc,
          'extrande_mod,
          'extrande,
          'frm,
          'rfkmc,
          '""
        |]
        | doc "KMC algorithm overwrite. Should be set by the reactions, but can be changed here. Not all reactions may support all algorithms."
        | optional,
      log
        | {
          file
            | String
            | doc "Logfile name (will result in a path relative to `out`)"
            | optional,
          level
            | std.enum.TagOrString
            | [| 'CRITICAL, 'ERROR, 'WARNING, 'INFO, 'DEBUG |]
            | doc "Loglevel"
            | optional,
        }
        | doc "Settings for logging"
        | optional,
      max_hours
        | std.number.Integer
        | doc "Stop KIMMDY after max_hours hours. Set this lower than the limit of your HPC cluster for use with a re-submit jobscript. 0 Means no limit."
        | optional,
      max_tasks
        | std.number.Integer
        | doc "Maximum number of tasks to run. This is useful when a task in the sequence can dymanically add more tasks. 0 means no limit."
        | optional,
      mdp
        | String
        | doc ".mdp file of a finished simulation for starting directly with a reaction"
        | optional,
      mdrun_prefix
        | String
        | doc "Prefix command for mdrun execution on non MPI compiled clusters, e.g., 'srun --ntasks=1'."
        | optional,
      mds
        | js2n.record.Record
          {
            additional = 'Some Dyn,
            patterns =
              {
                  ".*" =
                    {
                        mdp | String | doc "MDP file for the MD step",
                        use_plumed
                          | Bool
                          | doc "Whether plumed should be used for this run or not"
                          | optional,
                      },
                },
            properties = {},
            required = {},
          }
        | doc "Settings for MD steps, e.g. mdp files, plumed files, etc."
        | optional,
      multi_kmc
        | std.number.Integer
        | doc "Number of reactions to be executed in one step by a `multi` variant of a KMC algorithm."
        | optional,
      name
        | String
        | doc "Used for output folder if `out` is not specified"
        | optional,
      ndx | String | doc "Gromaxs index file" | optional,
      out | String | doc "Output folder" | optional,
      parameterize_at_setup
        | Bool
        | doc "parameterize the topology during the setup task"
        | optional,
      plumed | String | doc ".dat file containing plumed config" | optional,
      radicals
        | String
        | doc "space-separated string of radical atom ids, can be empty"
        | optional,
      reactions
        | {
          dummyreaction
            | {
              example
                | Number
                | doc "This is an example of an option for a reaction."
                | optional,
              example2
                | String
                | doc "This is another example of an option for a reaction."
                | optional,
              kmc
                | std.enum.TagOrString
                | [| 'extrande_mod, 'extrande, 'frm, 'rfkmc |]
                | doc "KMC algorithm for this reaction."
                | optional,
            }
            | doc "This reaction does _nothing_ and is only here to demonstrate the syntax."
            | optional,
          hat_naive
            | {
              frequency_factor
                | js2n.number.Minimum 1
                | doc "Frequency factor"
                | optional,
              h_cutoff | Number | doc "Cutoff for H atom" | optional,
              kmc
                | std.enum.TagOrString
                | [| 'extrande_mod, 'extrande, 'frm, 'rfkmc |]
                | doc "KMC algorithm for this reaction."
                | optional,
              polling_rate | Number | doc "Polling rate" | optional,
            }
            | doc "Settings for naive HAT reaction"
            | optional,
          homolysis
            | {
              arrhenius_equation
                | {
                  frequency_factor
                    | js2n.number.Minimum 0
                    | doc "Frequency factor",
                  temperature | js2n.number.Minimum 0 | doc "Temperature",
                }
                | doc "For setting values in the arrhenius equation"
                | optional,
              check_bound
                | Bool
                | doc "Check the topology for bonds between plumed atom pairs"
                | optional,
              edis | String | doc "Dissociation energies data file",
              itp | String | doc "Additional itp file with bonded parameters",
              kmc
                | std.enum.TagOrString
                | [| 'multi_rfkmc, 'extrande_mod, 'extrande, 'frm, 'rfkmc |]
                | doc "KMC algorithm for this reaction."
                | optional,
            }
            | doc "Settings for homolysis reactions"
            | optional,
          ..
        }
        | doc "Settings for reactions"
        | optional,
      residuetypes
        | String
        | doc "GROMACS rtp file that contains residuetypes. Looks for `aminoacids.rtp` it not set. KIMMDY will first look in the current working directory and then relative to the forecfield directory."
        | optional,
      restart
        | Bool
        | doc "Restart or continue from a previous run (in config.out) instead of starting from scratch"
        | optional,
      save_recipes
        | Bool
        | doc "Save recipes as csv during the reactions step"
        | optional,
      sequence
        | Array (
          std.contract.any_of
            [
              String,
              {
                mult
                  | std.number.Integer
                  | js2n.number.Minimum 1
                  | doc "Multiplicity of the task",
                tasks
                  | Array (
                    std.contract.any_of
                      [
                        String,
                        {
                          mult
                            | std.number.Integer
                            | js2n.number.Minimum 1
                            | doc "Multiplicity of the task",
                          tasks | Array String | doc "List of tasks",
                        }
                      ]
                  )
                  | doc "List of tasks",
              }
            ]
        )
        | doc "List of tasks. Each task can be a string (the name of the task) or an object with the task name and a multiplicity `mult: <int>`",
      skip_truncation
        | Bool
        | doc "Don't truncate trajectories to the time at which a reaction occurs. This is useful when only the reaction rates are interesting and it is not required to continue the simulation after a reaction."
        | optional,
      slurm
        | {
          N | std.number.Integer | doc "Number of nodes" | optional,
          cpus_per_task | std.number.Integer | doc "cpus per task" | optional,
          gpus | std.number.Integer | doc "n gpus" | optional,
          mincpus | std.number.Integer | doc "mincpus" | optional,
          ntasks_per_node
            | std.number.Integer
            | doc "n tasks per node"
            | optional,
          runcmd
            | String
            | doc "Command to (re)submit the jobscript. Default is `sbatch`. For local testing replace with an empty string do run the jobscript directly."
            | optional,
        }
        | doc "SLURM HPC options"
        | optional,
      tau_scale
        | Number
        | doc "Scaling parameter for tau in the extrande kmc algorithm."
        | optional,
      top | String | doc "Topology file" | optional,
      topology
        | {
          reactive
            | {
              exclude
                | String
                | doc "Explicitly exclude a moleculetype or a list as a space-separated string. For example the lipid moleculetype in a bilayer simulation e.g. `DPPC POPC'`"
                | optional,
              include
                | String
                | doc "Explicitly include a moleculetype or list of moleculetypes as a space-separated string."
                | optional,
              nrexcl
                | std.number.Integer
                | doc "Explictly set the nrexcl value for the Reactive moleculetype. By default the value is taken from the first found reactive moleculetype."
                | optional,
              ..
            }
            | doc "Specify what moleculetypes will be part of the Reactive moleculetype. By default, solvent and ions are excluded."
            | optional,
          ..
        }
        | doc "Settings for handling the topology file."
        | optional,
      tpr
        | String
        | doc ".tpr file of a finished simulation for starting directly with a reaction"
        | optional,
      trr
        | String
        | doc ".trr file of a finished simulation for starting directly with a reaction"
        | optional,
      xtc
        | String
        | doc ".xtc file of a finished simulation for starting directly with a reaction"
        | optional,
    }