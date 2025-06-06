# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      modules
        | Array
          {
            exclude_patterns
              | Array String
              | doc "Directories to exclude from Scanning Across All Scanners (optional)."
              | optional,
            exclude_scanners
              | Array String
              | doc "Scanners to exclude from JFrog Advanced Security (optional)."
              | optional,
            name | String | doc "The name of the module." | optional,
            scanners
              | {
                iac
                  | {
                    exclude_patterns
                      | Array String
                      | doc "Additional exclude patterns for this scanner (optional)."
                      | optional,
                    working_dirs
                      | Array String
                      | doc "Working directories Specific to IaC (Relative to source_root)"
                      | optional,
                    ..
                  }
                  | doc "Scanner configuration for infrastructure as code (IAC)."
                  | optional,
                sast
                  | {
                    exclude_patterns
                      | Array String
                      | doc "Additional exclude patterns for this scanner (optional)."
                      | optional,
                    excluded_rules
                      | Array String
                      | doc "List of specific scan rules to exclude from the scan (optional)."
                      | optional,
                    language
                      | String
                      | doc "Specify the Programming Language for SAST (optional)."
                      | optional,
                    working_dirs
                      | Array String
                      | doc "Working directories Specific to SAST (Relative to source_root)"
                      | optional,
                    ..
                  }
                  | doc "Configuration for Static Application Security Testing (SAST)."
                  | optional,
                secrets
                  | {
                    exclude_patterns
                      | Array String
                      | doc "Additional exclude patterns for this scanner (optional)."
                      | optional,
                    working_dirs
                      | Array String
                      | doc "Working directories Specific to the secrets scanner (Relative to source_root)"
                      | optional,
                    ..
                  }
                  | doc "Scanner configuration for secrets scanner."
                  | optional,
                ..
              }
              | doc "An object containing scanner configurations."
              | optional,
            source_root
              | String
              | doc "Directories to exclude from Scanning Across All Scanners (optional)."
              | optional,
            ..
          }
        | doc "An array of modules.",
      version | String | doc "JFrog Applications Config version",
    }