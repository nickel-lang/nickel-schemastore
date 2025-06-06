# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.key" =
        std.contract.Sequence
            [
              js2n.string.MinLength 1,
              std.contract.not
                (std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    js2n.string.Matches "---",
                    { _ | Dyn },
                    Array Dyn
                  ])
            ],
    }
    in
  {
      "editor:delete_word_left"
        | refs."definitions.key"
        | String
        | doc "Delete word left"
        | optional,
      "editor:delete_word_right"
        | refs."definitions.key"
        | String
        | doc "Delete word right"
        | optional,
      "editor:insert_last_word_previous_command"
        | refs."definitions.key"
        | String
        | doc "Insert last word of previous command"
        | optional,
      "editor:select_right"
        | refs."definitions.key"
        | String
        | doc "Select one character to the right"
        | optional,
      "editor:select_to_line_end"
        | refs."definitions.key"
        | String
        | doc "Select to end of line"
        | optional,
      "editor_view:add_cursor_above"
        | refs."definitions.key"
        | String
        | doc "Add cursor above"
        | optional,
      "editor_view:add_cursor_below"
        | refs."definitions.key"
        | String
        | doc "Add cursor below"
        | optional,
      "editor_view:add_next_occurrence"
        | refs."definitions.key"
        | String
        | doc "Add selection for next occurrence"
        | optional,
      "editor_view:backspace"
        | refs."definitions.key"
        | String
        | doc "Remove the previous character"
        | optional,
      "editor_view:clear_and_copy_lines"
        | refs."definitions.key"
        | String
        | doc "Copy and clear selected lines"
        | optional,
      "editor_view:clear_buffer"
        | refs."definitions.key"
        | String
        | doc "Clear command editor"
        | optional,
      "editor_view:clear_lines"
        | refs."definitions.key"
        | String
        | doc "Clear selected lines"
        | optional,
      "editor_view:cmd_down"
        | refs."definitions.key"
        | String
        | doc "Move cursor to the bottom"
        | optional,
      "editor_view:cmd_i"
        | refs."definitions.key"
        | String
        | doc "Inspect command"
        | optional,
      "editor_view:cut_all_right"
        | refs."definitions.key"
        | String
        | doc "Cut all right"
        | optional,
      "editor_view:cut_word_left"
        | refs."definitions.key"
        | String
        | doc "Cut word left"
        | optional,
      "editor_view:cut_word_right"
        | refs."definitions.key"
        | String
        | doc "Cut word right"
        | optional,
      "editor_view:delete"
        | refs."definitions.key"
        | String
        | doc "Delete"
        | optional,
      "editor_view:delete_all_left"
        | refs."definitions.key"
        | String
        | doc "Delete all left"
        | optional,
      "editor_view:delete_all_right"
        | refs."definitions.key"
        | String
        | doc "Delete all right"
        | optional,
      "editor_view:down"
        | refs."definitions.key"
        | String
        | doc "Move cursor down"
        | optional,
      "editor_view:end"
        | refs."definitions.key"
        | String
        | doc "End"
        | optional,
      "editor_view:fold"
        | refs."definitions.key"
        | String
        | doc "Fold"
        | optional,
      "editor_view:fold_selected_ranges"
        | refs."definitions.key"
        | String
        | doc "Fold selected ranges"
        | optional,
      "editor_view:home"
        | refs."definitions.key"
        | String
        | doc "Home"
        | optional,
      "editor_view:insert_newline"
        | refs."definitions.key"
        | String
        | doc "Insert newline"
        | optional,
      "editor_view:left"
        | refs."definitions.key"
        | String
        | doc "Move cursor left"
        | optional,
      "editor_view:move_backward_one_subword"
        | refs."definitions.key"
        | String
        | doc "Move backward one subword"
        | optional,
      "editor_view:move_backward_one_word"
        | refs."definitions.key"
        | String
        | doc "Move backward one word"
        | optional,
      "editor_view:move_forward_one_subword"
        | refs."definitions.key"
        | String
        | doc "Move forward one subword"
        | optional,
      "editor_view:move_forward_one_word"
        | refs."definitions.key"
        | String
        | doc "Move forward one word"
        | optional,
      "editor_view:move_to_buffer_end"
        | refs."definitions.key"
        | String
        | doc "Move to the end of the buffer"
        | optional,
      "editor_view:move_to_buffer_start"
        | refs."definitions.key"
        | String
        | doc "Move to the start of the buffer"
        | optional,
      "editor_view:move_to_line_end"
        | refs."definitions.key"
        | String
        | doc "Move to end of line"
        | optional,
      "editor_view:move_to_line_start"
        | refs."definitions.key"
        | String
        | doc "Move to start of line"
        | optional,
      "editor_view:move_to_paragraph_end"
        | refs."definitions.key"
        | String
        | doc "Move to the end of the paragraph"
        | optional,
      "editor_view:move_to_paragraph_start"
        | refs."definitions.key"
        | String
        | doc "Move to the start of the paragraph"
        | optional,
      "editor_view:right"
        | refs."definitions.key"
        | String
        | doc "Move cursor right / accept autosuggestion"
        | optional,
      "editor_view:select_all"
        | refs."definitions.key"
        | String
        | doc "Select all"
        | optional,
      "editor_view:select_down"
        | refs."definitions.key"
        | String
        | doc "Select down"
        | optional,
      "editor_view:select_left"
        | refs."definitions.key"
        | String
        | doc "Select one character to the left"
        | optional,
      "editor_view:select_left_by_word"
        | refs."definitions.key"
        | String
        | doc "Select one word to the left"
        | optional,
      "editor_view:select_right_by_word"
        | refs."definitions.key"
        | String
        | doc "Select one word to the right"
        | optional,
      "editor_view:select_to_line_start"
        | refs."definitions.key"
        | String
        | doc "Select to start of line"
        | optional,
      "editor_view:select_up"
        | refs."definitions.key"
        | String
        | doc "Select up"
        | optional,
      "editor_view:unfold"
        | refs."definitions.key"
        | String
        | doc "Unfold"
        | optional,
      "editor_view:up"
        | refs."definitions.key"
        | String
        | doc "Move cursor up"
        | optional,
      "find:find_next_occurrence"
        | refs."definitions.key"
        | String
        | doc "Find the next occurrence of your search query"
        | optional,
      "find:find_prev_occurrence"
        | refs."definitions.key"
        | String
        | doc "Find the previous occurrence of your search query"
        | optional,
      "input:clear_screen"
        | refs."definitions.key"
        | String
        | doc "Clear screen"
        | optional,
      "input:toggle_natural_language_command_search"
        | refs."definitions.key"
        | String
        | doc "Ai command suggestions"
        | optional,
      "input:toggle_workflows"
        | refs."definitions.key"
        | String
        | doc "Workflows"
        | optional,
      "pane_group:add_down"
        | refs."definitions.key"
        | String
        | doc "Split pane down"
        | optional,
      "pane_group:add_right"
        | refs."definitions.key"
        | String
        | doc "Split pane right"
        | optional,
      "pane_group:navigate_down"
        | refs."definitions.key"
        | String
        | doc "Switch panes down"
        | optional,
      "pane_group:navigate_left"
        | refs."definitions.key"
        | String
        | doc "Switch panes left"
        | optional,
      "pane_group:navigate_next"
        | refs."definitions.key"
        | String
        | doc "Activate next pane"
        | optional,
      "pane_group:navigate_prev"
        | refs."definitions.key"
        | String
        | doc "Activate previous pane"
        | optional,
      "pane_group:navigate_right"
        | refs."definitions.key"
        | String
        | doc "Switch panes right"
        | optional,
      "pane_group:navigate_up"
        | refs."definitions.key"
        | String
        | doc "Switch panes up"
        | optional,
      "pane_group:resize_down"
        | refs."definitions.key"
        | String
        | doc "Resize pane > move divider down"
        | optional,
      "pane_group:resize_left"
        | refs."definitions.key"
        | String
        | doc "Resize pane > move divider left"
        | optional,
      "pane_group:resize_right"
        | refs."definitions.key"
        | String
        | doc "Resize pane > move divider right"
        | optional,
      "pane_group:resize_up"
        | refs."definitions.key"
        | String
        | doc "Resize pane > move divider up"
        | optional,
      "pane_group:toggle_maximize_pane"
        | refs."definitions.key"
        | String
        | doc "Toggle maximize active pane"
        | optional,
      "terminal:bookmark_selected_block"
        | refs."definitions.key"
        | String
        | doc "Bookmark selected block"
        | optional,
      "terminal:clear_blocks"
        | refs."definitions.key"
        | String
        | doc "Clear blocks"
        | optional,
      "terminal:copy" | refs."definitions.key" | String | doc "Copy" | optional,
      "terminal:copy_commands"
        | refs."definitions.key"
        | String
        | doc "Copy command"
        | optional,
      "terminal:copy_outputs"
        | refs."definitions.key"
        | String
        | doc "Copy command output"
        | optional,
      "terminal:expand_block_selection_above"
        | refs."definitions.key"
        | String
        | doc "Expand selected blocks above"
        | optional,
      "terminal:expand_block_selection_below"
        | refs."definitions.key"
        | String
        | doc "Expand selected blocks below"
        | optional,
      "terminal:find" | refs."definitions.key" | String | doc "Find" | optional,
      "terminal:focus_input"
        | refs."definitions.key"
        | String
        | doc "Focus terminal input"
        | optional,
      "terminal:open_block_list_context_menu_via_keybinding"
        | refs."definitions.key"
        | String
        | doc "Open block context menu"
        | optional,
      "terminal:open_share_modal"
        | refs."definitions.key"
        | String
        | doc "Share selected block"
        | optional,
      "terminal:paste"
        | refs."definitions.key"
        | String
        | doc "Paste"
        | optional,
      "terminal:reinput_commands"
        | refs."definitions.key"
        | String
        | doc "Reinput selected commands"
        | optional,
      "terminal:reinput_commands_with_sudo"
        | refs."definitions.key"
        | String
        | doc "Reinput selected commands as root"
        | optional,
      "terminal:select_all_blocks"
        | refs."definitions.key"
        | String
        | doc "Select all blocks"
        | optional,
      "terminal:select_bookmark_down"
        | refs."definitions.key"
        | String
        | doc "Select the closest bookmark down"
        | optional,
      "terminal:select_bookmark_up"
        | refs."definitions.key"
        | String
        | doc "Select the closest bookmark up"
        | optional,
      "terminal:select_next_block"
        | refs."definitions.key"
        | String
        | doc "Select next block"
        | optional,
      "terminal:select_previous_block"
        | refs."definitions.key"
        | String
        | doc "Select previous block"
        | optional,
      "workspace:activate_eighth_tab"
        | refs."definitions.key"
        | String
        | doc "Switch to 8th tab"
        | optional,
      "workspace:activate_fifth_tab"
        | refs."definitions.key"
        | String
        | doc "Switch to 5th tab"
        | optional,
      "workspace:activate_first_tab"
        | refs."definitions.key"
        | String
        | doc "Switch to 1st tab"
        | optional,
      "workspace:activate_fourth_tab"
        | refs."definitions.key"
        | String
        | doc "Switch to 4th tab"
        | optional,
      "workspace:activate_last_tab"
        | refs."definitions.key"
        | String
        | doc "Switch to last tab"
        | optional,
      "workspace:activate_next_tab"
        | refs."definitions.key"
        | String
        | doc "Activate next tab"
        | optional,
      "workspace:activate_prev_tab"
        | refs."definitions.key"
        | String
        | doc "Activate previous tab"
        | optional,
      "workspace:activate_second_tab"
        | refs."definitions.key"
        | String
        | doc "Switch to 2nd tab"
        | optional,
      "workspace:activate_seventh_tab"
        | refs."definitions.key"
        | String
        | doc "Switch to 7th tab"
        | optional,
      "workspace:activate_sixth_tab"
        | refs."definitions.key"
        | String
        | doc "Switch to 6th tab"
        | optional,
      "workspace:activate_third_tab"
        | refs."definitions.key"
        | String
        | doc "Switch to 3rd tab"
        | optional,
      "workspace:decrease_font_size"
        | refs."definitions.key"
        | String
        | doc "Decrease font size"
        | optional,
      "workspace:increase_font_size"
        | refs."definitions.key"
        | String
        | doc "Increase font size"
        | optional,
      "workspace:move_tab_left"
        | refs."definitions.key"
        | String
        | doc "Move tab left"
        | optional,
      "workspace:move_tab_right"
        | refs."definitions.key"
        | String
        | doc "Move tab right"
        | optional,
      "workspace:reset_font_size"
        | refs."definitions.key"
        | String
        | doc "Reset font size to default"
        | optional,
      "workspace:set_a11y_concise_verbosity_level"
        | refs."definitions.key"
        | String
        | doc "[a11y] set concise accessibility announcements"
        | optional,
      "workspace:set_a11y_verbose_verbosity_level"
        | refs."definitions.key"
        | String
        | doc "[a11y] set verbose accessibility announcements"
        | optional,
      "workspace:show_command_search"
        | refs."definitions.key"
        | String
        | doc "Command search"
        | optional,
      "workspace:show_keybinding_settings"
        | refs."definitions.key"
        | String
        | doc "Open keybindings editor"
        | optional,
      "workspace:show_settings_account_page"
        | refs."definitions.key"
        | String
        | doc "Open settings: account"
        | optional,
      "workspace:show_settings_modal"
        | refs."definitions.key"
        | String
        | doc "Open settings"
        | optional,
      "workspace:show_theme_chooser"
        | refs."definitions.key"
        | String
        | doc "Open theme picker"
        | optional,
      "workspace:toggle_command_palette"
        | refs."definitions.key"
        | String
        | doc "Toggle command palette"
        | optional,
      "workspace:toggle_launch_config_palette"
        | refs."definitions.key"
        | String
        | doc "Launch configuration palette"
        | optional,
      "workspace:toggle_mouse_reporting"
        | refs."definitions.key"
        | String
        | doc "Toggle mouse reporting"
        | optional,
      "workspace:toggle_navigation_palette"
        | refs."definitions.key"
        | String
        | doc "Toggle navigation palette"
        | optional,
      "workspace:toggle_resource_center"
        | refs."definitions.key"
        | String
        | doc "Open resource center"
        | optional,
    }