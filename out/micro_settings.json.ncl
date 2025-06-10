# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      autoindent
        | Bool
        | doc m%"
          Whether to use the same indentation as a previous line
          https://github.com/zyedidia/micro/blob/master/runtime/help/options.md#options
        "%
        | optional,
      autosave
        | std.number.Integer
        | js2n.number.Minimum 0
        | doc m%"
          A delay between automatic saves
          https://github.com/zyedidia/micro/blob/master/runtime/help/options.md#options
        "%
        | optional,
      autosu
        | Bool
        | doc m%"
          Whether attempt to use super user privileges
          https://github.com/zyedidia/micro/blob/master/runtime/help/options.md#options
        "%
        | optional,
      backup
        | Bool
        | doc m%"
          Whether to backup all open buffers
          https://github.com/zyedidia/micro/blob/master/runtime/help/options.md#options
        "%
        | optional,
      backupdir
        | String
        | doc m%"
          A directory to store backups
          https://github.com/zyedidia/micro/blob/master/runtime/help/options.md#options
        "%
        | optional,
      basename
        | Bool
        | doc m%"
          Whether to show a basename instead of a full path
          https://github.com/zyedidia/micro/blob/master/runtime/help/options.md#options
        "%
        | optional,
      clipboard
        | std.enum.TagOrString
        | [| 'internal, 'terminal, 'external |]
        | doc m%"
          A way to access the system clipboard
          https://github.com/zyedidia/micro/blob/master/runtime/help/options.md#options
        "%
        | optional,
      colorcolumn
        | std.number.Integer
        | js2n.number.Minimum 0
        | doc m%"
          A position to display a column
          https://github.com/zyedidia/micro/blob/master/runtime/help/options.md#options
        "%
        | optional,
      colorscheme
        | std.enum.TagOrString
        | [|
          'zenburn,
          'twilight,
          'sunny-day,
          'solarized-tc,
          'solarized,
          'simple,
          'railscast,
          'one-dark,
          'monokai,
          'monokai-dark,
          'material-tc,
          'gruvbox-tc,
          'gruvbox,
          'gotham,
          'geany,
          'dukeubuntu-tc,
          'dukelight-tc,
          'dukedark-tc,
          'dracula-tc,
          '"default",
          'darcula,
          'cmc-tc,
          'cmc-16,
          'bubblegum,
          'atom-dark
        |]
        | doc m%"
          A color scheme
          https://github.com/zyedidia/micro/blob/master/runtime/help/options.md#options
        "%
        | optional,
      cursorline
        | Bool
        | doc m%"
          Whether to highlight a line with a cursor with a different color
          https://github.com/zyedidia/micro/blob/master/runtime/help/options.md#options
        "%
        | optional,
      diffgutter
        | Bool
        | doc m%"
          Whether to display diff inticators before lines
          https://github.com/zyedidia/micro/blob/master/runtime/help/options.md#options
        "%
        | optional,
      divchars
        | String
        | doc m%"
          Divider chars for vertical and horizontal splits
          https://github.com/zyedidia/micro/blob/master/runtime/help/options.md#options
        "%
        | optional,
      divreverse
        | Bool
        | doc m%"
          Whether to use inversed color scheme colors for splits
          https://github.com/zyedidia/micro/blob/master/runtime/help/options.md#options
        "%
        | optional,
      encoding
        | String
        | doc m%"
          An encoding used to open and save files
          https://github.com/zyedidia/micro/blob/master/runtime/help/options.md#options
        "%
        | optional,
      eofnewline
        | Bool
        | doc m%"
          Whether to add a missing trailing new line
          https://github.com/zyedidia/micro/blob/master/runtime/help/options.md#options
        "%
        | optional,
      fastdirty
        | Bool
        | doc m%"
          Whether to use a fast algorithm to determine whether a file is changed
          https://github.com/zyedidia/micro/blob/master/runtime/help/options.md#options
        "%
        | optional,
      fileformat
        | std.enum.TagOrString
        | [| 'dos, 'unix |]
        | doc m%"
          A line ending format
          https://github.com/zyedidia/micro/blob/master/runtime/help/options.md#options
        "%
        | optional,
      filetype
        | String
        | doc m%"
          A filetype for the current buffer
          https://github.com/zyedidia/micro/blob/master/runtime/help/options.md#options
        "%
        | optional,
      hlsearch
        | Bool
        | doc m%"
          Whether to highlight all instances of a searched text after a successful search
          https://github.com/zyedidia/micro/blob/master/runtime/help/options.md#options
        "%
        | optional,
      ignorecase
        | Bool
        | doc m%"
          Whether to perform case-insensitive searches
          https://github.com/zyedidia/micro/blob/master/runtime/help/options.md#options
        "%
        | optional,
      incsearch
        | Bool
        | doc m%"
          Whether to enable an incremental search in `Find` prompt
          https://github.com/zyedidia/micro/blob/master/runtime/help/options.md#options
        "%
        | optional,
      indentchar
        | js2n.string.MaxLength 1
        | doc m%"
          An indentation character
          https://github.com/zyedidia/micro/blob/master/runtime/help/options.md#options
        "%
        | optional,
      infobar
        | Bool
        | doc m%"
          Whether to enable a line at the bottom where messages are printed
          https://github.com/zyedidia/micro/blob/master/runtime/help/options.md#options
        "%
        | optional,
      keepautoindent
        | Bool
        | doc m%"
          Whether add a whitespace while using autoindent
          https://github.com/zyedidia/micro/blob/master/runtime/help/options.md#options
        "%
        | optional,
      keymenu
        | Bool
        | doc m%"
          Whether to display nano-style key menu at the bottom
          https://github.com/zyedidia/micro/blob/master/runtime/help/options.md#options
        "%
        | optional,
      matchbrace
        | Bool
        | doc m%"
          Whether to show matching braces
          https://github.com/zyedidia/micro/blob/master/runtime/help/options.md#options
        "%
        | optional,
      matchbracestyle
        | std.enum.TagOrString
        | [| 'highlight, 'underline |]
        | doc m%"
          Whether to underline or highlight matching braces
          https://github.com/zyedidia/micro/blob/master/runtime/help/options.md#options
        "%
        | optional,
      mkparents
        | Bool
        | doc m%"
          Whether to create missing directories
          https://github.com/zyedidia/micro/blob/master/runtime/help/options.md#options
        "%
        | optional,
      mouse
        | Bool
        | doc m%"
          Whether to enable mouse support
          https://github.com/zyedidia/micro/blob/master/runtime/help/options.md#options
        "%
        | optional,
      parsecursor
        | Bool
        | doc m%"
          Whether to extract a line number and a column to open files with from file names
          https://github.com/zyedidia/micro/blob/master/runtime/help/options.md#options
        "%
        | optional,
      paste
        | Bool
        | doc m%"
          Whether to treat characters sent from the terminal in a single chunk as a paste event
          https://github.com/zyedidia/micro/blob/master/runtime/help/options.md#options
        "%
        | optional,
      permbackup
        | Bool
        | doc m%"
          Whether to permanently save backups
          https://github.com/zyedidia/micro/blob/master/runtime/help/options.md#options
        "%
        | optional,
      pluginchannels
        | String
        | doc m%"
          A file with list of plugin channels
          https://github.com/zyedidia/micro/blob/master/runtime/help/options.md#options
        "%
        | optional,
      pluginrepos
        | js2n.array.UniqueItems
        | Array String
        | doc m%"
          Plugin repositories
          https://github.com/zyedidia/micro/blob/master/runtime/help/options.md#options
        "%
        | optional,
      readonly
        | Bool
        | doc m%"
          Whether to forbid buffer editing
          https://github.com/zyedidia/micro/blob/master/runtime/help/options.md#options
        "%
        | optional,
      relativeruler
        | Bool
        | doc m%"
          Whether to display relative line numbers
          https://github.com/zyedidia/micro/blob/master/runtime/help/options.md#options
        "%
        | optional,
      rmtrailingws
        | Bool
        | doc m%"
          Whether to remove trailing whitespaces
          https://github.com/zyedidia/micro/blob/master/runtime/help/options.md#options
        "%
        | optional,
      ruler
        | Bool
        | doc m%"
          Whether to display line numbers
          https://github.com/zyedidia/micro/blob/master/runtime/help/options.md#options
        "%
        | optional,
      savecursor
        | Bool
        | doc m%"
          Whether to save cursor position in files
          https://github.com/zyedidia/micro/blob/master/runtime/help/options.md#options
        "%
        | optional,
      savehistory
        | Bool
        | doc m%"
          Whether to save command history between closing and re-opening editor
          https://github.com/zyedidia/micro/blob/master/runtime/help/options.md#options
        "%
        | optional,
      saveundo
        | Bool
        | doc m%"
          Whether to save undo after closing file
          https://github.com/zyedidia/micro/blob/master/runtime/help/options.md#options
        "%
        | optional,
      scrollbar
        | Bool
        | doc m%"
          Whether to save undo after closing file
          https://github.com/zyedidia/micro/blob/master/runtime/help/options.md#options
        "%
        | optional,
      scrollmargin
        | std.number.Integer
        | doc m%"
          A margin at which a view starts scrolling when a cursor approaches an edge of a view
          https://github.com/zyedidia/micro/blob/master/runtime/help/options.md#options
        "%
        | optional,
      scrollspeed
        | std.number.Integer
        | doc m%"
          Line count to scroll for one scroll event
          https://github.com/zyedidia/micro/blob/master/runtime/help/options.md#options
        "%
        | optional,
      smartpaste
        | Bool
        | doc m%"
          Whether to add a leading whitespace while pasting multiple lines
          https://github.com/zyedidia/micro/blob/master/runtime/help/options.md#options
        "%
        | optional,
      softwrap
        | Bool
        | doc m%"
          Whether to wrap long lines
          https://github.com/zyedidia/micro/blob/master/runtime/help/options.md#options
        "%
        | optional,
      splitbottom
        | Bool
        | doc m%"
          Whether to create a new horizontal split below the current one
          https://github.com/zyedidia/micro/blob/master/runtime/help/options.md#options
        "%
        | optional,
      splitright
        | Bool
        | doc m%"
          Whether to create a new vertical split right of the current one
          https://github.com/zyedidia/micro/blob/master/runtime/help/options.md#options
        "%
        | optional,
      statusformatl
        | String
        | doc m%"
          Format string of left-justified part of the statusline
          https://github.com/zyedidia/micro/blob/master/runtime/help/options.md#options
        "%
        | optional,
      statusformatr
        | String
        | doc m%"
          Format string of right-justified part of the statusline
          https://github.com/zyedidia/micro/blob/master/runtime/help/options.md#options
        "%
        | optional,
      statusline
        | Bool
        | doc m%"
          Whether to display a status line
          https://github.com/zyedidia/micro/blob/master/runtime/help/options.md#options
        "%
        | optional,
      sucmd
        | String
        | doc m%"
          A super user command
          https://github.com/zyedidia/micro/blob/master/runtime/help/options.md#options
        "%
        | optional,
      syntax
        | Bool
        | doc m%"
          Whether to enable a syntax highlighting
          https://github.com/zyedidia/micro/blob/master/runtime/help/options.md#options
        "%
        | optional,
      tabhighlight
        | Bool
        | doc m%"
          Whether to invert tab character colors
          https://github.com/zyedidia/micro/blob/master/runtime/help/options.md#options
        "%
        | optional,
      tabmovement
        | Bool
        | doc m%"
          Whether to navigate spaces at the beginning of lines as if they are tabs
          https://github.com/zyedidia/micro/blob/master/runtime/help/options.md#options
        "%
        | optional,
      tabreverse
        | Bool
        | doc m%"
          Whether to reverse tab bar colors
          https://github.com/zyedidia/micro/blob/master/runtime/help/options.md#options
        "%
        | optional,
      tabsize
        | std.number.Integer
        | doc m%"
          A tab size
          https://github.com/zyedidia/micro/blob/master/runtime/help/options.md#options
        "%
        | optional,
      tabstospaces
        | Bool
        | doc m%"
          Whether to use spaces instead of tabs
          https://github.com/zyedidia/micro/blob/master/runtime/help/options.md#options
        "%
        | optional,
      useprimary
        | Bool
        | doc m%"
          Whether to use primary clipboard to copy selections in the background
          https://github.com/zyedidia/micro/blob/master/runtime/help/options.md#options
        "%
        | optional,
      wordwrap
        | Bool
        | doc m%"
          Whether to wrap long lines by words
          https://github.com/zyedidia/micro/blob/master/runtime/help/options.md#options
        "%
        | optional,
      xterm
        | Bool
        | doc m%"
          Whether to assume that the current terminal is `xterm`
          https://github.com/zyedidia/micro/blob/master/runtime/help/options.md#options
        "%
        | optional,
    }