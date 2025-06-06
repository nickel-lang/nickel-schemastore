# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.Alacritty.Command" =
        { args | Array String | optional, program | String | optional, },
      "definitions.Alacritty.Cursor.Style" =
        {
            blinking
              | std.enum.TagOrString
              | [| 'Always, 'On, 'Off, 'Never |]
              | doc m%"
                # Cursor blinking state
                
                 Values for `blinking`:
                   - Never: Prevent the cursor from ever blinking
                   - Off: Disable blinking by default
                   - On: Enable blinking by default
                   - Always: Force the cursor to always blink
              "%
              | optional,
            shape
              | std.enum.TagOrString
              | [| 'Underline, 'Beam, 'Block |]
              | doc m%"
                Cursor shape
                
                 Values for `shape`:
                   - ▇ Block
                   - _ Underline
                   - | Beam
              "%
              | optional,
          },
      "definitions.Alacritty.KeyBindings.Action" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'PasteSelection,
                'CopySelection,
                'ToggleSimpleFullscreen,
                'SearchHistoryNext,
                'SearchHistoryPrevious,
                'SearchDeleteWord,
                'SearchClear,
                'SearchCancel,
                'SearchConfirm,
                'SearchFocusPrevious,
                'SearchFocusNext,
                'SearchEnd,
                'SearchStart,
                'SearchPrevious,
                'SearchNext,
                'Bracket,
                'WordRightEnd,
                'WordLeftEnd,
                'WordRight,
                'WordLeft,
                'SemanticRightEnd,
                'SemanticLeftEnd,
                'SemanticRight,
                'SemanticLeft,
                'Low,
                'Middle,
                'High,
                'FirstOccupied,
                'Last,
                'First,
                'Right,
                'Left,
                'Down,
                'Up,
                'CenterAroundViCursor,
                'ToggleSemanticSelection,
                'ToggleBlockSelection,
                'ToggleLineSelection,
                'ToggleNormalSelection,
                'Open,
                'None,
                'ReceiveChar,
                'ClearSelection,
                'ClearLogNotice,
                'CreateNewWindow,
                'SpawnNewInstance,
                'ToggleFullscreen,
                'Quit,
                'Minimize,
                'Hide,
                'ClearHistory,
                'ScrollToBottom,
                'ScrollToTop,
                'ScrollLineDown,
                'ScrollLineUp,
                'ScrollHalfPageDown,
                'ScrollHalfPageUp,
                'ScrollPageDown,
                'ScrollPageUp,
                'ResetFontSize,
                'DecreaseFontSize,
                'IncreaseFontSize,
                'Paste,
                'Copy,
                'SearchBackward,
                'SearchForward,
                'ToggleViMode
              |]
            ],
      "definitions.Alacritty.KeyBindings.Chars" = String,
      "definitions.Alacritty.KeyBindings.Key" = String,
      "definitions.Alacritty.Mode" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                '"~Vi",
                '"~Alt",
                '"~Search",
                '"~AppKeypad",
                '"~AppCursor",
                'Vi,
                'Alt,
                'Search,
                'AppKeypad,
                'AppCursor
              |]
            ],
      "definitions.Alacritty.Mods" =
        js2n.string.Matches
            "(Command|Control|Option|Super|Shift|Alt)(\\s*\\|\\s*(Command|Control|Option|Super|Shift|Alt))*",
      "definitions.Alacritty.MouseBinding" =
        {
            action | String,
            mouse | std.enum.TagOrString | [| 'Right, 'Middle, 'Left |],
          },
    }
    in
  {
      bell
        | {
          animation
            | std.enum.TagOrString
            | [|
              'Linear,
              'EaseOutCirc,
              'EaseOutExpo,
              'EaseOutQuint,
              'EaseOutQuart,
              'EaseOutCubic,
              'EaseOutQuad,
              'EaseOutSine,
              'EaseOut,
              'Ease
            |]
            | doc "Animation effect for flashing the screen when the visual bell is rung."
            | optional,
          color
            | js2n.string.Matches "#[a-z0-9]{6}"
            | doc "Visual bell animation color."
            | optional,
          command | refs."definitions.Alacritty.Command" | optional,
          duration
            | std.number.Integer
            | doc m%"
              Duration of the visual bell flash in milliseconds. A `duration` of `0` will
               disable the visual bell animation.
            "%
            | optional,
        }
        | doc "The bell is rung every time the BEL control character is received."
        | optional,
      colors
        | std.contract.any_of
          [
            js2n.Null,
            Bool,
            Number,
            String,
            {
              bright
                | {
                  black | js2n.string.Matches "#[a-z0-9]{6}" | optional,
                  blue | js2n.string.Matches "#[a-z0-9]{6}" | optional,
                  cyan | js2n.string.Matches "#[a-z0-9]{6}" | optional,
                  green | js2n.string.Matches "#[a-z0-9]{6}" | optional,
                  magenta | js2n.string.Matches "#[a-z0-9]{6}" | optional,
                  red | js2n.string.Matches "#[a-z0-9]{6}" | optional,
                  white | js2n.string.Matches "#[a-z0-9]{6}" | optional,
                  yellow | js2n.string.Matches "#[a-z0-9]{6}" | optional,
                  ..
                }
                | optional,
              cursor
                | {
                  cursor
                    | js2n.string.Matches
                      "#[a-z0-9]{6}|CellBackground|CellForeground"
                    | optional,
                  text
                    | js2n.string.Matches
                      "#[a-z0-9]{6}|CellBackground|CellForeground"
                    | optional,
                  ..
                }
                | doc "Colors which should be used to draw the terminal cursor. Allowed values are hexadecimal colors like `#ff00ff`, or `CellForeground`/`CellBackground`, which references the affected cell"
                | optional,
              dim
                | {
                  black | js2n.string.Matches "#[a-z0-9]{6}" | optional,
                  blue | js2n.string.Matches "#[a-z0-9]{6}" | optional,
                  cyan | js2n.string.Matches "#[a-z0-9]{6}" | optional,
                  green | js2n.string.Matches "#[a-z0-9]{6}" | optional,
                  magenta | js2n.string.Matches "#[a-z0-9]{6}" | optional,
                  red | js2n.string.Matches "#[a-z0-9]{6}" | optional,
                  white | js2n.string.Matches "#[a-z0-9]{6}" | optional,
                  yellow | js2n.string.Matches "#[a-z0-9]{6}" | optional,
                  ..
                }
                | optional,
              draw_bold_text_with_bright_colors
                | Bool
                | doc "If `true`, bold text is drawn using the bright color variants."
                | optional,
              footer_bar
                | {
                  background | js2n.string.Matches "#[a-z0-9]{6}" | optional,
                  foreground | js2n.string.Matches "#[a-z0-9]{6}" | optional,
                  ..
                }
                | doc "Color used for the footer bar on the bottom, used by search regex input, hyperlink URI preview, etc"
                | optional,
              hints
                | {
                  end
                    | {
                      background
                        | js2n.string.Matches
                          "#[a-z0-9]{6}|CellBackground|CellForeground"
                        | optional,
                      foreground
                        | js2n.string.Matches
                          "#[a-z0-9]{6}|CellBackground|CellForeground"
                        | optional,
                      ..
                    }
                    | doc "All characters after the first one in the hint label. Allowed values are hexadecimal colors like `#ff00ff`, or `CellForeground`/`CellBackground`, which references the affected cell"
                    | optional,
                  start
                    | {
                      background
                        | js2n.string.Matches
                          "#[a-z0-9]{6}|CellBackground|CellForeground"
                        | optional,
                      foreground
                        | js2n.string.Matches
                          "#[a-z0-9]{6}|CellBackground|CellForeground"
                        | optional,
                      ..
                    }
                    | doc "First character in the hint label. Allowed values are hexadecimal colors like `#ff00ff`, or `CellForeground`/`CellBackground`, which references the affected cell"
                    | optional,
                  ..
                }
                | optional,
              indexed_colors
                | Array
                  {
                    color | String | optional,
                    index | std.number.Integer | optional,
                    ..
                  }
                | doc "The indexed colors include all colors from 16 to 256. When these are not set, they're filled with sensible defaults"
                | optional,
              line_indicator
                | {
                  background
                    | js2n.string.Matches "#[a-z0-9]{6}|None"
                    | optional,
                  foreground
                    | js2n.string.Matches "#[a-z0-9]{6}|None"
                    | optional,
                  ..
                }
                | doc "Color used for the indicator displaying the position in history during search and vi mode"
                | optional,
              normal
                | {
                  black | js2n.string.Matches "#[a-z0-9]{6}" | optional,
                  blue | js2n.string.Matches "#[a-z0-9]{6}" | optional,
                  cyan | js2n.string.Matches "#[a-z0-9]{6}" | optional,
                  green | js2n.string.Matches "#[a-z0-9]{6}" | optional,
                  magenta | js2n.string.Matches "#[a-z0-9]{6}" | optional,
                  red | js2n.string.Matches "#[a-z0-9]{6}" | optional,
                  white | js2n.string.Matches "#[a-z0-9]{6}" | optional,
                  yellow | js2n.string.Matches "#[a-z0-9]{6}" | optional,
                  ..
                }
                | optional,
              primary
                | {
                  background | js2n.string.Matches "#[a-z0-9]{6}" | optional,
                  bright_foreground
                    | js2n.string.Matches "#[a-z0-9]{6}|None"
                    | doc "This color is only used when `draw_bold_text_with_bright_colors` is true. If this is not set, the normal foreground will be used"
                    | optional,
                  dim_foreground
                    | js2n.string.Matches "#[a-z0-9]{6}"
                    | doc "If this is not set, the color is automatically calculated based on the foreground color"
                    | optional,
                  foreground | js2n.string.Matches "#[a-z0-9]{6}" | optional,
                  ..
                }
                | optional,
              search
                | {
                  focused_match
                    | {
                      background
                        | js2n.string.Matches
                          "#[a-z0-9]{6}|CellBackground|CellForeground"
                        | optional,
                      foreground
                        | js2n.string.Matches
                          "#[a-z0-9]{6}|CellBackground|CellForeground"
                        | optional,
                      ..
                    }
                    | optional,
                  matches
                    | {
                      background
                        | js2n.string.Matches
                          "#[a-z0-9]{6}|CellBackground|CellForeground"
                        | optional,
                      foreground
                        | js2n.string.Matches
                          "#[a-z0-9]{6}|CellBackground|CellForeground"
                        | optional,
                      ..
                    }
                    | optional,
                  ..
                }
                | optional,
              selection
                | {
                  cursor
                    | js2n.string.Matches
                      "#[a-z0-9]{6}|CellBackground|CellForeground"
                    | optional,
                  text
                    | js2n.string.Matches
                      "#[a-z0-9]{6}|CellBackground|CellForeground"
                    | optional,
                  ..
                }
                | doc "Colors used for drawing selections. Allowed values are hexadecimal colors like `#ff00ff`, or `CellForeground`/`CellBackground`, which references the affected cell"
                | optional,
              transparent_background_colors
                | Bool
                | doc "Whether or not `window.opacity` applies to all cell backgrounds, or only to the default background. When set to `true` all cells will be transparent regardless of their background color"
                | optional,
              vi_mode_cursor
                | {
                  cursor
                    | js2n.string.Matches
                      "#[a-z0-9]{6}|CellBackground|CellForeground"
                    | optional,
                  text
                    | js2n.string.Matches
                      "#[a-z0-9]{6}|CellBackground|CellForeground"
                    | optional,
                  ..
                }
                | doc "Colors for the cursor when the vi mode is active. Allowed values are hexadecimal colors like `#ff00ff`, or `CellForeground`/`CellBackground`, which references the affected cell"
                | optional,
            },
            Array Dyn
          ]
        | optional,
      cursor
        | {
          blink_interval
            | std.number.Integer
            | js2n.number.Minimum 0
            | doc "Cursor blinking interval in milliseconds."
            | optional,
          blink_timeout
            | std.number.Integer
            | doc m%"
              Time after which cursor stops blinking in seconds. 
              
               Specifying '0' will disable timeout for blinking
            "%
            | optional,
          style | refs."definitions.Alacritty.Cursor.Style" | optional,
          thickness
            | js2n.number.Maximum 1
            | js2n.number.Minimum 0
            | doc "Thickness of the cursor relative to the cell width as floating point number from `0.0` to `1.0`."
            | optional,
          unfocused_hollow
            | Bool
            | doc "If this is `true`, the cursor will be rendered as a hollow box when the window is not focused."
            | optional,
          vi_mode_style
            | std.contract.any_of
              [ refs."definitions.Alacritty.Cursor.Style", String ]
            | doc m%"
              
              Vi mode cursor style
               If the vi mode cursor style is `None` or not specified, it will fall back to
               the style of the active value of the normal cursor.
            "%
            | optional,
        }
        | optional,
      debug
        | {
          highlight_damage
            | Bool
            | doc "Highlight window damage information."
            | optional,
          log_level
            | std.enum.TagOrString
            | [| 'Trace, 'Debug, 'Info, 'Warn, 'Error, 'Off |]
            | doc "To add extra libraries to logging `ALACRITTY_EXTRA_LOG_TARGETS` variable can be used"
            | optional,
          persistent_logging
            | Bool
            | doc "Keep the log file after quitting Alacritty."
            | optional,
          prefer_egl
            | Bool
            | doc "Use EGL as display API if the current platform allows it. Note that transparency may not work with EGL on Linux/BSD"
            | optional,
          print_events | Bool | doc "Log all received window events" | optional,
          render_timer
            | Bool
            | doc "Display the time it takes to redraw each frame."
            | optional,
          renderer
            | std.enum.TagOrString
            | [| 'None, 'gles2_pure, 'gles2, 'glsl3 |]
            | doc "Force use of a specific renderer, \"None\" will use the highest available one."
            | optional,
        }
        | optional,
      env
        | {  .. }
        | doc "Any items in the `env` entry below will be added as environment variables. Some entries may override variables set by alacritty itself."
        | optional,
      font
        | {
          bold
            | {
              family
                | String
                | doc m%"
                  If the bold family is not specified, it will fall back to the
                   value specified for the normal font.
                "%
                | optional,
              style
                | String
                | doc "The `style` can be specified to pick a specific face."
                | optional,
              ..
            }
            | optional,
          bold_italic
            | {
              family
                | String
                | doc m%"
                  If the bold_italic family is not specified, it will fall back to the
                   value specified for the normal font.
                "%
                | optional,
              style
                | String
                | doc "The `style` can be specified to pick a specific face."
                | optional,
              ..
            }
            | optional,
          builtin_box_drawing
            | Bool
            | doc m%"
              Use built-in font for box drawing characters.
              
               If `true`, Alacritty will use a custom built-in font for box drawing
               characters (Unicode points 2500 - 259f).
            "%
            | optional,
          glyph_offset
            | { x | Number | optional, y | Number | optional, }
            | doc m%"
              Glyph offset determines the locations of the glyphs within their cells with
               the default being at the bottom. Increasing `x` moves the glyph to the
               right, increasing `y` moves the glyph upward.
            "%
            | optional,
          italic
            | {
              family
                | String
                | doc m%"
                  If the italic family is not specified, it will fall back to the
                   value specified for the normal font.
                "%
                | optional,
              style
                | String
                | doc "The `style` can be specified to pick a specific face."
                | optional,
              ..
            }
            | optional,
          normal
            | {
              family
                | String
                | doc m%"
                  Font family
                  
                   Default:
                     - (macOS) Menlo
                     - (Linux/BSD) monospace
                     - (Windows) Consolas
                "%
                | optional,
              style
                | String
                | doc "The `style` can be specified to pick a specific face."
                | optional,
              ..
            }
            | optional,
          offset
            | { x | Number | optional, y | Number | optional, }
            | doc m%"
              Offset is the extra space around each character. `offset.y` can be thought
               of as modifying the line spacing, and `offset.x` as modifying the letter
               spacing.
            "%
            | optional,
          size | js2n.number.Minimum 0 | doc "Point size" | optional,
        }
        | optional,
      hints
        | {
          alphabet | String | doc "Keys used for the hint labels" | optional,
          enabled
            | Array
              {
                action
                  | std.enum.TagOrString
                  | [| 'MoveViModeCursor, 'Select, 'Paste, 'Copy |]
                  | doc m%"
                    - Copy: Copy the hint's text to the clipboard
                    - Paste: Paste the hint's text to the terminal or search
                    - Select: Select the hint's text
                    - MoveViModeCursor: Move the vi mode cursor to the beginning of the hint
                  "%
                  | optional,
                binding
                  | {
                    key
                      | refs."definitions.Alacritty.KeyBindings.Key"
                      | optional,
                    mode | refs."definitions.Alacritty.Mode" | optional,
                    mods | refs."definitions.Alacritty.Mods" | optional,
                    ..
                  }
                  | doc m%"
                    See `keyboard.bindings` for documentation on available values.
                    This controls which key binding is used to start the keyboard hint selection process
                  "%
                  | optional,
                command
                  | std.contract.any_of
                    [
                      String,
                      {
                        args | Array String | optional,
                        program | String | optional,
                        ..
                      }
                    ]
                  | doc m%"
                    Command which will be executed when the hint is clicked or selected with the `binding`.
                    The hint's text is always attached as the last argument
                  "%
                  | optional,
                hyperlinks
                  | Bool
                  | doc "When this is `true`, all OSC 8 escape sequence hyperlinks will be included in the hints"
                  | optional,
                mouse
                  | {
                    enabled
                      | Bool
                      | doc "The `enabled` field controls if the hint should be underlined when hovering over the hint text with all `mods` pressed"
                      | optional,
                    mods | refs."definitions.Alacritty.Mods" | optional,
                    ..
                  }
                  | doc "See `keyboard.bindings` for documentation on available mods"
                  | optional,
                persist
                  | Bool
                  | doc "When this is `true`, hints remain persistent after selection"
                  | optional,
                post_processing
                  | Bool
                  | doc "When this is `true`, heuristics will be used to shorten the match if there are characters likely not to be part of the hint (e.g. a trailing .). This is most useful for URIs and applies only to `regex` matches"
                  | optional,
                regex
                  | String
                  | doc "Regex each line will be compared against"
                  | optional,
                ..
              }
            | doc "Array with all available hints. Each hint must have at least one of `regex` or `hyperlinks` and either an `action` or a `command`"
            | optional,
          ..
        }
        | doc "Terminal hints can be used to find text or hyperlinks in the visible part of the terminal and pipe it to other applications"
        | optional,
      "import"
        | Array String
        | doc m%"
          Import additional configuration files. 
           Imports are loaded in order, skipping all missing files, with the importing file being loaded last. If a field is already present in a previous import, it will be replaced.
        "%
        | optional,
      ipc_socket
        | Bool
        | doc "Offer IPC using `alacritty msg` (unix only)"
        | optional,
      key
        | std.contract.any_of
          [
            js2n.Null,
            Bool,
            Number,
            String,
            {
              bindings
                | Array
                  {
                    action
                      | refs."definitions.Alacritty.KeyBindings.Action"
                      | optional,
                    chars
                      | refs."definitions.Alacritty.KeyBindings.Chars"
                      | optional,
                    command | refs."definitions.Alacritty.Command" | optional,
                    key
                      | refs."definitions.Alacritty.KeyBindings.Key"
                      | optional,
                    mode | refs."definitions.Alacritty.Mode" | optional,
                    mods | refs."definitions.Alacritty.Mods" | optional,
                  }
                | optional,
              ..
            },
            Array Dyn
          ]
        | optional,
      live_config_reload
        | Bool
        | doc "Live config reload (changes require restart). Will make alacritty auto load new changes in the config file"
        | optional,
      mouse
        | {
          bindings | Array refs."definitions.Alacritty.MouseBinding" | optional,
          hide_when_typing
            | Bool
            | doc "When this is `true`, the cursor is temporarily hidden when typing."
            | optional,
          ..
        }
        | optional,
      scrolling
        | {
          history
            | std.number.Integer
            | js2n.number.Minimum 0
            | doc m%"
              Maximum number of lines in the scrollback buffer.
               Specifying '0' will disable scrolling.
            "%
            | optional,
          multiplier
            | std.number.Integer
            | doc "Scrolling distance multiplier."
            | optional,
        }
        | optional,
      selection
        | {
          save_to_clipboard
            | Bool
            | doc "When set to `true`, selected text will be copied to the primary clipboard."
            | optional,
          semantic_escape_chars
            | String
            | doc "This string contains all characters that are used as separators for \"semantic words\" in Alacritty."
            | optional,
        }
        | optional,
      shell
        | std.contract.any_of
          [
            String,
            { args | Array String | optional, program | String | optional, .. }
          ]
        | doc "You can set shell.program to the path of your favorite shell, e.g. /bin/zsh. Entries in shell.args are passed as arguments to the shell"
        | optional,
      terminal | { _ | Dyn } | optional,
      window
        | {
          blur
            | Bool
            | doc "Request compositor to blur content behind transparent windows"
            | optional,
          class
            | { general | String | optional, instance | String | optional, .. }
            | doc "Window class (Linux/BSD only):"
            | optional,
          decorations
            | std.enum.TagOrString
            | [| 'buttonless, 'transparent, 'none, 'full |]
            | doc m%"
              Values for `decorations`: 
                   - full: Borders and title bar 
                   - none: Neither borders nor title bar 
              
               Values for `decorations` (macOS only):
                   - transparent: Title bar, transparent background and title bar buttons
                   - buttonless: Title bar, transparent background and no title bar buttons
            "%
            | optional,
          decorations_theme_variant
            | String
            | doc m%"
              Decorations theme variant (Linux/BSD only)
              
              Override the variant of the GTK theme/Wayland client side decorations.
               Commonly supported values are `dark` and `light`. Set this to `None` to use
               the default theme variant.
            "%
            | optional,
          dimensions
            | {
              columns | js2n.number.Minimum 2 | optional,
              lines | js2n.number.Minimum 0 | optional,
            }
            | doc m%"
              Window dimensions (changes require restart). 
               Number of lines/columns (not pixels) in the terminal. Both lines and columns
               must be non-zero for this to take effect. The number of columns must be at
               least `2`, while using a value of `0` for columns and lines will fall back
               to the window manager's recommended size
            "%
            | optional,
          dynamic_padding
            | Bool
            | doc "Spread additional padding evenly around the terminal content."
            | optional,
          dynamic_title
            | Bool
            | doc "Allow terminal applications to change Alacritty's window title."
            | optional,
          opacity
            | js2n.number.Maximum 1
            | js2n.number.Minimum 0
            | doc m%"
              Background opacity
              
               Window opacity as a floating point number from `0.0` to `1.0`.
               The value `0.0` is completely transparent and `1.0` is opaque.
            "%
            | optional,
          option_as_alt
            | std.enum.TagOrString
            | [| 'None, 'Both, 'OnlyRight, 'OnlyLeft |]
            | doc "Make `Option` key behave as `Alt` (macos only)"
            | optional,
          padding
            | { x | Number | optional, y | Number | optional, }
            | doc m%"
              # Window padding (changes require restart)
              
               Blank space added around the window in pixels. This padding is scaled
               by DPI and the specified value is always added at both opposing sides.
            "%
            | optional,
          position
            | { x | Number | optional, y | Number | optional, }
            | doc m%"
              Window position (changes require restart)
              Specified in number of pixels.
              If the position is not set, the window manager will handle the placement.
            "%
            | optional,
          resize_increments
            | Bool
            | doc "Prefer resizing window by discrete steps equal to cell dimensions"
            | optional,
          startup_mode
            | std.enum.TagOrString
            | [| 'SimpleFullscreen, 'Fullscreen, 'Maximized, 'Windowed |]
            | doc m%"
                # Startup Mode (changes require restart)
              
               Values for `startup_mode`:
                 - Windowed
                 - Maximized
                 - Fullscreen
              
               Values for `startup_mode` (macOS only):
                 - SimpleFullscreen
            "%
            | optional,
          title | String | doc "Window Title" | optional,
        }
        | optional,
      working_directory
        | String
        | doc m%"
          Startup directory
          
           Directory the shell is started in. If this is unset, or `None`, the working
           directory of the parent process will be used.
        "%
        | optional,
      ..
    }