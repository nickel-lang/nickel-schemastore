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
        | std.contract.any_of
          [
            js2n.Null,
            Bool,
            Number,
            String,
            {
              apiServerTimeout | String | optional,
              defaultView | String | optional,
              disablePodCounting | Bool | optional,
              imageScans
                | {
                  enable | Bool,
                  exclusions
                    | {
                      labels | { _ | Array String } | optional,
                      namespaces | Array String | optional,
                      ..
                    }
                    | optional,
                  namespace | String | optional,
                }
                | optional,
              liveViewAutoRefresh | Bool | optional,
              logger
                | {
                  buffer | std.number.Integer | optional,
                  disableAutoscroll | Bool | optional,
                  showTime | Bool | optional,
                  sinceSeconds | std.number.Integer | optional,
                  tail | std.number.Integer | optional,
                  textWrap | Bool | optional,
                }
                | optional,
              maxConnRetry | std.number.Integer | optional,
              noExitOnCtrlC | Bool | optional,
              portForwardAddress | String | optional,
              readOnly | Bool | optional,
              refreshRate | std.number.Integer | optional,
              screenDumpDir | String | optional,
              shellPod
                | {
                  args | Array String | optional,
                  command | Array String | optional,
                  image | String,
                  imagePullPolicy | String | optional,
                  imagePullSecrets
                    | Array { name | String | optional, .. }
                    | optional,
                  labels | { _ | String } | optional,
                  limits | { cpu | String, memory | String, .. },
                  namespace | String,
                  tty | Bool | optional,
                  ..
                }
                | optional,
              skipLatestRevCheck | Bool | optional,
              thresholds
                | {
                  cpu
                    | {
                      critical | std.number.Integer | optional,
                      warn | std.number.Integer | optional,
                      ..
                    }
                    | optional,
                  memory
                    | {
                      critical | std.number.Integer | optional,
                      warn | std.number.Integer | optional,
                      ..
                    }
                    | optional,
                }
                | optional,
              ui
                | {
                  crumbsless | Bool | optional,
                  defaultsToFullScreen | Bool | optional,
                  enableMouse | Bool | optional,
                  headless | Bool | optional,
                  logoless | Bool | optional,
                  noIcons | Bool | optional,
                  reactive | Bool | optional,
                  skin | String | optional,
                  splashless | Bool | optional,
                  useFullGVRTitle | Bool | optional,
                }
                | optional,
            },
            Array Dyn
          ],
    }