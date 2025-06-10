# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      k9s
        | {
          body
            | {
              bgColor | String | optional,
              fgColor | String | optional,
              logoColor | String | optional,
              ..
            }
            | optional,
          dialog
            | {
              bgColor | String | optional,
              buttonBgColor | String | optional,
              buttonFgColor | String | optional,
              buttonFocusBgColor | String | optional,
              buttonFocusFgColor | String | optional,
              fgColor | String | optional,
              fieldFgColor | String | optional,
              labelFgColor | String | optional,
              ..
            }
            | optional,
          frame
            | {
              border
                | {
                  bgColor | String | optional,
                  fgColor | String | optional,
                  ..
                }
                | optional,
              crumbs
                | {
                  activeColor | String | optional,
                  fgColor | String | optional,
                  keyColor | String | optional,
                  ..
                }
                | optional,
              menu
                | {
                  fgColor | String | optional,
                  keyColor | String | optional,
                  numKeyColor | String | optional,
                  ..
                }
                | optional,
              status
                | {
                  "addColor:" | String | optional,
                  completedColor | String | optional,
                  errorColor | String | optional,
                  highlightColor | String | optional,
                  killColor | String | optional,
                  modifyColor | String | optional,
                  newColor | String | optional,
                  ..
                }
                | optional,
              title
                | {
                  bgColor | String | optional,
                  counterColor | String | optional,
                  fgColor | String | optional,
                  filterColor | String | optional,
                  highlightColor | String | optional,
                  ..
                }
                | optional,
              ..
            }
            | optional,
          help
            | {
              bgColor | String | optional,
              fgColor | String | optional,
              keyColor | String | optional,
              numKeyColor | String | optional,
              sectionColor | String | optional,
              ..
            }
            | optional,
          info
            | {
              cpuColor | String | optional,
              fgColor | String | optional,
              k9sRevColor | String | optional,
              memColor | String | optional,
              sectionColor | String | optional,
              ..
            }
            | optional,
          prompt
            | {
              bgColor | String | optional,
              fgColor | String | optional,
              suggestColor | String | optional,
              ..
            }
            | optional,
          views
            | {
              charts
                | {
                  bgColor | String | optional,
                  defaultChartColors | Array String | optional,
                  defaultDialColors | Array String | optional,
                  ..
                }
                | optional,
              ..
            }
            | optional,
        }
        | optional,
      ..
    }