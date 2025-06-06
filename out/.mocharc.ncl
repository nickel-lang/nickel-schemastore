# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.bool" = Bool,
      "definitions.int" =
        std.contract.Sequence [ std.number.Integer, js2n.number.Minimum 0 ],
      "definitions.string" = String,
      "definitions.string-array" = std.contract.any_of [ String, Array String ],
    }
    in
  {
      allow-uncaught | refs."definitions.bool" | optional,
      async-only | refs."definitions.bool" | optional,
      bail | refs."definitions.bool" | optional,
      check-leaks | refs."definitions.bool" | optional,
      color | refs."definitions.bool" | optional,
      config | refs."definitions.string" | optional,
      delay | refs."definitions.bool" | optional,
      diff | refs."definitions.bool" | optional,
      enable-source-maps | refs."definitions.bool" | optional,
      exit | refs."definitions.bool" | optional,
      extension | refs."definitions.string-array" | optional,
      fgrep | refs."definitions.string" | optional,
      file | refs."definitions.string-array" | optional,
      forbid-only | refs."definitions.bool" | optional,
      forbid-pending | refs."definitions.bool" | optional,
      full-trace | refs."definitions.bool" | optional,
      global | refs."definitions.string-array" | optional,
      grep | refs."definitions.string" | optional,
      growl | refs."definitions.bool" | optional,
      ignore | refs."definitions.string-array" | optional,
      inline-diffs | refs."definitions.bool" | optional,
      invert | refs."definitions.bool" | optional,
      jobs | refs."definitions.int" | Number | optional,
      package | refs."definitions.string" | optional,
      parallel | refs."definitions.bool" | optional,
      recursive | refs."definitions.bool" | optional,
      reporter | refs."definitions.string" | optional,
      reporter-option | refs."definitions.string-array" | optional,
      require | refs."definitions.string-array" | optional,
      retries | refs."definitions.int" | Number | optional,
      slow | refs."definitions.int" | Number | optional,
      sort | refs."definitions.bool" | optional,
      spec | refs."definitions.string-array" | optional,
      timeout | refs."definitions.int" | Number | optional,
      ui | refs."definitions.string" | optional,
      watch | refs."definitions.bool" | optional,
      watch-files | refs."definitions.string-array" | optional,
      watch-ignore | refs."definitions.string-array" | optional,
      ..
    }