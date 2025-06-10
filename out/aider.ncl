# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      "35turbo"
        | Bool
        | doc "Use gpt-3.5-turbo model for the main chat. Default: false"
        | optional,
      "4"
        | Bool
        | doc "Use gpt-4-0613 model for the main chat. Default: false"
        | optional,
      "4-turbo"
        | Bool
        | doc "Use gpt-4-1106-preview model for the main chat. Default: false"
        | optional,
      "4o"
        | Bool
        | doc "Use gpt-4o model for the main chat. Default: false"
        | optional,
      aiderignore
        | String
        | doc "Specify the aider ignore file. Default: .aiderignore"
        | optional,
      alias | Array String | doc "Add a model alias. Default: []" | optional,
      analytics
        | Bool
        | doc "Enable/disable analytics for current session. Default: None"
        | optional,
      analytics-disable
        | Bool
        | doc "Permanently disable analytics. Default: false"
        | optional,
      analytics-log
        | String
        | doc "Specify a file to log analytics events. Default: None"
        | optional,
      anthropic-api-key
        | String
        | doc "Specify the Anthropic API key. Default: None"
        | optional,
      api-key
        | Array String
        | doc "Set an API key for a provider. Default: []"
        | optional,
      apply
        | String
        | doc "Apply the changes from the given file instead of running the chat. Default: None"
        | optional,
      apply-clipboard-edits
        | Bool
        | doc "Apply clipboard contents as edits using the main model’s editor format. Default: false"
        | optional,
      architect
        | Bool
        | doc "Use architect edit format for the main chat. Default: None"
        | optional,
      assistant-output-color
        | String
        | doc "Set the color for assistant output. Default: #0088ff"
        | optional,
      attribute-author
        | Bool
        | doc "Attribute aider code changes in the git author name. Default: None"
        | optional,
      attribute-co-authored-by
        | Bool
        | doc "Attribute aider edits using the Co-authored-by trailer in the commit message. Default: false"
        | optional,
      attribute-commit-message-author
        | Bool
        | doc "Prefix commit messages with ‘aider: ‘ if aider authored the changes. Default: false"
        | optional,
      attribute-commit-message-committer
        | Bool
        | doc "Prefix all commit messages with ‘aider: ‘. Default: false"
        | optional,
      attribute-committer
        | Bool
        | doc "Attribute aider commits in the git committer name. Default: None"
        | optional,
      auto-accept-architect
        | Bool
        | doc "Enable/disable automatic acceptance of architect changes. Default: true"
        | optional,
      auto-commits
        | Bool
        | doc "Enable/disable auto commit of LLM changes. Default: true"
        | optional,
      auto-lint
        | Bool
        | doc "Enable/disable automatic linting after changes. Default: true"
        | optional,
      auto-test
        | Bool
        | doc "Enable/disable automatic testing after changes. Default: false"
        | optional,
      cache-keepalive-pings
        | String
        | doc "Number of times to ping at 5min intervals to keep prompt cache warm. Default: 0"
        | optional,
      cache-prompts
        | Bool
        | doc "Enable caching of prompts. Default: false"
        | optional,
      chat-history-file
        | String
        | doc "Specify the chat history file. Default: .aider.chat.history.md"
        | optional,
      chat-language
        | String
        | doc "Specify the language to use in the chat. Default: None"
        | optional,
      check-model-accepts-settings
        | Bool
        | doc "Check if model accepts settings like reasoning_effort/thinking_tokens. Default: true"
        | optional,
      check-update
        | Bool
        | doc "Check for new aider versions on launch. Default: true"
        | optional,
      code-theme
        | String
        | doc "Set the markdown code theme. Default: default"
        | optional,
      commit
        | Bool
        | doc "Commit all pending changes with a suitable commit message, then exit. Default: false"
        | optional,
      commit-prompt
        | String
        | doc "Specify a custom prompt for generating commit messages. Default: None"
        | optional,
      completion-menu-bg-color
        | String
        | doc "Set the background color for the completion menu. Default: None"
        | optional,
      completion-menu-color
        | String
        | doc "Set the color for the completion menu. Default: None"
        | optional,
      completion-menu-current-bg-color
        | String
        | doc "Set the background color for the current item in the completion menu. Default: None"
        | optional,
      completion-menu-current-color
        | String
        | doc "Set the color for the current item in the completion menu. Default: None"
        | optional,
      config | String | doc "Specify the config file. Default: None" | optional,
      copy-paste
        | Bool
        | doc "Enable automatic copy/paste of chat between aider and web UI. Default: false"
        | optional,
      dark-mode
        | Bool
        | doc "Use colors suitable for a dark terminal background. Default: false"
        | optional,
      deepseek
        | Bool
        | doc "Use deepseek/deepseek-chat model for the main chat. Default: false"
        | optional,
      detect-urls
        | Bool
        | doc "Enable/disable detection and offering to add URLs to chat. Default: true"
        | optional,
      dirty-commits
        | Bool
        | doc "Enable/disable commits when repo is found dirty. Default: true"
        | optional,
      disable-playwright
        | Bool
        | doc "Never prompt for or attempt to install Playwright for web scraping. Default: false"
        | optional,
      dry-run
        | Bool
        | doc "Perform a dry run without modifying files. Default: false"
        | optional,
      edit-format
        | String
        | doc "Specify what edit format the LLM should use. Default: None"
        | optional,
      editor
        | String
        | doc "Specify which editor to use for the /editor command. Default: None"
        | optional,
      editor-edit-format
        | String
        | doc "Specify the edit format for the editor model. Default: None"
        | optional,
      editor-model
        | String
        | doc "Specify the model to use for editor tasks. Default: None"
        | optional,
      encoding
        | String
        | doc "Specify the encoding for input and output. Default: utf-8"
        | optional,
      env-file
        | String
        | doc "Specify the .env file to load. Default: .env"
        | optional,
      exit
        | Bool
        | doc "Do all startup activities then exit before accepting user input. Default: false"
        | optional,
      fancy-input
        | Bool
        | doc "Enable/disable fancy input with history and completion. Default: true"
        | optional,
      file
        | Array String
        | doc "Specify a file to edit. Default: []"
        | optional,
      git
        | Bool
        | doc "Enable/disable looking for a git repo. Default: true"
        | optional,
      git-commit-verify
        | Bool
        | doc "Enable/disable git pre-commit hooks with –no-verify. Default: false"
        | optional,
      gitignore
        | Bool
        | doc "Enable/disable adding .aider* to .gitignore. Default: true"
        | optional,
      gui | Bool | doc "Run aider in your browser. Default: false" | optional,
      haiku
        | Bool
        | doc "Use claude-3-5-haiku-20241022 model for the main chat. Default: false"
        | optional,
      input-history-file
        | String
        | doc "Specify the chat input history file. Default: .aider.input.history"
        | optional,
      install-main-branch
        | Bool
        | doc "Install the latest version from the main branch. Default: false"
        | optional,
      just-check-update
        | Bool
        | doc "Check for updates and return status in the exit code. Default: false"
        | optional,
      light-mode
        | Bool
        | doc "Use colors suitable for a light terminal background. Default: false"
        | optional,
      line-endings
        | String
        | doc "Line endings to use when writing files. Default: platform"
        | optional,
      lint
        | Bool
        | doc "Lint and fix provided files, or dirty files if none provided. Default: false"
        | optional,
      lint-cmd
        | Array String
        | doc "Specify lint commands to run for different languages. Default: []"
        | optional,
      list-models
        | String
        | doc "List known models which match the (partial) MODEL name. Default: None"
        | optional,
      llm-history-file
        | String
        | doc "Log the conversation with the LLM to this file. Default: None"
        | optional,
      load
        | String
        | doc "Load and execute /commands from a file on launch. Default: None"
        | optional,
      map-multiplier-no-files
        | String
        | doc "Multiplier for map tokens when no files are specified. Default: 2"
        | optional,
      map-refresh
        | String
        | doc "Control how often the repo map is refreshed. Default: auto"
        | optional,
      map-tokens
        | String
        | doc "Suggested number of tokens to use for repo map. Default: None"
        | optional,
      max-chat-history-tokens
        | String
        | doc "Soft limit on tokens for chat history, after which summarization begins. Default: None"
        | optional,
      message
        | String
        | doc "Specify a single message to send the LLM, process reply then exit. Default: None"
        | optional,
      message-file
        | String
        | doc "Specify a file containing the message to send the LLM, process reply, then exit. Default: None"
        | optional,
      mini
        | Bool
        | doc "Use gpt-4o-mini model for the main chat. Default: false"
        | optional,
      model
        | String
        | doc "Specify the model to use for the main chat. Default: None"
        | optional,
      model-metadata-file
        | String
        | doc "Specify a file with context window and costs for unknown models. Default: .aider.model.metadata.json"
        | optional,
      model-settings-file
        | String
        | doc "Specify a file with aider model settings for unknown models. Default: .aider.model.settings.yml"
        | optional,
      multiline
        | Bool
        | doc "Enable/disable multi-line input mode with Meta-Enter to submit. Default: false"
        | optional,
      notifications
        | Bool
        | doc "Enable/disable terminal bell notifications when LLM responses are ready. Default: false"
        | optional,
      notifications-command
        | String
        | doc "Specify a command to run for notifications instead of the terminal bell. Default: None"
        | optional,
      o1-mini
        | Bool
        | doc "Use o1-mini model for the main chat. Default: false"
        | optional,
      o1-preview
        | Bool
        | doc "Use o1-preview model for the main chat. Default: false"
        | optional,
      openai-api-base
        | String
        | doc "Specify the api base url. Default: None"
        | optional,
      openai-api-deployment-id
        | String
        | doc "Specify the OpenAI API deployment ID. Default: None"
        | optional,
      openai-api-key
        | String
        | doc "Specify the OpenAI API key. Default: None"
        | optional,
      openai-api-type
        | String
        | doc "Specify the OpenAI API type. Default: None"
        | optional,
      openai-api-version
        | String
        | doc "Specify the OpenAI API version. Default: None"
        | optional,
      openai-organization-id
        | String
        | doc "Specify the OpenAI organization ID. Default: None"
        | optional,
      opus
        | Bool
        | doc "Use claude-3-opus-20240229 model for the main chat. Default: false"
        | optional,
      pretty
        | Bool
        | doc "Enable/disable pretty, colorized output. Default: true"
        | optional,
      read
        | Array String
        | doc "Specify a read-only file. Default: []"
        | optional,
      reasoning-effort
        | String
        | doc "Set the reasoning_effort API parameter. Default: None"
        | optional,
      restore-chat-history
        | Bool
        | doc "Restore the previous chat history messages. Default: false"
        | optional,
      set-env
        | Array String
        | doc "Set environment variables. Default: []"
        | optional,
      show-diffs
        | Bool
        | doc "Show diffs when committing changes. Default: false"
        | optional,
      show-model-warnings
        | Bool
        | doc "Only work with models that have meta-data available. Default: true"
        | optional,
      show-prompts
        | Bool
        | doc "Print the system prompts and exit. Default: false"
        | optional,
      show-release-notes
        | Bool
        | doc "Show release notes on first run of new version. Default: None"
        | optional,
      show-repo-map
        | Bool
        | doc "Print the repo map and exit. Default: false"
        | optional,
      skip-sanity-check-repo
        | Bool
        | doc "Skip the sanity check for the git repository. Default: false"
        | optional,
      sonnet
        | Bool
        | doc "Use anthropic/claude-3-7-sonnet-20250219 model for the main chat. Default: false"
        | optional,
      stream
        | Bool
        | doc "Enable/disable streaming responses. Default: true"
        | optional,
      subtree-only
        | Bool
        | doc "Only consider files in the current subtree of the git repository. Default: false"
        | optional,
      suggest-shell-commands
        | Bool
        | doc "Enable/disable suggesting shell commands. Default: true"
        | optional,
      test
        | Bool
        | doc "Run tests, fix problems found and then exit. Default: false"
        | optional,
      test-cmd
        | Array String
        | doc "Specify command to run tests. Default: []"
        | optional,
      thinking-tokens
        | String
        | doc "Set the thinking token budget for models that support it. Default: None"
        | optional,
      timeout
        | String
        | doc "Timeout in seconds for API calls. Default: None"
        | optional,
      tool-error-color
        | String
        | doc "Set the color for tool error messages. Default: #FF2222"
        | optional,
      tool-output-color
        | String
        | doc "Set the color for tool output. Default: None"
        | optional,
      tool-warning-color
        | String
        | doc "Set the color for tool warning messages. Default: #FFA500"
        | optional,
      upgrade
        | Bool
        | doc "Upgrade aider to the latest version from PyPI. Default: false"
        | optional,
      user-input-color
        | String
        | doc "Set the color for user input. Default: #00cc00"
        | optional,
      verbose | Bool | doc "Enable verbose output. Default: false" | optional,
      verify-ssl
        | Bool
        | doc "Verify the SSL cert when connecting to models. Default: true"
        | optional,
      version
        | Bool
        | doc "Show the version number and exit. Default: None"
        | optional,
      vim
        | Bool
        | doc "Use VI editing mode in the terminal. Default: false"
        | optional,
      voice-format
        | String
        | doc "Audio format for voice recording. Default: wav"
        | optional,
      voice-input-device
        | String
        | doc "Specify the input device name for voice recording. Default: None"
        | optional,
      voice-language
        | String
        | doc "Specify the language for voice using ISO 639-1 code. Default: en"
        | optional,
      watch-files
        | Bool
        | doc "Enable/disable watching files for ai coding comments. Default: false"
        | optional,
      weak-model
        | String
        | doc "Specify the model to use for commit messages and chat history summarization. Default: None"
        | optional,
      yes-always
        | Bool
        | doc "Always say yes to every confirmation. Default: None"
        | optional,
      ..
    }