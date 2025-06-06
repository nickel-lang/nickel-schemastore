# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      base_directory
        | js2n.string.MinLength 1
        | doc m%"
          aclgen and pol2yaml will search this directory recursively for policy files to process, except if the flag `--policy_file` is used to give a specific input file (aclgen only).
          
          Relative paths that appear in 'include' directives will be resolved against base_directory.
          
          The default value is './policies'.
        "%
        | optional,
      debug
        | Bool
        | doc "Causes aclgen to display very detailed log messages if true. The default value is false."
        | optional,
      definitions_directory
        | js2n.string.MinLength 1
        | doc m%"
          All network and service definition files in this directory will be loaded and used to resolve symbolic network and service names. 
          
          Unlike base_directory, definitions_directory is not searched recursively for input files.
          
          The default value is './def'.
        "%
        | optional,
      exp_info
        | std.number.Integer
        | doc m%"
          aclgen will produce a warning if it encounters a term set to expire in the near future. Expired terms are ignored. Setting exp_info controls the number of weeks ahead that aclgen will check for soon-to-expire terms.
          
          The default value is '2' (two weeks).
        "%
        | optional,
      max_renderers
        | std.number.Integer
        | doc m%"
          Controls the number of parallel processes used by aclgen to render ACLs. The aclgen program uses Python's OS process-based multiprocessing, so setting max_renderers to '2' would cause aclgen to spawn two OS processes that will generate ACLs.
          
          Setting max_renderers to '1' will disable multiprocessing.
          
          By default, max_renderers is set to '10'. Users may wish to set this to the number of available CPUs on the current system.
        "%
        | optional,
      optimize
        | Bool
        | doc m%"
          Causes aclgen to produce a more compact address book by collapsing adjacent or overlapping CIDR expressions within the same network.
          
          On some platforms (Juniper SRX and platforms configured with the 'object-group' option) address book compression is restricted to only collapse addresses that share the same network token (name).
          
          This flag is not enabled by default, although a secondary address book compression pass is always performed for Juniper SRX and Palo Alto Networks firewalls regardless of this setting.
        "%
        | optional,
      output_directory
        | js2n.string.MinLength 1
        | doc m%"
          aclgen will place all generated ACLs in this directory. For `aclgen` the default value is the current directory.
          
          pol2yaml will place each converted file adjacent to its input file by default. If output_directory is given, pol2yaml will mirror the directory structure of the input files in the output_directory, potentially creating directories in the process.
        "%
        | optional,
      recursive | Bool | doc "UNUSED. This field is not used." | optional,
      shade_check
        | Bool
        | doc "Causes aclgen to produce a warning if any unreachable term is encountered if true. The default value is false."
        | optional,
      verbose
        | Bool
        | doc "UNUSED. This field is not used. To get detailed log messages, use 'debug'."
        | optional,
    }