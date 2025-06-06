# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      api_version | js2n.number.MultipleOf 0.1,
      arch | js2n.string.Matches "^(x86|x86_64|arm|aarch64)$",
      auto_gen_build_files | Bool,
      build_type | js2n.string.Matches "^(test|debug|release)$",
      chrome_inspector_data_path | String,
      chrome_inspector_options | Array String,
      chrome_path | String,
      chrome_simulator_data_path | String,
      chrome_simulator_options | Array String,
      compiler | js2n.string.Matches "^(llvm|gcc)$",
      dotnet_build_tool | js2n.string.Matches "^(dotnet-cli|msbuild)$",
      dotnet_cli_path | String,
      msbuild_path | String,
      msbuild_tasks_version
        | js2n.string.Matches "^((?:.?[0-9]+){3,}(?:[-a-z]+)?)$",
      opt | Bool,
      profile | String,
      profiles_xml_path | String,
      projects | { _ | Array String },
      rootstrap | String,
      signing_profile | String,
      skip_vs_files | Bool,
      src_file_patterns | Array String,
      test_file_patterns | Array String,
      tizen_hotreload_version
        | js2n.string.Matches "^((?:.?[0-9]+){3,}(?:[-a-z]+)?)$",
      tizen_net_sdk_verison
        | js2n.string.Matches "^((?:.?[0-9]+){3,}(?:[-a-z]+)?)$",
      tizen_net_version
        | js2n.string.Matches "^((?:.?[0-9]+){3,}(?:[-a-z]+)?)$",
      tizen_nuixaml_version
        | js2n.string.Matches "^((?:.?[0-9]+){3,}(?:[-a-z]+)?)$",
      tizen_opentk_version
        | js2n.string.Matches "^((?:.?[0-9]+){3,}(?:[-a-z]+)?)$",
      tizen_wearable_circleui_version
        | js2n.string.Matches "^((?:.?[0-9]+){3,}(?:[-a-z]+)?)$",
      tv_simulator_path | String,
      type | js2n.string.Matches "^(native|web|dotnet|hybrid)$",
      working_folder | js2n.Nullable String,
      xamarin_forms_version
        | js2n.string.Matches "^((?:.?[0-9]+){3,}(?:[-a-z]+)?)$",
      ..
    }