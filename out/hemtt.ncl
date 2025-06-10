# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.is-parallel-true" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              { parallel | js2n.Enum [ true ] | optional, .. },
              Array Dyn
            ],
      "definitions.parallel-requires-foreach-to-be-true" =
        std.contract.any_of
            [
              std.contract.not refs."definitions.is-parallel-true",
              js2n.Null,
              Bool,
              Number,
              String,
              js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = {},
                  properties = { foreach = js2n.Enum [ true ], },
                  required = { foreach = true, },
                },
              Array Dyn
            ],
    }
    in
  {
      author | js2n.string.Matches "^(.*)$" | doc "Author of the project.",
      exclude
        | Array (js2n.string.Matches "^(.*)$")
        | doc "HEMTT will exclude matching files when building."
        | optional,
      files
        | Array (js2n.string.Matches "^(.*)$")
        | doc "HEMTT will copy the files to the release directory after a successful release build. Supports glob patterns."
        | optional,
      folder_optionals
        | Bool
        | doc "HEMTT will by default build optionals into their own mod folders, which can be directly launched by the user. This can be turned off to build optional PBOs directly into optionals folder."
        | optional,
      headerexts
        | Array (js2n.string.Matches "^(.*)$")
        | doc "HEMTT will apply specified header extensions to each PBO. Supports templating."
        | optional,
      include
        | Array (js2n.string.Matches "^(.*)$")
        | doc "HEMTT will include matching relative or absolute paths when building."
        | optional,
      keyname
        | js2n.string.Matches "^(.*)$"
        | doc "HEMTT will use the specified key name for .bikey and .biprivatekey names. Supports templating."
        | optional,
      modname
        | js2n.string.Matches "^(.*)$"
        | doc "HEMTT will use the specified mod name (without @) to form @mod folder. Supports templating."
        | optional,
      name | js2n.string.Matches "^(.*)$" | doc "Long name of your project.",
      optionals
        | Array (js2n.string.Matches "^(.*)$")
        | doc "HEMTT will build the specified addons from the ./optionals folder."
        | optional,
      postbuild | Array (js2n.string.Matches "^(.*)$") | optional,
      prebuild | Array (js2n.string.Matches "^(.*)$") | optional,
      prefix
        | js2n.string.Matches "^(.*)$"
        | doc "Prefix used for CBA macros and the release directory name.",
      releasebuild | Array (js2n.string.Matches "^(.*)$") | optional,
      reuse_private_key
        | Bool
        | doc "If set to true, HEMTT will use (and reuse) releases/keys/{keyname}.biprivatekey. It will be generated if it doesn't exist. The default behaviour is to generate a new private key each time and discard it immediately. HEMTT strongly recommends that you only reuse the key if you are making a client-side mod where it will not matter if clients are running different versions of the mod."
        | optional,
      scripts
        | {
          _ | std.contract.Sequence
            [
              refs."definitions.parallel-requires-foreach-to-be-true",
              {
                foreach
                  | Bool
                  | doc "Scripts can be ran for each addons. Inside prebuild the script will be ran for each addon that HEMTT will build, including addons that will be skipped if they are already built. Inside postbuild and releasebuild only addons that were successfully built with be used, excluding addons that were skipped for being up to date."
                  | optional,
                parallel
                  | Bool
                  | doc "Requires foreach to be true. If a script is thread safe parallel can be used to process multiple addons at a time."
                  | optional,
                show_output
                  | Bool
                  | doc "All output is hidden by default. Setting show_output will display the command being executed and its output."
                  | optional,
                steps | Array (js2n.string.Matches "^(.*)$") | optional,
                steps_linux
                  | Array (js2n.string.Matches "^(.*)$")
                  | doc "steps_windows and steps_linux can be used to run different steps on the respective platforms."
                  | optional,
                steps_windows
                  | Array (js2n.string.Matches "^(.*)$")
                  | doc "steps_windows and steps_linux can be used to run different steps on the respective platforms."
                  | optional,
                ..
              }
            ]
        }
        | optional,
      signame
        | js2n.string.Matches "^(.*)$"
        | doc "HEMTT will use the specified signature name as part of the full signature (.bisign) name. Supports templating."
        | optional,
      sigversion
        | std.number.Integer
        | doc "HEMTT will use the specified signature version. Currently Supported: V2, V3 (Experimental)."
        | optional,
      skip
        | Array (js2n.string.Matches "^(.*)$")
        | doc "HEMTT will skip building the specified addons."
        | optional,
      version
        | js2n.string.Matches "^(.*)$"
        | doc "HEMTT will look for ```addons/main/script_version.hpp``` and use it for the version number. If you are not using the CBA project structure or do not have that file you can add a version number in the HEMTT project file."
        | optional,
      ..
    }