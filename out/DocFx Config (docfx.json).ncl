# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.buildConfig" =
        {
            changesFile | String | optional,
            cleanupCacheHistory
              | Bool
              | doc "If set to true, cleans up historical cache data when building."
              | optional,
            content
              | refs."definitions.fileMappingContent"
              | std.contract.any_of [ Array Dyn, String ]
              | optional,
            debug
              | Bool
              | doc "Run in debug mode. With debug mode, raw model and view model will be exported automatically when it encounters error when applying templates. If not specified, it is false."
              | optional,
            debugOutput
              | String
              | doc "The output folder for files generated for debugging purpose when in debug mode. If not specified, it is ${TempPath}/docfx."
              | optional,
            dest | String | optional,
            disableGitFeatures
              | refs."definitions.disableGitFeatures"
              | Bool
              | optional,
            dryRun
              | Bool
              | doc "If set to true, template will not be actually applied to the documents. This option is always used with `--exportRawModel` or `--exportViewModel`, so that only raw model files or view model files are generated."
              | optional,
            exportRawModel
              | Bool
              | doc "If set to true, data model to run template script will be extracted in `.raw.json` extension."
              | optional,
            exportViewModel
              | Bool
              | doc "If set to true, data model to apply template will be extracted in `.view.json` extension."
              | optional,
            externalReference
              | refs."definitions.fileMappingExternalReferences"
              | std.contract.any_of [ Array Dyn, String ]
              | optional,
            fileMetadata
              | {  .. }
              | doc "Contains metadata that will be applied to specific files."
              | optional,
            fileMetadataFiles | refs."definitions.fileMetadataFiles" | optional,
            "force" | Bool | doc "" | optional,
            forcePostProcess
              | Bool
              | doc "Force to re-process the documentation in post processors. It will be cascaded from force option."
              | optional,
            globalMetadata
              | {  .. }
              | doc "Contains metadata that will be applied to every file, in key-value pair format."
              | optional,
            globalMetadataFiles
              | refs."definitions.globalMetadataFiles"
              | optional,
            intermediateFolder | String | optional,
            keepFileLink
              | Bool
              | doc "If set to true, DocFX does not copy file to the output folder. Instead, it saves a link_to_path property inside manifest.json."
              | optional,
            lruSize
              | std.number.Integer
              | js2n.number.Minimum 0
              | doc "Set the LRU cached model count (approximately the same as the count of input files). By default, it is 8192 for 64bit and 3072 for 32bit process. With LRU cache enabled, memory usage decreases and time consumed increases. If set to 0, Lru cache is disabled."
              | optional,
            markdownEngineName
              | String
              | doc "Set the name of markdown engine, default is dfm, and another built-in engine is gfm."
              | optional,
            markdownEngineProperties
              | {  .. }
              | doc "Set the parameters for markdown engine."
              | optional,
            maxParallelism
              | std.number.Integer
              | js2n.number.Minimum 0
              | doc "Set the max parallelism, 0 (default) is same as the count of CPU cores."
              | optional,
            noLangKeyword
              | Bool
              | doc "Disable default lang keyword, e.g. `null`."
              | optional,
            overwrite
              | refs."definitions.fileMappingOverwrite"
              | std.contract.any_of [ Array Dyn, String ]
              | optional,
            port
              | String
              | doc "Specify the port of the hosted website."
              | optional,
            postProcessors
              | std.contract.any_of [ String, Array String ]
              | optional,
            rawModelOutputFolder
              | String
              | doc "Specify the output folder for the raw model. If not set, the raw model will be generated to the same folder as the output documentation."
              | optional,
            resource
              | refs."definitions.fileMappingResource"
              | std.contract.any_of [ Array Dyn, String ]
              | optional,
            serve | Bool | doc "" | optional,
            template | refs."definitions.template" | optional,
            theme | refs."definitions.theme" | optional,
            viewModelOutputFolder
              | String
              | doc "Specify the output folder for the view model. If not set, the view model will be generated to the same folder as the output documentation."
              | optional,
            xref | refs."definitions.xref" | optional,
          },
      "definitions.disableGitFeatures" = Bool,
      "definitions.exclude" = std.contract.any_of [ String, Array String ],
      "definitions.fileMappingContent" =
        std.contract.any_of
            [
              String,
              js2n.array.ArrayOf String,
              js2n.array.ArrayOf
                (std.contract.Sequence
                  [ refs."definitions.fileMappingItem", { _ | Dyn } ])
            ],
      "definitions.fileMappingExternalReferences" =
        std.contract.any_of
            [
              String,
              js2n.array.ArrayOf String,
              js2n.array.ArrayOf
                (std.contract.Sequence
                  [ refs."definitions.fileMappingItem", { _ | Dyn } ])
            ],
      "definitions.fileMappingItem" =
        {
            case
              | Bool
              | doc m%"
                Pattern match will be case sensitive.
                By default the pattern is case insensitive.
              "%
              | optional,
            cwd
              | String
              | doc "[Obsoleted] Defines the root folder for the source files, it has the same meaning as `src`"
              | optional,
            dest
              | String
              | doc "The destination folder for the files if copy/transform is used."
              | optional,
            dot
              | Bool
              | doc m%"
                Allow files start with `.` to be matched even if `.` is not explicitly specified in the pattern.
                By default files start with `.` will not be matched by `*` unless the pattern starts with `.`.
              "%
              | optional,
            exclude | refs."definitions.exclude" | optional,
            files | refs."definitions.files",
            name
              | String
              | doc "The name of current item, the value is not used for now."
              | optional,
            noEscape
              | Bool
              | doc m%"
                Disable the usage of `\` to escape values.
                By default the usage is enabled.
              "%
              | optional,
            noExpand
              | Bool
              | doc "Disable `{a,b}c` => `[\"ac\", \"bc\"]`. By default the usage is enabled."
              | optional,
            noGlobStar
              | Bool
              | doc m%"
                Disable the usage of `**` to match everything including `/` when it is the beginning of the pattern or is after `/`.
                By default the usage is enable.
              "%
              | optional,
            noNegate
              | Bool
              | doc m%"
                Disable pattern begin with `!` to mean negate.
                By default the usage is enabled.
              "%
              | optional,
            rootTocPath
              | String
              | doc m%"
                The Root TOC Path used for navbar in current version, relative to output root.
                If not set, will use the toc in output root in current version if exists.
              "%
              | optional,
            src
              | String
              | doc "Defines the root folder for the source files, it has the same meaning as `cwd`"
              | optional,
            version
              | String
              | doc m%"
                Version name for the current file-mapping item.
                If not set, treat the current file-mapping item as in default version.
                Mappings with the same version name will be built together.
                Cross reference doesn't support cross different versions.
              "%
              | optional,
          },
      "definitions.fileMappingOverwrite" =
        std.contract.any_of
            [
              String,
              js2n.array.ArrayOf String,
              js2n.array.ArrayOf
                (std.contract.Sequence
                  [ refs."definitions.fileMappingItem", { _ | Dyn } ])
            ],
      "definitions.fileMappingResource" =
        std.contract.any_of
            [
              String,
              js2n.array.ArrayOf String,
              js2n.array.ArrayOf
                (std.contract.Sequence
                  [ refs."definitions.fileMappingItem", { _ | Dyn } ])
            ],
      "definitions.fileMappingSrc" =
        std.contract.any_of
            [
              String,
              js2n.array.ArrayOf String,
              js2n.array.ArrayOf
                (std.contract.Sequence
                  [ refs."definitions.fileMappingItem", { _ | Dyn } ])
            ],
      "definitions.fileMetadataFiles" =
        std.contract.any_of [ String, Array String ],
      "definitions.files" = std.contract.any_of [ String, Array String ],
      "definitions.globalMetadataFiles" =
        std.contract.any_of [ String, Array String ],
      "definitions.metadataConfig" =
        Array (
            std.contract.Sequence
              [ refs."definitions.metadataConfigItem", { _ | Dyn } ]
          ),
      "definitions.metadataConfigItem" =
        {
            dest
              | String
              | doc "Defines the output folder of the generated metadata files.",
            disableDefaultFilter
              | Bool
              | doc "If set to true, disables default API visibility filter rule."
              | optional,
            disableGitFeatures
              | refs."definitions.disableGitFeatures"
              | Bool
              | optional,
            filter
              | String
              | doc "Defines the filter configuration file."
              | optional,
            "force"
              | Bool
              | doc "If set to true, it would disable incremental build."
              | optional,
            raw | Bool | optional,
            shouldSkipMarkup
              | Bool
              | doc "If set to true, DocFX would not render triple-slash-comments in source code as markdown."
              | optional,
            src
              | refs."definitions.fileMappingSrc"
              | std.contract.any_of [ Array Dyn, String ],
            useCompatibilityFileName
              | Bool
              | doc " If set to true, DocFX would keep ` in comment id instead of replacing it with -."
              | optional,
          },
      "definitions.template" = std.contract.any_of [ String, Array String ],
      "definitions.theme" = std.contract.any_of [ String, Array String ],
      "definitions.xref" = std.contract.any_of [ String, Array String ],
    }
    in
  {
      build | refs."definitions.buildConfig" | optional,
      metadata | refs."definitions.metadataConfig" | optional,
      ..
    }