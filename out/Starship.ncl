# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.AwsConfig" =
        {
            disabled | Bool | doc "Disables the AWS module." | optional,
            expiration_symbol
              | String
              | doc "The symbol displayed when the temporary credentials have expired."
              | optional,
            force_display
              | Bool
              | doc "If true displays info even if `credentials`, `credential_process` or `sso_start_url` have not been setup."
              | optional,
            format | String | doc "The format for the module." | optional,
            profile_aliases
              | { _ | String }
              | doc "Table of profile aliases to display in addition to the AWS name."
              | optional,
            region_aliases
              | { _ | String }
              | doc "Table of region aliases to display in addition to the AWS name."
              | optional,
            style | String | doc "The style for the module." | optional,
            symbol
              | String
              | doc "The symbol used before displaying the current AWS profile."
              | optional,
          },
      "definitions.AzureConfig" =
        {
            disabled | Bool | optional,
            format | String | optional,
            style | String | optional,
            subscription_aliases | { _ | String } | optional,
            symbol | String | optional,
          },
      "definitions.BatteryConfig" =
        {
            charging_symbol | String | optional,
            disabled | Bool | optional,
            discharging_symbol | String | optional,
            display
              | Array (
                std.contract.Sequence
                  [ refs."definitions.BatteryDisplayConfig", { _ | Dyn } ]
              )
              | optional,
            empty_symbol | String | optional,
            format | String | optional,
            full_symbol | String | optional,
            unknown_symbol | String | optional,
          },
      "definitions.BatteryDisplayConfig" =
        {
            charging_symbol | js2n.Nullable String | optional,
            discharging_symbol | js2n.Nullable String | optional,
            style | String | optional,
            threshold | std.number.Integer | optional,
          },
      "definitions.BufConfig" =
        {
            detect_extensions | Array String | optional,
            detect_files | Array String | optional,
            detect_folders | Array String | optional,
            disabled | Bool | optional,
            format | String | optional,
            style | String | optional,
            symbol | String | optional,
            version_format | String | optional,
          },
      "definitions.BunConfig" =
        {
            detect_extensions | Array String | optional,
            detect_files | Array String | optional,
            detect_folders | Array String | optional,
            disabled | Bool | optional,
            format | String | optional,
            style | String | optional,
            symbol | String | optional,
            version_format | String | optional,
          },
      "definitions.CMakeConfig" =
        {
            detect_extensions | Array String | optional,
            detect_files | Array String | optional,
            detect_folders | Array String | optional,
            disabled | Bool | optional,
            format | String | optional,
            style | String | optional,
            symbol | String | optional,
            version_format | String | optional,
          },
      "definitions.CcConfig_for_CConfigMarker" =
        {
            commands | Array (Array String) | optional,
            detect_extensions | Array String | optional,
            detect_files | Array String | optional,
            detect_folders | Array String | optional,
            disabled | Bool | optional,
            format | String | optional,
            style | String | optional,
            symbol | String | optional,
            version_format | String | optional,
          },
      "definitions.CcConfig_for_CppConfigMarker" =
        {
            commands | Array (Array String) | optional,
            detect_extensions | Array String | optional,
            detect_files | Array String | optional,
            detect_folders | Array String | optional,
            disabled | Bool | optional,
            format | String | optional,
            style | String | optional,
            symbol | String | optional,
            version_format | String | optional,
          },
      "definitions.CharacterConfig" =
        {
            disabled | Bool | optional,
            error_symbol | String | optional,
            format | String | optional,
            success_symbol | String | optional,
            vimcmd_replace_one_symbol | String | optional,
            vimcmd_replace_symbol | String | optional,
            vimcmd_symbol | String | optional,
            vimcmd_visual_symbol | String | optional,
          },
      "definitions.CmdDurationConfig" =
        {
            disabled | Bool | optional,
            format | String | optional,
            min_time | std.number.Integer | optional,
            min_time_to_notify | std.number.Integer | optional,
            notification_timeout
              | js2n.Nullable
                (std.contract.Sequence
                  [ std.number.Integer, js2n.number.Minimum 0 ])
              | optional,
            show_milliseconds | Bool | optional,
            show_notifications | Bool | optional,
            style | String | optional,
          },
      "definitions.CobolConfig" =
        {
            detect_extensions | Array String | optional,
            detect_files | Array String | optional,
            detect_folders | Array String | optional,
            disabled | Bool | optional,
            format | String | optional,
            style | String | optional,
            symbol | String | optional,
            version_format | String | optional,
          },
      "definitions.CondaConfig" =
        {
            disabled | Bool | optional,
            format | String | optional,
            ignore_base | Bool | optional,
            ignore_pixi_envs | Bool | optional,
            style | String | optional,
            symbol | String | optional,
            truncation_length
              | std.number.Integer
              | js2n.number.Minimum 0
              | optional,
          },
      "definitions.ContainerConfig" =
        {
            disabled | Bool | optional,
            format | String | optional,
            style | String | optional,
            symbol | String | optional,
          },
      "definitions.CrystalConfig" =
        {
            detect_extensions | Array String | optional,
            detect_files | Array String | optional,
            detect_folders | Array String | optional,
            disabled | Bool | optional,
            format | String | optional,
            style | String | optional,
            symbol | String | optional,
            version_format | String | optional,
          },
      "definitions.CustomConfig" =
        {
            command | String | optional,
            description | String | optional,
            detect_extensions | Array String | optional,
            detect_files | Array String | optional,
            detect_folders | Array String | optional,
            disabled | Bool | optional,
            format | String | optional,
            ignore_timeout | Bool | optional,
            os | js2n.Nullable String | optional,
            require_repo | Bool | optional,
            shell
              | refs."definitions.Either_for_String_and_Array_of_String"
              | std.contract.any_of [ Array Dyn, String ]
              | optional,
            style | String | optional,
            symbol | String | optional,
            unsafe_no_escape | Bool | optional,
            use_stdin | js2n.Nullable Bool | optional,
            when
              | refs."definitions.Either_for_Boolean_and_String"
              | std.contract.any_of [ Bool, String ]
              | optional,
          },
      "definitions.DamlConfig" =
        {
            detect_extensions | Array String | optional,
            detect_files | Array String | optional,
            detect_folders | Array String | optional,
            disabled | Bool | optional,
            format | String | optional,
            style | String | optional,
            symbol | String | optional,
            version_format | String | optional,
          },
      "definitions.DartConfig" =
        {
            detect_extensions | Array String | optional,
            detect_files | Array String | optional,
            detect_folders | Array String | optional,
            disabled | Bool | optional,
            format | String | optional,
            style | String | optional,
            symbol | String | optional,
            version_format | String | optional,
          },
      "definitions.DenoConfig" =
        {
            detect_extensions | Array String | optional,
            detect_files | Array String | optional,
            detect_folders | Array String | optional,
            disabled | Bool | optional,
            format | String | optional,
            style | String | optional,
            symbol | String | optional,
            version_format | String | optional,
          },
      "definitions.DirectoryConfig" =
        {
            before_repo_root_style | js2n.Nullable String | optional,
            disabled | Bool | optional,
            fish_style_pwd_dir_length | std.number.Integer | optional,
            format | String | optional,
            home_symbol | String | optional,
            read_only | String | optional,
            read_only_style | String | optional,
            repo_root_format | String | optional,
            repo_root_style | js2n.Nullable String | optional,
            style | String | optional,
            substitutions | { _ | String } | optional,
            truncate_to_repo | Bool | optional,
            truncation_length | std.number.Integer | optional,
            truncation_symbol | String | optional,
            use_logical_path | Bool | optional,
            use_os_path_sep | Bool | optional,
          },
      "definitions.DirenvConfig" =
        {
            allowed_msg | String | optional,
            denied_msg | String | optional,
            detect_env_vars | Array String | optional,
            detect_extensions | Array String | optional,
            detect_files | Array String | optional,
            detect_folders | Array String | optional,
            disabled | Bool | optional,
            format | String | optional,
            loaded_msg | String | optional,
            not_allowed_msg | String | optional,
            style | String | optional,
            symbol | String | optional,
            unloaded_msg | String | optional,
          },
      "definitions.DockerContextConfig" =
        {
            detect_extensions | Array String | optional,
            detect_files | Array String | optional,
            detect_folders | Array String | optional,
            disabled | Bool | optional,
            format | String | optional,
            only_with_files | Bool | optional,
            style | String | optional,
            symbol | String | optional,
          },
      "definitions.DotnetConfig" =
        {
            detect_extensions | Array String | optional,
            detect_files | Array String | optional,
            detect_folders | Array String | optional,
            disabled | Bool | optional,
            format | String | optional,
            heuristic | Bool | optional,
            style | String | optional,
            symbol | String | optional,
            version_format | String | optional,
          },
      "definitions.Either_for_Boolean_and_String" =
        std.contract.any_of [ Bool, String ],
      "definitions.Either_for_Either_for_String_and_Array_of_String_and_Array_of_Either_for_String_and_Array_of_String" =
        std.contract.any_of
            [
              std.contract.Sequence
                [
                  refs."definitions.Either_for_String_and_Array_of_String",
                  std.contract.any_of [ Array Dyn, String ]
                ],
              js2n.array.ArrayOf
                (std.contract.Sequence
                  [
                    refs."definitions.Either_for_String_and_Array_of_String",
                    std.contract.any_of [ Array Dyn, String ]
                  ])
            ],
      "definitions.Either_for_String_and_Array_of_String" =
        std.contract.any_of [ String, Array String ],
      "definitions.ElixirConfig" =
        {
            detect_extensions | Array String | optional,
            detect_files | Array String | optional,
            detect_folders | Array String | optional,
            disabled | Bool | optional,
            format | String | optional,
            style | String | optional,
            symbol | String | optional,
            version_format | String | optional,
          },
      "definitions.ElmConfig" =
        {
            detect_extensions | Array String | optional,
            detect_files | Array String | optional,
            detect_folders | Array String | optional,
            disabled | Bool | optional,
            format | String | optional,
            style | String | optional,
            symbol | String | optional,
            version_format | String | optional,
          },
      "definitions.EnvVarConfig" =
        {
            "default" | js2n.Nullable String | optional,
            description | String | optional,
            disabled | Bool | optional,
            format | String | optional,
            style | String | optional,
            symbol | String | optional,
            variable | js2n.Nullable String | optional,
          },
      "definitions.ErlangConfig" =
        {
            detect_extensions | Array String | optional,
            detect_files | Array String | optional,
            detect_folders | Array String | optional,
            disabled | Bool | optional,
            format | String | optional,
            style | String | optional,
            symbol | String | optional,
            version_format | String | optional,
          },
      "definitions.FennelConfig" =
        {
            detect_extensions | Array String | optional,
            detect_files | Array String | optional,
            detect_folders | Array String | optional,
            disabled | Bool | optional,
            format | String | optional,
            style | String | optional,
            symbol | String | optional,
            version_format | String | optional,
          },
      "definitions.FillConfig" =
        {
            disabled | Bool | optional,
            style | String | optional,
            symbol | String | optional,
          },
      "definitions.FossilBranchConfig" =
        {
            disabled | Bool | optional,
            format | String | optional,
            style | String | optional,
            symbol | String | optional,
            truncation_length | std.number.Integer | optional,
            truncation_symbol | String | optional,
          },
      "definitions.FossilMetricsConfig" =
        {
            added_style | String | optional,
            deleted_style | String | optional,
            disabled | Bool | optional,
            format | String | optional,
            only_nonzero_diffs | Bool | optional,
          },
      "definitions.GcloudConfig" =
        {
            detect_env_vars | Array String | optional,
            disabled | Bool | optional,
            format | String | optional,
            project_aliases | { _ | String } | optional,
            region_aliases | { _ | String } | optional,
            style | String | optional,
            symbol | String | optional,
          },
      "definitions.GitBranchConfig" =
        {
            always_show_remote | Bool | optional,
            disabled | Bool | optional,
            format | String | optional,
            ignore_branches | Array String | optional,
            only_attached | Bool | optional,
            style | String | optional,
            symbol | String | optional,
            truncation_length | std.number.Integer | optional,
            truncation_symbol | String | optional,
          },
      "definitions.GitCommitConfig" =
        {
            commit_hash_length
              | std.number.Integer
              | js2n.number.Minimum 0
              | optional,
            disabled | Bool | optional,
            format | String | optional,
            only_detached | Bool | optional,
            style | String | optional,
            tag_disabled | Bool | optional,
            tag_max_candidates
              | std.number.Integer
              | js2n.number.Minimum 0
              | optional,
            tag_symbol | String | optional,
          },
      "definitions.GitMetricsConfig" =
        {
            added_style | String | optional,
            deleted_style | String | optional,
            disabled | Bool | optional,
            format | String | optional,
            ignore_submodules | Bool | optional,
            only_nonzero_diffs | Bool | optional,
          },
      "definitions.GitStateConfig" =
        {
            am | String | optional,
            am_or_rebase | String | optional,
            bisect | String | optional,
            cherry_pick | String | optional,
            disabled | Bool | optional,
            format | String | optional,
            "merge" | String | optional,
            rebase | String | optional,
            revert | String | optional,
            style | String | optional,
          },
      "definitions.GitStatusConfig" =
        {
            ahead | String | optional,
            behind | String | optional,
            conflicted | String | optional,
            deleted | String | optional,
            disabled | Bool | optional,
            diverged | String | optional,
            format | String | optional,
            ignore_submodules | Bool | optional,
            modified | String | optional,
            renamed | String | optional,
            staged | String | optional,
            stashed | String | optional,
            style | String | optional,
            typechanged | String | optional,
            untracked | String | optional,
            up_to_date | String | optional,
            use_git_executable | Bool | optional,
            windows_starship | js2n.Nullable String | optional,
          },
      "definitions.GleamConfig" =
        {
            detect_extensions | Array String | optional,
            detect_files | Array String | optional,
            detect_folders | Array String | optional,
            disabled | Bool | optional,
            format | String | optional,
            style | String | optional,
            symbol | String | optional,
            version_format | String | optional,
          },
      "definitions.GoConfig" =
        {
            detect_extensions | Array String | optional,
            detect_files | Array String | optional,
            detect_folders | Array String | optional,
            disabled | Bool | optional,
            format | String | optional,
            not_capable_style | String | optional,
            style | String | optional,
            symbol | String | optional,
            version_format | String | optional,
          },
      "definitions.GradleConfig" =
        {
            detect_extensions | Array String | optional,
            detect_files | Array String | optional,
            detect_folders | Array String | optional,
            disabled | Bool | optional,
            format | String | optional,
            recursive | Bool | optional,
            style | String | optional,
            symbol | String | optional,
            version_format | String | optional,
          },
      "definitions.GuixShellConfig" =
        {
            disabled | Bool | optional,
            format | String | optional,
            style | String | optional,
            symbol | String | optional,
          },
      "definitions.HaskellConfig" =
        {
            detect_extensions | Array String | optional,
            detect_files | Array String | optional,
            detect_folders | Array String | optional,
            disabled | Bool | optional,
            format | String | optional,
            style | String | optional,
            symbol | String | optional,
            version_format | String | optional,
          },
      "definitions.HaxeConfig" =
        {
            detect_extensions | Array String | optional,
            detect_files | Array String | optional,
            detect_folders | Array String | optional,
            disabled | Bool | optional,
            format | String | optional,
            style | String | optional,
            symbol | String | optional,
            version_format | String | optional,
          },
      "definitions.HelmConfig" =
        {
            detect_extensions | Array String | optional,
            detect_files | Array String | optional,
            detect_folders | Array String | optional,
            disabled | Bool | optional,
            format | String | optional,
            style | String | optional,
            symbol | String | optional,
            version_format | String | optional,
          },
      "definitions.HgBranchConfig" =
        {
            disabled | Bool | optional,
            format | String | optional,
            style | String | optional,
            symbol | String | optional,
            truncation_length | std.number.Integer | optional,
            truncation_symbol | String | optional,
          },
      "definitions.HostnameConfig" =
        {
            aliases | { _ | String } | optional,
            detect_env_vars | Array String | optional,
            disabled | Bool | optional,
            format | String | optional,
            ssh_only | Bool | optional,
            ssh_symbol | String | optional,
            style | String | optional,
            trim_at | String | optional,
          },
      "definitions.JavaConfig" =
        {
            detect_extensions | Array String | optional,
            detect_files | Array String | optional,
            detect_folders | Array String | optional,
            disabled | Bool | optional,
            format | String | optional,
            style | String | optional,
            symbol | String | optional,
            version_format | String | optional,
          },
      "definitions.JobsConfig" =
        {
            disabled | Bool | optional,
            format | String | optional,
            number_threshold | std.number.Integer | optional,
            style | String | optional,
            symbol | String | optional,
            symbol_threshold | std.number.Integer | optional,
            threshold | std.number.Integer | optional,
          },
      "definitions.JuliaConfig" =
        {
            detect_extensions | Array String | optional,
            detect_files | Array String | optional,
            detect_folders | Array String | optional,
            disabled | Bool | optional,
            format | String | optional,
            style | String | optional,
            symbol | String | optional,
            version_format | String | optional,
          },
      "definitions.KotlinConfig" =
        {
            detect_extensions | Array String | optional,
            detect_files | Array String | optional,
            detect_folders | Array String | optional,
            disabled | Bool | optional,
            format | String | optional,
            kotlin_binary | String | optional,
            style | String | optional,
            symbol | String | optional,
            version_format | String | optional,
          },
      "definitions.KubernetesConfig" =
        {
            context_aliases | { _ | String } | optional,
            contexts
              | Array (
                std.contract.Sequence
                  [ refs."definitions.KubernetesContextConfig", { _ | Dyn } ]
              )
              | optional,
            detect_env_vars | Array String | optional,
            detect_extensions | Array String | optional,
            detect_files | Array String | optional,
            detect_folders | Array String | optional,
            disabled | Bool | optional,
            format | String | optional,
            style | String | optional,
            symbol | String | optional,
            user_aliases | { _ | String } | optional,
          },
      "definitions.KubernetesContextConfig" =
        {
            context_alias | js2n.Nullable String | optional,
            context_pattern | String | optional,
            style | js2n.Nullable String | optional,
            symbol | js2n.Nullable String | optional,
            user_alias | js2n.Nullable String | optional,
            user_pattern | js2n.Nullable String | optional,
          },
      "definitions.LineBreakConfig" = { disabled | Bool | optional, },
      "definitions.LocalipConfig" =
        {
            disabled | Bool | optional,
            format | String | optional,
            ssh_only | Bool | optional,
            style | String | optional,
          },
      "definitions.LuaConfig" =
        {
            detect_extensions | Array String | optional,
            detect_files | Array String | optional,
            detect_folders | Array String | optional,
            disabled | Bool | optional,
            format | String | optional,
            lua_binary | String | optional,
            style | String | optional,
            symbol | String | optional,
            version_format | String | optional,
          },
      "definitions.MemoryConfig" =
        {
            disabled | Bool | optional,
            format | String | optional,
            style | String | optional,
            symbol | String | optional,
            threshold | std.number.Integer | optional,
          },
      "definitions.MesonConfig" =
        {
            disabled | Bool | optional,
            format | String | optional,
            style | String | optional,
            symbol | String | optional,
            truncation_length
              | std.number.Integer
              | js2n.number.Minimum 0
              | optional,
            truncation_symbol | String | optional,
          },
      "definitions.MiseConfig" =
        {
            detect_extensions | Array String | optional,
            detect_files | Array String | optional,
            detect_folders | Array String | optional,
            disabled | Bool | optional,
            format | String | optional,
            healthy_symbol | String | optional,
            style | String | optional,
            symbol | String | optional,
            unhealthy_symbol | String | optional,
          },
      "definitions.MojoConfig" =
        {
            detect_extensions | Array String | optional,
            detect_files | Array String | optional,
            detect_folders | Array String | optional,
            disabled | Bool | optional,
            format | String | optional,
            style | String | optional,
            symbol | String | optional,
          },
      "definitions.NatsConfig" =
        {
            disabled | Bool | optional,
            format | String | optional,
            style | String | optional,
            symbol | String | optional,
          },
      "definitions.NetnsConfig" =
        {
            disabled | Bool | optional,
            format | String | optional,
            style | String | optional,
            symbol | String | optional,
          },
      "definitions.NimConfig" =
        {
            detect_extensions | Array String | optional,
            detect_files | Array String | optional,
            detect_folders | Array String | optional,
            disabled | Bool | optional,
            format | String | optional,
            style | String | optional,
            symbol | String | optional,
            version_format | String | optional,
          },
      "definitions.NixShellConfig" =
        {
            disabled | Bool | optional,
            format | String | optional,
            heuristic | Bool | optional,
            impure_msg | String | optional,
            pure_msg | String | optional,
            style | String | optional,
            symbol | String | optional,
            unknown_msg | String | optional,
          },
      "definitions.NodejsConfig" =
        {
            detect_extensions | Array String | optional,
            detect_files | Array String | optional,
            detect_folders | Array String | optional,
            disabled | Bool | optional,
            format | String | optional,
            not_capable_style | String | optional,
            style | String | optional,
            symbol | String | optional,
            version_format | String | optional,
          },
      "definitions.OCamlConfig" =
        {
            detect_extensions | Array String | optional,
            detect_files | Array String | optional,
            detect_folders | Array String | optional,
            disabled | Bool | optional,
            format | String | optional,
            global_switch_indicator | String | optional,
            local_switch_indicator | String | optional,
            style | String | optional,
            symbol | String | optional,
            version_format | String | optional,
          },
      "definitions.OSConfig" =
        {
            disabled | Bool | optional,
            format | String | optional,
            style | String | optional,
            symbols | { _ | String } | optional,
          },
      "definitions.OdinConfig" =
        {
            detect_extensions | Array String | optional,
            detect_files | Array String | optional,
            detect_folders | Array String | optional,
            disabled | Bool | optional,
            format | String | optional,
            show_commit | Bool | optional,
            style | String | optional,
            symbol | String | optional,
          },
      "definitions.OpaConfig" =
        {
            detect_extensions | Array String | optional,
            detect_files | Array String | optional,
            detect_folders | Array String | optional,
            disabled | Bool | optional,
            format | String | optional,
            style | String | optional,
            symbol | String | optional,
            version_format | String | optional,
          },
      "definitions.OspConfig" =
        {
            disabled | Bool | optional,
            format | String | optional,
            style | String | optional,
            symbol | String | optional,
          },
      "definitions.PackageConfig" =
        {
            disabled | Bool | optional,
            display_private | Bool | optional,
            format | String | optional,
            style | String | optional,
            symbol | String | optional,
            version_format | String | optional,
          },
      "definitions.PerlConfig" =
        {
            detect_extensions | Array String | optional,
            detect_files | Array String | optional,
            detect_folders | Array String | optional,
            disabled | Bool | optional,
            format | String | optional,
            style | String | optional,
            symbol | String | optional,
            version_format | String | optional,
          },
      "definitions.PhpConfig" =
        {
            detect_extensions | Array String | optional,
            detect_files | Array String | optional,
            detect_folders | Array String | optional,
            disabled | Bool | optional,
            format | String | optional,
            style | String | optional,
            symbol | String | optional,
            version_format | String | optional,
          },
      "definitions.PijulConfig" =
        {
            disabled | Bool | optional,
            format | String | optional,
            style | String | optional,
            symbol | String | optional,
            truncation_length | std.number.Integer | optional,
            truncation_symbol | String | optional,
          },
      "definitions.PixiConfig" =
        {
            detect_files | Array String | optional,
            disabled | Bool | optional,
            format | String | optional,
            pixi_binary
              | refs."definitions.Either_for_String_and_Array_of_String"
              | std.contract.any_of [ Array Dyn, String ]
              | optional,
            show_default_environment | Bool | optional,
            style | String | optional,
            symbol | String | optional,
            version_format | String | optional,
          },
      "definitions.PulumiConfig" =
        {
            disabled | Bool | optional,
            format | String | optional,
            search_upwards | Bool | optional,
            style | String | optional,
            symbol | String | optional,
            version_format | String | optional,
          },
      "definitions.PureScriptConfig" =
        {
            detect_extensions | Array String | optional,
            detect_files | Array String | optional,
            detect_folders | Array String | optional,
            disabled | Bool | optional,
            format | String | optional,
            style | String | optional,
            symbol | String | optional,
            version_format | String | optional,
          },
      "definitions.PythonConfig" =
        {
            detect_env_vars | Array String | optional,
            detect_extensions | Array String | optional,
            detect_files | Array String | optional,
            detect_folders | Array String | optional,
            disabled | Bool | optional,
            format | String | optional,
            pyenv_prefix | String | optional,
            pyenv_version_name | Bool | optional,
            python_binary
              | refs."definitions.Either_for_Either_for_String_and_Array_of_String_and_Array_of_Either_for_String_and_Array_of_String"
              | optional,
            style | String | optional,
            symbol | String | optional,
            version_format | String | optional,
          },
      "definitions.QuartoConfig" =
        {
            detect_extensions | Array String | optional,
            detect_files | Array String | optional,
            detect_folders | Array String | optional,
            disabled | Bool | optional,
            format | String | optional,
            style | String | optional,
            symbol | String | optional,
            version_format | String | optional,
          },
      "definitions.RLangConfig" =
        {
            detect_extensions | Array String | optional,
            detect_files | Array String | optional,
            detect_folders | Array String | optional,
            disabled | Bool | optional,
            format | String | optional,
            style | String | optional,
            symbol | String | optional,
            version_format | String | optional,
          },
      "definitions.RakuConfig" =
        {
            detect_extensions | Array String | optional,
            detect_files | Array String | optional,
            detect_folders | Array String | optional,
            disabled | Bool | optional,
            format | String | optional,
            style | String | optional,
            symbol | String | optional,
            version_format | String | optional,
          },
      "definitions.RedConfig" =
        {
            detect_extensions | Array String | optional,
            detect_files | Array String | optional,
            detect_folders | Array String | optional,
            disabled | Bool | optional,
            format | String | optional,
            style | String | optional,
            symbol | String | optional,
            version_format | String | optional,
          },
      "definitions.RubyConfig" =
        {
            detect_extensions | Array String | optional,
            detect_files | Array String | optional,
            detect_folders | Array String | optional,
            detect_variables | Array String | optional,
            disabled | Bool | optional,
            format | String | optional,
            style | String | optional,
            symbol | String | optional,
            version_format | String | optional,
          },
      "definitions.RustConfig" =
        {
            detect_extensions | Array String | optional,
            detect_files | Array String | optional,
            detect_folders | Array String | optional,
            disabled | Bool | optional,
            format | String | optional,
            style | String | optional,
            symbol | String | optional,
            version_format | String | optional,
          },
      "definitions.ScalaConfig" =
        {
            detect_extensions | Array String | optional,
            detect_files | Array String | optional,
            detect_folders | Array String | optional,
            disabled | Bool | optional,
            format | String | optional,
            style | String | optional,
            symbol | String | optional,
            version_format | String | optional,
          },
      "definitions.ShLvlConfig" =
        {
            disabled | Bool | optional,
            format | String | optional,
            repeat | Bool | optional,
            repeat_offset
              | std.number.Integer
              | js2n.number.Minimum 0
              | optional,
            style | String | optional,
            symbol | String | optional,
            threshold | std.number.Integer | optional,
          },
      "definitions.ShellConfig" =
        {
            bash_indicator | String | optional,
            cmd_indicator | String | optional,
            disabled | Bool | optional,
            elvish_indicator | String | optional,
            fish_indicator | String | optional,
            format | String | optional,
            ion_indicator | String | optional,
            nu_indicator | String | optional,
            powershell_indicator | String | optional,
            pwsh_indicator | js2n.Nullable String | optional,
            style | String | optional,
            tcsh_indicator | String | optional,
            unknown_indicator | String | optional,
            xonsh_indicator | String | optional,
            zsh_indicator | String | optional,
          },
      "definitions.SingularityConfig" =
        {
            disabled | Bool | optional,
            format | String | optional,
            style | String | optional,
            symbol | String | optional,
          },
      "definitions.SolidityConfig" =
        {
            compiler
              | refs."definitions.Either_for_String_and_Array_of_String"
              | std.contract.any_of [ Array Dyn, String ]
              | optional,
            detect_extensions | Array String | optional,
            detect_files | Array String | optional,
            detect_folders | Array String | optional,
            disabled | Bool | optional,
            format | String | optional,
            style | String | optional,
            symbol | String | optional,
            version_format | String | optional,
          },
      "definitions.SpackConfig" =
        {
            disabled | Bool | optional,
            format | String | optional,
            style | String | optional,
            symbol | String | optional,
            truncation_length
              | std.number.Integer
              | js2n.number.Minimum 0
              | optional,
          },
      "definitions.StatusConfig" =
        {
            disabled | Bool | optional,
            failure_style | js2n.Nullable String | optional,
            format | String | optional,
            map_symbol | Bool | optional,
            not_executable_symbol | String | optional,
            not_found_symbol | String | optional,
            pipestatus | Bool | optional,
            pipestatus_format | String | optional,
            pipestatus_segment_format | js2n.Nullable String | optional,
            pipestatus_separator | String | optional,
            recognize_signal_code | Bool | optional,
            sigint_symbol | String | optional,
            signal_symbol | String | optional,
            style | String | optional,
            success_style | js2n.Nullable String | optional,
            success_symbol | String | optional,
            symbol | String | optional,
          },
      "definitions.SudoConfig" =
        {
            allow_windows | Bool | optional,
            disabled | Bool | optional,
            format | String | optional,
            style | String | optional,
            symbol | String | optional,
          },
      "definitions.SwiftConfig" =
        {
            detect_extensions | Array String | optional,
            detect_files | Array String | optional,
            detect_folders | Array String | optional,
            disabled | Bool | optional,
            format | String | optional,
            style | String | optional,
            symbol | String | optional,
            version_format | String | optional,
          },
      "definitions.TerraformConfig" =
        {
            detect_extensions | Array String | optional,
            detect_files | Array String | optional,
            detect_folders | Array String | optional,
            disabled | Bool | optional,
            format | String | optional,
            style | String | optional,
            symbol | String | optional,
            version_format | String | optional,
          },
      "definitions.TimeConfig" =
        {
            disabled | Bool | optional,
            format | String | optional,
            style | String | optional,
            time_format | js2n.Nullable String | optional,
            time_range | String | optional,
            use_12hr | Bool | optional,
            utc_time_offset | String | optional,
          },
      "definitions.TypstConfig" =
        {
            detect_extensions | Array String | optional,
            detect_files | Array String | optional,
            detect_folders | Array String | optional,
            disabled | Bool | optional,
            format | String | optional,
            style | String | optional,
            symbol | String | optional,
            version_format | String | optional,
          },
      "definitions.UsernameConfig" =
        {
            aliases | { _ | String } | optional,
            detect_env_vars | Array String | optional,
            disabled | Bool | optional,
            format | String | optional,
            show_always | Bool | optional,
            style_root | String | optional,
            style_user | String | optional,
          },
      "definitions.VConfig" =
        {
            detect_extensions | Array String | optional,
            detect_files | Array String | optional,
            detect_folders | Array String | optional,
            disabled | Bool | optional,
            format | String | optional,
            style | String | optional,
            symbol | String | optional,
            version_format | String | optional,
          },
      "definitions.VagrantConfig" =
        {
            detect_extensions | Array String | optional,
            detect_files | Array String | optional,
            detect_folders | Array String | optional,
            disabled | Bool | optional,
            format | String | optional,
            style | String | optional,
            symbol | String | optional,
            version_format | String | optional,
          },
      "definitions.VcshConfig" =
        {
            disabled | Bool | optional,
            format | String | optional,
            style | String | optional,
            symbol | String | optional,
          },
      "definitions.ZigConfig" =
        {
            detect_extensions | Array String | optional,
            detect_files | Array String | optional,
            detect_folders | Array String | optional,
            disabled | Bool | optional,
            format | String | optional,
            style | String | optional,
            symbol | String | optional,
            version_format | String | optional,
          },
    }
    in
  {
      "$schema" | String | optional,
      add_newline | Bool | optional,
      aws | refs."definitions.AwsConfig" | optional,
      azure | refs."definitions.AzureConfig" | optional,
      battery | refs."definitions.BatteryConfig" | optional,
      buf | refs."definitions.BufConfig" | optional,
      bun | refs."definitions.BunConfig" | optional,
      c | refs."definitions.CcConfig_for_CConfigMarker" | optional,
      character | refs."definitions.CharacterConfig" | optional,
      cmake | refs."definitions.CMakeConfig" | optional,
      cmd_duration | refs."definitions.CmdDurationConfig" | optional,
      cobol | refs."definitions.CobolConfig" | optional,
      command_timeout | std.number.Integer | js2n.number.Minimum 0 | optional,
      conda | refs."definitions.CondaConfig" | optional,
      container | refs."definitions.ContainerConfig" | optional,
      continuation_prompt | String | optional,
      cpp | refs."definitions.CcConfig_for_CppConfigMarker" | optional,
      crystal | refs."definitions.CrystalConfig" | optional,
      custom | { _ | refs."definitions.CustomConfig" } | optional,
      daml | refs."definitions.DamlConfig" | optional,
      dart | refs."definitions.DartConfig" | optional,
      deno | refs."definitions.DenoConfig" | optional,
      directory | refs."definitions.DirectoryConfig" | optional,
      direnv | refs."definitions.DirenvConfig" | optional,
      docker_context | refs."definitions.DockerContextConfig" | optional,
      dotnet | refs."definitions.DotnetConfig" | optional,
      elixir | refs."definitions.ElixirConfig" | optional,
      elm | refs."definitions.ElmConfig" | optional,
      env_var | { _ | refs."definitions.EnvVarConfig" } | optional,
      erlang | refs."definitions.ErlangConfig" | optional,
      fennel | refs."definitions.FennelConfig" | optional,
      fill | refs."definitions.FillConfig" | optional,
      follow_symlinks | Bool | optional,
      format | String | optional,
      fossil_branch | refs."definitions.FossilBranchConfig" | optional,
      fossil_metrics | refs."definitions.FossilMetricsConfig" | optional,
      gcloud | refs."definitions.GcloudConfig" | optional,
      git_branch | refs."definitions.GitBranchConfig" | optional,
      git_commit | refs."definitions.GitCommitConfig" | optional,
      git_metrics | refs."definitions.GitMetricsConfig" | optional,
      git_state | refs."definitions.GitStateConfig" | optional,
      git_status | refs."definitions.GitStatusConfig" | optional,
      gleam | refs."definitions.GleamConfig" | optional,
      golang | refs."definitions.GoConfig" | optional,
      gradle | refs."definitions.GradleConfig" | optional,
      guix_shell | refs."definitions.GuixShellConfig" | optional,
      haskell | refs."definitions.HaskellConfig" | optional,
      haxe | refs."definitions.HaxeConfig" | optional,
      helm | refs."definitions.HelmConfig" | optional,
      hg_branch | refs."definitions.HgBranchConfig" | optional,
      hostname | refs."definitions.HostnameConfig" | optional,
      java | refs."definitions.JavaConfig" | optional,
      jobs | refs."definitions.JobsConfig" | optional,
      julia | refs."definitions.JuliaConfig" | optional,
      kotlin | refs."definitions.KotlinConfig" | optional,
      kubernetes | refs."definitions.KubernetesConfig" | optional,
      line_break | refs."definitions.LineBreakConfig" | optional,
      localip | refs."definitions.LocalipConfig" | optional,
      lua | refs."definitions.LuaConfig" | optional,
      memory_usage | refs."definitions.MemoryConfig" | optional,
      meson | refs."definitions.MesonConfig" | optional,
      mise | refs."definitions.MiseConfig" | optional,
      mojo | refs."definitions.MojoConfig" | optional,
      nats | refs."definitions.NatsConfig" | optional,
      netns | refs."definitions.NetnsConfig" | optional,
      nim | refs."definitions.NimConfig" | optional,
      nix_shell | refs."definitions.NixShellConfig" | optional,
      nodejs | refs."definitions.NodejsConfig" | optional,
      ocaml | refs."definitions.OCamlConfig" | optional,
      odin | refs."definitions.OdinConfig" | optional,
      opa | refs."definitions.OpaConfig" | optional,
      openstack | refs."definitions.OspConfig" | optional,
      os | refs."definitions.OSConfig" | optional,
      package | refs."definitions.PackageConfig" | optional,
      palette | js2n.Nullable String | optional,
      palettes | { _ | { _ | String } } | optional,
      perl | refs."definitions.PerlConfig" | optional,
      php | refs."definitions.PhpConfig" | optional,
      pijul_channel | refs."definitions.PijulConfig" | optional,
      pixi | refs."definitions.PixiConfig" | optional,
      profiles | { _ | String } | optional,
      pulumi | refs."definitions.PulumiConfig" | optional,
      purescript | refs."definitions.PureScriptConfig" | optional,
      python | refs."definitions.PythonConfig" | optional,
      quarto | refs."definitions.QuartoConfig" | optional,
      raku | refs."definitions.RakuConfig" | optional,
      red | refs."definitions.RedConfig" | optional,
      right_format | String | optional,
      rlang | refs."definitions.RLangConfig" | optional,
      ruby | refs."definitions.RubyConfig" | optional,
      rust | refs."definitions.RustConfig" | optional,
      scala | refs."definitions.ScalaConfig" | optional,
      scan_timeout | std.number.Integer | js2n.number.Minimum 0 | optional,
      shell | refs."definitions.ShellConfig" | optional,
      shlvl | refs."definitions.ShLvlConfig" | optional,
      singularity | refs."definitions.SingularityConfig" | optional,
      solidity | refs."definitions.SolidityConfig" | optional,
      spack | refs."definitions.SpackConfig" | optional,
      status | refs."definitions.StatusConfig" | optional,
      sudo | refs."definitions.SudoConfig" | optional,
      swift | refs."definitions.SwiftConfig" | optional,
      terraform | refs."definitions.TerraformConfig" | optional,
      time | refs."definitions.TimeConfig" | optional,
      typst | refs."definitions.TypstConfig" | optional,
      username | refs."definitions.UsernameConfig" | optional,
      vagrant | refs."definitions.VagrantConfig" | optional,
      vcsh | refs."definitions.VcshConfig" | optional,
      vlang | refs."definitions.VConfig" | optional,
      zig | refs."definitions.ZigConfig" | optional,
    }