# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      author | String | doc "作者資訊" | optional,
      config_version
        | js2n.string.Matches "\\d+(\\.\\d+)*"
        | doc "config version"
        | optional,
      fallback_colors
        | {
          border_color | String | optional,
          candidate_background | String | doc "候选栏的整体背景图/色" | optional,
          candidate_separator_color | String | optional,
          candidate_text_color | String | optional,
          comment_text_color | String | optional,
          hilited_back_color | String | optional,
          hilited_candidate_back_color | String | optional,
          hilited_candidate_text_color | String | optional,
          hilited_comment_text_color | String | optional,
          hilited_key_back_color | String | optional,
          hilited_key_symbol_color | String | optional,
          hilited_key_text_color | String | optional,
          hilited_label_color | String | doc "高亮候选序号" | optional,
          hilited_off_key_back_color | String | optional,
          hilited_off_key_text_color | String | optional,
          hilited_on_key_back_color | String | optional,
          hilited_on_key_text_color | String | optional,
          hilited_text_color | String | optional,
          key_back_color | String | optional,
          key_border_color | String | optional,
          key_symbol_color | String | optional,
          key_text_color | String | optional,
          keyboard_back_color | String | doc "键盘区的背景图/色" | optional,
          label_color | String | optional,
          liquid_keyboard_background
            | String
            | doc "liquidKeyboard 的背景图/色"
            | optional,
          long_text_back_color | String | doc "长文本按键的背景(剪贴板）" | optional,
          off_key_back_color | String | optional,
          off_key_text_color | String | optional,
          on_key_back_color | String | optional,
          on_key_text_color | String | optional,
          preview_back_color | String | optional,
          preview_text_color | String | optional,
          root_background | String | doc "整个键盘区+候选栏的背景图/色" | optional,
          shadow_color | String | optional,
          text_back_color | String | doc "编码区背景，即悬浮窗背景" | optional,
          ..
        }
        | optional,
      liquid_keyboard
        | {
          author | String | optional,
          fixed_key_bar
            | {
              keys | Array Dyn | doc "固定按键条的按键（显示名称为对应的label，不能放太多）" | optional,
              position
                | std.enum.TagOrString
                | [| 'right, 'left, 'bottom, 'top |]
                | doc "固定按键条摆放位置（相对滚动区域的上/下/左/右方位）"
                | optional,
              ..
            }
            | optional,
          key_height | std.number.Integer | doc "按键高度" | optional,
          key_height_land | std.number.Integer | doc "横屏模式按键高度" | optional,
          keyboards | Array String | optional,
          margin_x | Number | doc "左右按键间隙的1/2" | optional,
          row | std.number.Integer | doc "每屏最多显示多少行按键" | optional,
          row_land | std.number.Integer | doc "横屏每屏最多显示多少行按键" | optional,
          single_width | std.number.Integer | doc "single类型的按键宽度" | optional,
          vertical_gap | std.number.Integer | doc "纵向按键间隙" | optional,
          ..
        }
        | optional,
      name | String | doc "方案名稱" | optional,
      preset_color_schemes
        | js2n.record.Record
          {
            additional = 'Some Dyn,
            patterns =
              {
                  "\\w+" =
                    std.contract.any_of
                        [
                          js2n.Null,
                          Bool,
                          Number,
                          String,
                          { _ | Dyn },
                          Array Dyn
                        ],
                },
            properties = {},
            required = {},
          }
        | optional,
      preset_keyboards
        | js2n.record.Record
          {
            additional = 'Some Dyn,
            patterns =
              {
                  "\\w+" =
                    {
                        ascii_mode | std.number.Integer | optional,
                        author | String | optional,
                        height | Number | optional,
                        keys
                          | Array
                            {
                              click
                                | std.contract.any_of
                                  [ String, std.number.Integer, Bool ]
                                | optional,
                              composing | String | optional,
                              label | String | optional,
                              long_click
                                | std.contract.any_of
                                  [ String, std.number.Integer ]
                                | optional,
                              send_bindings | Bool | optional,
                              swipe_down | String | optional,
                              swipe_left | String | optional,
                              swipe_right | String | optional,
                              swipe_up | String | optional,
                              width | Number | optional,
                              ..
                            }
                          | optional,
                        lock | Bool | optional,
                        name | String | optional,
                        width | Number | optional,
                        ..
                      },
                },
            properties = {},
            required = {},
          }
        | optional,
      preset_keys
        | js2n.record.Record
          {
            additional = 'Some Dyn,
            patterns =
              {
                  "\\w+" =
                    {
                        label
                          | std.contract.any_of [ String, std.number.Integer ]
                          | optional,
                        send
                          | std.contract.any_of [ String, std.number.Integer ]
                          | optional,
                        ..
                      },
                },
            properties = {},
            required = {},
          }
        | optional,
      style
        | {
          auto_caps
            | js2n.Enum [ true, false, "ascii" ]
            | doc "自动句首大写"
            | optional,
          background_dim_amount | Number | doc "备用参数，暂无功能" | optional,
          background_folder
            | String
            | doc "背景图保存在background目录下的哪个子目录"
            | optional,
          candidate_font | String | doc "候選字型" | optional,
          candidate_padding | std.number.Integer | doc "候選項內邊距" | optional,
          candidate_spacing | Number | doc "候選間距" | optional,
          candidate_text_size | std.number.Integer | doc "候選字號" | optional,
          candidate_use_cursor | Bool | doc "高亮候選項" | optional,
          candidate_view_height | std.number.Integer | doc "候選區高度" | optional,
          color_scheme | String | doc "配色方案" | optional,
          comment_font | String | doc "編碼提示字型" | optional,
          comment_height | std.number.Integer | doc "編碼提示區高度" | optional,
          comment_on_top | Bool | doc "編碼提示在上方或右側" | optional,
          comment_text_size | std.number.Integer | doc "編碼提示字號" | optional,
          enter_label_mode
            | std.number.Integer
            | js2n.number.Maximum 3
            | js2n.number.Minimum 0
            | doc "是否使用App提供的ActionLabel内容作为Enter键的文本（由于多数App没有适配ActionLable，实际影响不大）。0不使用，1只使用actionlabel，2优先使用，3当其他方式没有获得label时才读取actionlabel"
            | optional,
          enter_labels
            | {
              "default" | String | optional,
              done | String | optional,
              go | String | optional,
              next | String | optional,
              pre | String | optional,
              search | String | optional,
              send | String | optional,
              ..
            }
            | doc "定义Enter键的文本"
            | optional,
          hanb_font | String | doc "擴充字型" | optional,
          horizontal | Bool | doc "水平模式" | optional,
          horizontal_gap | std.number.Integer | doc "鍵水平間距" | optional,
          key_font | String | doc "鍵盤字型" | optional,
          key_height | std.number.Integer | doc "鍵高" | optional,
          key_long_text_border | String | doc "" | optional,
          key_long_text_size | std.number.Integer | doc "長標籤字號" | optional,
          key_text_size | std.number.Integer | doc "鍵字號" | optional,
          key_width | Number | doc "鍵寬，佔螢幕寬的百分比" | optional,
          keyboard_height
            | std.number.Integer
            | doc "锁定键盘高度，避免切换时键盘高度变化而造成闪烁"
            | optional,
          keyboard_height_land
            | std.number.Integer
            | doc "锁定横屏下键盘高度，避免切换时键盘高度变化而造成闪烁"
            | optional,
          keyboard_padding
            | std.number.Integer
            | doc "竖屏模式下，屏幕左右两侧与键盘的距离（曲面屏减少误触）"
            | optional,
          keyboard_padding_bottom
            | std.number.Integer
            | doc "竖屏模式下，屏幕下边缘与键盘的距离（避免误触发全面屏手势）"
            | optional,
          keyboard_padding_land
            | std.number.Integer
            | doc "横屏模式下，屏幕左右两侧与键盘的距离（避免横屏按键过度拉伸变形）"
            | optional,
          keyboard_padding_land_bottom
            | std.number.Integer
            | doc "横屏模式下，屏幕下侧与键盘的距离"
            | optional,
          keyboard_padding_left
            | std.number.Integer
            | doc "竖屏屏模式下，左手键盘布局，屏幕左侧与键盘的距离"
            | optional,
          keyboard_padding_right
            | std.number.Integer
            | doc "竖屏屏模式下，左手键盘布局，屏幕右侧与键盘的距离"
            | optional,
          keyboards | Array String | doc "鍵盤配置" | optional,
          label_font | String | doc "編標籤字型" | optional,
          label_text_size | std.number.Integer | doc "標籤字號" | optional,
          latin_font | String | doc "西文字型" | optional,
          latin_locale | String | doc "西文語言" | optional,
          layout
            | {
              all_phrases | Bool | doc "所有滿足條件的詞語都顯示在窗口" | optional,
              alpha
                | std.number.Integer
                | js2n.number.Maximum 255
                | js2n.number.Minimum 0
                | doc "透明度"
                | optional,
              border | std.number.Integer | doc "邊框寬度" | optional,
              elevation
                | std.number.Integer
                | doc "陰影(>=Android5.0)"
                | optional,
              line_spacing | std.number.Integer | doc "候选詞的行間距(px)" | optional,
              line_spacing_multiplier | Number | doc "候选詞的行間距(倍數)" | optional,
              margin_bottom
                | std.number.Integer
                | doc "底部边距 （用于适配特定背景图）"
                | optional,
              margin_x | std.number.Integer | doc "水平邊距" | optional,
              margin_y | std.number.Integer | doc "豎直邊距" | optional,
              max_entries | std.number.Integer | doc "最大詞條數" | optional,
              max_height | std.number.Integer | doc "最大高度" | optional,
              max_length | std.number.Integer | doc "超過字數則換行" | optional,
              max_width | std.number.Integer | doc "最大寬度，超過則自動換行" | optional,
              min_check
                | std.number.Integer
                | doc "只要前n个候选词有长度大于等于min_length的词，就会把长度符合以及之前的词全部加到悬浮窗内"
                | optional,
              min_height | std.number.Integer | doc "最小高度" | optional,
              min_length | std.number.Integer | doc "最小詞長" | optional,
              min_width | std.number.Integer | doc "最小寬度" | optional,
              movable
                | js2n.Enum [ true, false, "once" ]
                | doc "是否可移動窗口，或僅移動一次"
                | optional,
              position
                | std.enum.TagOrString
                | [|
                  'top_right,
                  'top_left,
                  'bottom_right,
                  'bottom_left,
                  'fixed,
                  'right_up,
                  'left_up,
                  'right,
                  'left
                |]
                | doc "位置 (left、right需要>=Android5.0)"
                | optional,
              real_margin
                | std.number.Integer
                | doc "屏幕左右边缘和悬浮窗之间的距离"
                | optional,
              round_corner | std.number.Integer | doc "窗口圓角" | optional,
              spacing
                | std.number.Integer
                | doc "屏幕上下边缘或预编辑上下边缘和悬浮窗之间的距离"
                | optional,
              sticky_lines | std.number.Integer | doc "固頂行數" | optional,
              sticky_lines_land
                | std.number.Integer
                | doc "横屏模式下的固顶行数"
                | optional,
              ..
            }
            | doc "懸浮窗口設置"
            | optional,
          liquid_keyboard_window
            | Array
              {
                click | String | optional,
                label
                  | std.contract.any_of [ String, std.number.Integer ]
                  | optional,
                start | String | optional,
                ..
              }
            | optional,
          locale
            | std.enum.TagOrString
            | [| '"", 'zh_HK, 'zh_CN, 'zh_TW |]
            | doc "預設語言"
            | optional,
          long_text_font | String | doc "剪贴板等可能包含大段文本使用的字体" | optional,
          preview_font | String | doc "按鍵提示字型" | optional,
          preview_height | std.number.Integer | doc "按鍵提示高度" | optional,
          preview_offset | std.number.Integer | doc "按鍵提示縱向偏移" | optional,
          preview_text_size | std.number.Integer | doc "按鍵提示字號" | optional,
          proximity_correction | Bool | doc "按鍵糾錯" | optional,
          reset_ascii_mode | Bool | doc "顯示鍵盤時重置爲中文狀態" | optional,
          round_corner | Number | doc "按鍵圓角半徑" | optional,
          shadow_radius | Number | doc "按鍵陰影半徑" | optional,
          speech_opencc_config | String | doc "語音輸入簡繁轉換" | optional,
          symbol_font | String | doc "符號字型" | optional,
          symbol_text_size | std.number.Integer | doc "編碼字型" | optional,
          text_height | std.number.Integer | doc "編碼區高度" | optional,
          text_size | std.number.Integer | doc "編碼區字號" | optional,
          vertical_correction
            | Number
            | doc "触摸位置校正（竖直方向）。为了提升打字手感，可将按键的实际触摸位置相对其显示位置上下偏移一点点"
            | optional,
          vertical_gap | Number | doc "鍵盤行距" | optional,
          window
            | Array
              {
                candidate | String | optional,
                comment | String | optional,
                composition | String | optional,
                end | String | optional,
                label | String | optional,
                letter_spacing | Number | optional,
                move | String | optional,
                sep | String | optional,
                start | String | optional,
                ..
              }
            | optional,
          ..
        }
        | optional,
      ..
    }