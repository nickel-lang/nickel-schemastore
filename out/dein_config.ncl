# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.ArrayOrString" =
        std.contract.any_of [ Array String, String ],
      "definitions.Boolean" = std.contract.any_of [ Bool, js2n.Enum [ 0, 1 ] ],
      "definitions.MultiplePlugins" =
        {
            plugins
              | Array (
                std.contract.Sequence
                  [ refs."definitions.repo-string-pattern", String ]
              )
              | doc "The repository URI or local repository directory path.",
          },
      "definitions.Path" = js2n.string.Matches "^[~|/][a-zA-Z-_0-9/\\.~]+$",
      "definitions.Plugin" =
        {
            augroup
              | String
              | doc "An augroup name that the plugin uses for |VimEnter| or |GUIEnter| autocmd events."
              | optional,
            build
              | String
              | doc "Specify the build script. This command is executed by |system()| in the plugin runtimepath. Note: In previous versions of dein, build could also be of type dictionary, but that is now deprecated. Please use |dein-options-hook_post_update| instead."
              | optional,
            depends
              | refs."definitions.ArrayOrString"
              | doc "Specify a list of plugins a plugin depends on. List items are '{plugin-name}'. Those specified in the list are NOT installed automatically. Note: The loading order is not guaranteed in non lazy plugins."
              | optional,
            frozen
              | refs."definitions.Boolean"
              | doc "If set to v:true, dein doesn't update it automatically. It is useful for outdated plugins that can no longer be updated."
              | optional,
            ftplugin
              | js2n.record.Record
                {
                  additional = 'None,
                  patterns = { "^[0-9a-zA-Z].+$" = String, },
                  properties = { "_" = String, },
                  required = {},
                }
              | doc "'_' key is executed after all ftplugin. '{filetype}' key is executed {filetype} ftplugin."
              | optional,
            hook_add
              | String
              | doc "It is executed after the line is parsed. Note: You cannot call plugin function in 'hook_add'. Because the plugin is not sourced when 'hook_add'."
              | optional,
            hook_done_update
              | String
              | doc "It is executed after the all plugins are updated."
              | optional,
            hook_post_source
              | String
              | doc "It is executed after plugins are sourced.  Note: In Vim initializing, you must call the 'hook_post_source' hooks manually in |VimEnter| if needed. "
              | optional,
            hook_post_update
              | String
              | doc "It is executed after the plugins are updated."
              | optional,
            hook_source
              | String
              | doc "It is executed before plugins are sourced. Note: The 'sourced' means after |dein#end()| or when |VimEnter| or autoloaded.           'type': 'string',"
              | optional,
            "if"
              | std.contract.any_of [ Bool, std.number.Integer, String ]
              | doc "If set to v:false, dein doesn't register the plugin, i.e. the plugin will be disabled. If it is String, dein will eval it. If you don't set it, dein will register (enable) the plugin"
              | optional,
            lazy
              | std.contract.any_of [ Bool, std.number.Integer ]
              | doc "If set to v:true, dein doesn't add the path to 'runtimepath' automatically. If you don't set it, dein will set it automatically when the conditions are met. Note: You should not specify the plugins which have no 'plugin/' directory as lazy load plugins.  It is meaningless and just increases the overhead.  You can get the no meaning lazy plugins by |dein#check_lazy_plugins()|."
              | optional,
            lua_add
              | String
              | doc m%"
                Lua language string hook instead of Vim script.
                It is converted to "hook_add" key.
              "%
              | optional,
            lua_source
              | String
              | doc m%"
                Lua language string hook instead of Vim script.
                It is converted to "hook_source" key.
              "%
              | optional,
            merge_ftdetect
              | refs."definitions.Boolean"
              | doc "If set to v:true, dein merge the plugin \"ftdetect\" directory. It is useful to enable file detection when lazy loaded plugin. Note: It does not work if ftdetect script depends on lazy plugin functions."
              | optional,
            merged
              | refs."definitions.Boolean"
              | doc "If set to v:false, dein doesn't merge the plugin directory. It is useful for the plugin files conflicts."
              | optional,
            name
              | String
              | doc "Specify the name of the plugin. This is used for dein management and other functions. If it is omitted, the tail of the repository name will be used. Note: Must be unique across the all plugin. If the plugin name conflicts with another plugin, dein will overwrite the previous settings with the new one. If the repo tail is bound to conflict, you can set the 'name' option manually to prevent overwriting an existing plugin setting."
              | optional,
            normalized_name
              | String
              | doc "Specify the normalized name of the plugin.  If omitted, dein will normalize the tail of the repository name. Note: Must be unique across all plugins."
              | optional,
            on_cmd
              | refs."definitions.ArrayOrString"
              | doc "If it is matched to the executed command, dein will call |dein#source()|."
              | optional,
            on_event
              | refs."definitions.ArrayOrString"
              | doc "dein will call |dein#source()| on the events."
              | optional,
            on_ft
              | refs."definitions.ArrayOrString"
              | doc "If it is matched to 'filetype', dein will call |dein#source()|."
              | optional,
            on_func
              | refs."definitions.ArrayOrString"
              | doc "If it is matched to the called function, dein will call |dein#source()|."
              | optional,
            on_if
              | String
              | doc "If it is evaluated and it is non-zero, dein will call|dein#source()|.The default evaluate timings are 'BufRead', 'BufNewFile','VimEnter' and 'FileType'.If |dein-options-on_event| exists, it is evaluated when|dein-options-on_event|."
              | optional,
            on_lua
              | refs."definitions.ArrayOrString"
              | doc "If it is matched to the required lua module root, dein will call |dein#source()|. Note: It is for neovim only. Note: It does not work for neovim standard modules."
              | optional,
            on_map
              | js2n.OneOf
                [
                  std.contract.Sequence
                    [ refs."definitions.on_map-dict", { _ | Dyn } ],
                  refs."definitions.on_map-array",
                  std.contract.Sequence
                    [ refs."definitions.on_map-string", String ]
                ]
              | doc "If it is the Dictionary, the key is {mode} and the items are{mapping} or [{mapping1}, {mapping2}, ...].If it is the List, the items are {mapping} or [{mode},{mapping1}, [{mapping2}, ...]].If {mode} is omitted, 'nx' is used."
              | optional,
            on_path
              | refs."definitions.ArrayOrString"
              | doc "If set to '.*', dein will call |dein#source()| on editing allfiles.  Otherwise, dein will call |dein#source()| if thebuffer name is matched to the string pattern.Note: It is useful for explorer behavior plugins."
              | optional,
            on_source
              | refs."definitions.ArrayOrString"
              | doc "If set to '.*', dein will call |dein#source()| on editing allfiles.  Otherwise, dein will call |dein#source()| if thebuffer name is matched to the string pattern.Note: It is useful for explorer behavior plugins. "
              | optional,
            overwrite
              | refs."definitions.Boolean"
              | doc "If set to v:true, dein overwrite existing plugin config when |dein#add()|."
              | optional,
            path
              | String
              | doc "Specify the plugin downloaded path."
              | optional,
            repo
              | js2n.OneOf
                [
                  std.contract.Sequence [ refs."definitions.Url", String ],
                  std.contract.Sequence [ refs."definitions.Path", String ],
                  std.contract.Sequence
                    [ refs."definitions.repo-string-pattern", String ]
                ]
              | doc "The repository URI or local repository directory path.",
            rev
              | String
              | doc "Specify a revision number or branch/tag name. If it is '*' in 'git' type, dein will use latest released tag.You can specify the wildcards like '0.*'.Note: If the type is 'raw', rev must be hash number."
              | optional,
            rtp
              | String
              | doc "Specify the runtime path. You can use it when the repository has the Vim plugin in a subdirectory.For example: https://github.com/rstacruz/sparkup If it is empty string, dein will not add the path to'runtimepath'"
              | optional,
            script_type
              | std.enum.TagOrString
              | [| 'ftplugin, 'colors, 'plugin, 'indent |]
              | doc "Specify the script type. It is useful for non-official categorized plugins. For example: 'indent', 'plugin', 'ftplugin', ... Note: You must not specify it for categorized plugins."
              | optional,
            timeout
              | std.number.Integer
              | doc "The time of timeout seconds when updating/installing plugins. If omit it, |g:dein#install_process_timeout| will be used."
              | optional,
            trusted
              | refs."definitions.Boolean"
              | doc "If set to v:true, dein will load the plugin in 'sudo' mode. If you don't set it, dein won't load it."
              | optional,
            type
              | std.enum.TagOrString
              | [| 'git, 'raw, 'none |]
              | doc "Specify the repository type. If it is omitted, a guess is made based on {repository}."
              | optional,
            type__depth
              | std.number.Integer
              | doc m%"
                The history depth for 'git clone'.
                 If omitted, |g:dein#types#git#clone_depth| is used. If it is than 0, dein clones the repository by shallow clone. Shallow clone feature saves your repository clone time. But it has problems in some repository.
                 Note: This attribute is available in git type only.
                
                 https://github.com/Shougo/neobundle.vim/issues/81 https://github.com/Homebrew/homebrew/issues/12024
              "%
              | optional,
          },
      "definitions.Url" =
        js2n.string.Matches
            "^https?:\\/\\/(www\\.)?[-a-zA-Z0-9@:%._\\+~#=]{1,256}\\.[a-zA-Z0-9()]{1,6}\\b([-a-zA-Z0-9()@:%_\\+.~#?&//=]*)$",
      "definitions.on_map-array" =
        js2n.OneOf
            [
              std.contract.Sequence
                [ refs."definitions.on_map-array1", Array Dyn ],
              std.contract.Sequence
                [ refs."definitions.on_map-array2", Array Dyn ]
            ],
      "definitions.on_map-array1" =
        Array (
            std.contract.Sequence [ refs."definitions.on_map-string", String ]
          ),
      "definitions.on_map-array2" =
        Array (
            std.contract.Sequence
              [ refs."definitions.vim-mode-key-mapping-string", String ]
          ),
      "definitions.on_map-dict" =
        std.contract.Sequence
            [
              {
                _ | std.contract.any_of
                  [
                    std.contract.Sequence
                      [
                        refs."definitions.vim-mode-key-mapping-string",
                        String
                      ],
                    std.contract.Sequence
                      [ refs."definitions.on_map-array2", Array Dyn ]
                  ]
              },
              js2n.record.FieldsMatch "^[nvxsomilct]+$"
            ],
      "definitions.on_map-string" =
        std.contract.Sequence
            [
              js2n.OneOf
                [
                  std.contract.Sequence
                    [ refs."definitions.vim-mode-key-pattern-string", String ],
                  std.contract.Sequence
                    [ refs."definitions.vim-mode-key-mapping-string", String ]
                ],
              String
            ],
      "definitions.repo-string-pattern" =
        js2n.string.Matches "^[a-zA-Z-_0-9]+/[a-zA-Z-_0-9\\.]+$",
      "definitions.vim-mode-key-mapping-string" = String,
      "definitions.vim-mode-key-pattern-string" =
        js2n.string.Matches "^[nvxsomilct]+$",
    }
    in
  {
      ftplugin
        | js2n.record.Record
          {
            additional = 'None,
            patterns = { "^[0-9a-zA-Z].+$" = String, },
            properties = { "_" = String, },
            required = {},
          }
        | doc m%"
          '_' key is executed after all ftplugin.
          '{filetype}' key is executed {filetype} ftplugin.
           You can define multiple filetypes by '{filetype1}_{filetype2}' key.
        "%
        | optional,
      hook_add
        | String
        | doc m%"
          It is the global |dein-options-hook_add|.
          It is executed in |dein#end()|.
        "%
        | optional,
      multiple_plugins
        | Array refs."definitions.MultiplePlugins"
        | doc m%"
          It is converted to |dein-toml-hook_add|
          "plugins" key is needed.
        "%
        | optional,
      plugins
        | Array refs."definitions.Plugin"
        | doc m%"
          Definition properties table for installing a vim plugin.
          It is converted to |dein#add()|.
        "%,
    }