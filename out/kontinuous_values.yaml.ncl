# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "additionalProperties.allOf.0.then" =
        js2n.record.Record
            {
              additional = 'None,
              patterns =
                { "^\\." = std.contract.any_of [ Bool, Number, String ], },
              properties =
                {
                    addVolumes = Array String,
                    autoscale =
                      {
                          averageUtilization
                            | {
                              cpu | Number | optional,
                              memory | Number | optional,
                              ..
                            }
                            | doc "Autoscaling averageUtilization tuning"
                            | optional,
                          enabled
                            | Bool
                            | doc "Enable Horizontal pod autoscaling"
                            | optional,
                          maxReplicas
                            | Number
                            | doc "Minimum number of replicas"
                            | optional,
                          minReplicas
                            | Number
                            | doc "Minimum number of replicas"
                            | optional,
                          ..
                        },
                    certSecretName = String,
                    containerPort = std.contract.any_of [ Number, String ],
                    env =
                      Array
                          {
                            name
                              | String
                              | doc "Name of the environment variable. Must be a C_IDENTIFIER.",
                            value
                              | String
                              | doc "Variable references $(VAR_NAME) are expanded using the previously defined environment variables in the container and any service environment variables. If a variable cannot be resolved, the reference in the input string will be unchanged. Double $$ are reduced to a single $, which allows for escaping the $(VAR_NAME) syntax: i.e. \"$$(VAR_NAME)\" will produce the string literal \"$(VAR_NAME)\". Escaped references will never be expanded, regardless of whether the variable exists or not. Defaults to \"\"."
                              | optional,
                            valueFrom
                              | {
                                configMapKeyRef
                                  | {
                                    key | String | doc "The key to select.",
                                    name
                                      | String
                                      | doc "Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names"
                                      | optional,
                                    "optional"
                                      | Bool
                                      | doc "Specify whether the ConfigMap or its key must be defined"
                                      | optional,
                                    ..
                                  }
                                  | doc "Selects a key of a ConfigMap."
                                  | optional,
                                fieldRef
                                  | {
                                    apiVersion
                                      | String
                                      | doc "Version of the schema the FieldPath is written in terms of, defaults to \"v1\"."
                                      | optional,
                                    fieldPath
                                      | String
                                      | doc "Path of the field to select in the specified API version.",
                                    ..
                                  }
                                  | doc "Selects a field of the pod: supports metadata.name, metadata.namespace, `metadata.labels['<KEY>']`, `metadata.annotations['<KEY>']`, spec.nodeName, spec.serviceAccountName, status.hostIP, status.podIP, status.podIPs."
                                  | optional,
                                resourceFieldRef
                                  | {
                                    containerName
                                      | String
                                      | doc "Container name: required for volumes, optional for env vars"
                                      | optional,
                                    divisor
                                      | js2n.Always
                                      | doc "Specifies the output format of the exposed resources, defaults to \"1\""
                                      | optional,
                                    resource
                                      | String
                                      | doc "Required: resource to select",
                                    ..
                                  }
                                  | doc "Selects a resource of the container: only resources limits and requests (limits.cpu, limits.memory, limits.ephemeral-storage, requests.cpu, requests.memory and requests.ephemeral-storage) are currently supported."
                                  | optional,
                                secretKeyRef
                                  | {
                                    key
                                      | String
                                      | doc "The key of the secret to select from.  Must be a valid secret key.",
                                    name
                                      | String
                                      | doc "Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names"
                                      | optional,
                                    "optional"
                                      | Bool
                                      | doc "Specify whether the Secret or its key must be defined"
                                      | optional,
                                    ..
                                  }
                                  | doc "Selects a key of a secret in the pod's namespace"
                                  | optional,
                                ..
                              }
                              | doc "Source for the environment variable's value. Cannot be used if value is not empty."
                              | optional,
                            ..
                          },
                    envFrom =
                      Array
                          {
                            configMapRef
                              | {
                                name
                                  | String
                                  | doc "Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names"
                                  | optional,
                                "optional"
                                  | Bool
                                  | doc "Specify whether the ConfigMap must be defined"
                                  | optional,
                                ..
                              }
                              | doc "The ConfigMap to select from"
                              | optional,
                            prefix
                              | String
                              | doc "An optional identifier to prepend to each key in the ConfigMap. Must be a C_IDENTIFIER."
                              | optional,
                            secretRef
                              | {
                                name
                                  | String
                                  | doc "Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names"
                                  | optional,
                                "optional"
                                  | Bool
                                  | doc "Specify whether the Secret must be defined"
                                  | optional,
                                ..
                              }
                              | doc "The Secret to select from"
                              | optional,
                            ..
                          },
                    host = String,
                    image = String,
                    imagePackage = String,
                    imageProject = String,
                    imageRepository = String,
                    ingress =
                      {
                          annotations
                            | {
                              "nginx.ingress.kubernetes.io/affinity"
                                | String
                                | doc "type: cookie. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#session-affinity"
                                | optional,
                              "nginx.ingress.kubernetes.io/affinity-canary-behavior"
                                | String
                                | doc "type: \"sticky\" or \"legacy\". see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#session-affinity"
                                | optional,
                              "nginx.ingress.kubernetes.io/affinity-mode"
                                | String
                                | doc "type: \"balanced\" or \"persistent\". see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#session-affinity"
                                | optional,
                              "nginx.ingress.kubernetes.io/app-root"
                                | String
                                | doc "type: string. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#rewrite"
                                | optional,
                              "nginx.ingress.kubernetes.io/auth-cache-duration"
                                | String
                                | doc "type: string. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#external-authentication"
                                | optional,
                              "nginx.ingress.kubernetes.io/auth-cache-key"
                                | String
                                | doc "type: string. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#external-authentication"
                                | optional,
                              "nginx.ingress.kubernetes.io/auth-keepalive"
                                | Number
                                | doc "type: number. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#external-authentication"
                                | optional,
                              "nginx.ingress.kubernetes.io/auth-keepalive-requests"
                                | Number
                                | doc "type: number. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#external-authentication"
                                | optional,
                              "nginx.ingress.kubernetes.io/auth-keepalive-share-vars"
                                | String
                                | doc "type: \"true\" or \"false\". see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#external-authentication"
                                | optional,
                              "nginx.ingress.kubernetes.io/auth-keepalive-timeout"
                                | Number
                                | doc "type: number. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#external-authentication"
                                | optional,
                              "nginx.ingress.kubernetes.io/auth-proxy-set-headers"
                                | String
                                | doc "type: string. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#external-authentication"
                                | optional,
                              "nginx.ingress.kubernetes.io/auth-realm"
                                | String
                                | doc "type: string. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#authentication"
                                | optional,
                              "nginx.ingress.kubernetes.io/auth-secret"
                                | String
                                | doc "type: string. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#authentication"
                                | optional,
                              "nginx.ingress.kubernetes.io/auth-secret-type"
                                | String
                                | doc "type: string. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#authentication"
                                | optional,
                              "nginx.ingress.kubernetes.io/auth-snippet"
                                | String
                                | doc "type: string. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#external-authentication"
                                | optional,
                              "nginx.ingress.kubernetes.io/auth-tls-error-page"
                                | String
                                | doc "type: string. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#client-certificate-authentication"
                                | optional,
                              "nginx.ingress.kubernetes.io/auth-tls-match-cn"
                                | String
                                | doc "type: string. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#client-certificate-authentication"
                                | optional,
                              "nginx.ingress.kubernetes.io/auth-tls-pass-certificate-to-upstream"
                                | String
                                | doc "type: \"true\" or \"false\". see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#client-certificate-authentication"
                                | optional,
                              "nginx.ingress.kubernetes.io/auth-tls-secret"
                                | String
                                | doc "type: string. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#client-certificate-authentication"
                                | optional,
                              "nginx.ingress.kubernetes.io/auth-tls-verify-client"
                                | String
                                | doc "type: string. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#client-certificate-authentication"
                                | optional,
                              "nginx.ingress.kubernetes.io/auth-tls-verify-depth"
                                | Number
                                | doc "type: number. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#client-certificate-authentication"
                                | optional,
                              "nginx.ingress.kubernetes.io/auth-type"
                                | String
                                | doc "type: \"basic\" or \"digest\". see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#authentication"
                                | optional,
                              "nginx.ingress.kubernetes.io/auth-url"
                                | String
                                | doc "type: string. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#external-authentication"
                                | optional,
                              "nginx.ingress.kubernetes.io/backend-protocol"
                                | String
                                | doc "type: string. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#backend-protocol"
                                | optional,
                              "nginx.ingress.kubernetes.io/canary"
                                | String
                                | doc "type: \"true\" or \"false\". see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#canary"
                                | optional,
                              "nginx.ingress.kubernetes.io/canary-by-cookie"
                                | String
                                | doc "type: string. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#canary"
                                | optional,
                              "nginx.ingress.kubernetes.io/canary-by-header"
                                | String
                                | doc "type: string. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#canary"
                                | optional,
                              "nginx.ingress.kubernetes.io/canary-by-header-pattern"
                                | String
                                | doc "type: string. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#canary"
                                | optional,
                              "nginx.ingress.kubernetes.io/canary-by-header-value"
                                | String
                                | doc "type: string. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#canary"
                                | optional,
                              "nginx.ingress.kubernetes.io/canary-weight"
                                | Number
                                | doc "type: number. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#canary"
                                | optional,
                              "nginx.ingress.kubernetes.io/canary-weight-total"
                                | Number
                                | doc "type: number. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#canary"
                                | optional,
                              "nginx.ingress.kubernetes.io/client-body-buffer-size"
                                | String
                                | doc "type: string. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#client-body-buffer-size"
                                | optional,
                              "nginx.ingress.kubernetes.io/configuration-snippet"
                                | String
                                | doc "type: string. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#configuration-snippet"
                                | optional,
                              "nginx.ingress.kubernetes.io/connection-proxy-header"
                                | String
                                | doc "type: string. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#connection-proxy-header"
                                | optional,
                              "nginx.ingress.kubernetes.io/cors-allow-credentials"
                                | String
                                | doc "type: \"true\" or \"false\". see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#enable-cors"
                                | optional,
                              "nginx.ingress.kubernetes.io/cors-allow-headers"
                                | String
                                | doc "type: string. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#enable-cors"
                                | optional,
                              "nginx.ingress.kubernetes.io/cors-allow-methods"
                                | String
                                | doc "type: string. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#enable-cors"
                                | optional,
                              "nginx.ingress.kubernetes.io/cors-allow-origin"
                                | String
                                | doc "type: string. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#enable-cors"
                                | optional,
                              "nginx.ingress.kubernetes.io/cors-expose-headers"
                                | String
                                | doc "type: string. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#enable-cors"
                                | optional,
                              "nginx.ingress.kubernetes.io/cors-max-age"
                                | Number
                                | doc "type: number. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#enable-cors"
                                | optional,
                              "nginx.ingress.kubernetes.io/custom-http-errors"
                                | String
                                | doc "type: []int. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#custom-http-errors"
                                | optional,
                              "nginx.ingress.kubernetes.io/default-backend"
                                | String
                                | doc "type: string. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#default-backend"
                                | optional,
                              "nginx.ingress.kubernetes.io/denylist-source-range"
                                | String
                                | doc "type: CIDR. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#denylist-source-range"
                                | optional,
                              "nginx.ingress.kubernetes.io/enable-access-log"
                                | String
                                | doc "type: \"true\" or \"false\". see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#enable-access-log"
                                | optional,
                              "nginx.ingress.kubernetes.io/enable-cors"
                                | String
                                | doc "type: \"true\" or \"false\". see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#enable-cors"
                                | optional,
                              "nginx.ingress.kubernetes.io/enable-global-auth"
                                | String
                                | doc "type: \"true\" or \"false\". see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#external-authentication"
                                | optional,
                              "nginx.ingress.kubernetes.io/enable-modsecurity"
                                | String
                                | doc "type: bool. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#modsecurity"
                                | optional,
                              "nginx.ingress.kubernetes.io/enable-opentelemetry"
                                | String
                                | doc "type: \"true\" or \"false\". see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#enable-opentelemetry"
                                | optional,
                              "nginx.ingress.kubernetes.io/enable-opentracing"
                                | String
                                | doc "type: \"true\" or \"false\". see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#enable-opentracing"
                                | optional,
                              "nginx.ingress.kubernetes.io/enable-owasp-core-rules"
                                | String
                                | doc "type: bool. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#modsecurity"
                                | optional,
                              "nginx.ingress.kubernetes.io/enable-rewrite-log"
                                | String
                                | doc "type: \"true\" or \"false\". see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#enable-rewrite-log"
                                | optional,
                              "nginx.ingress.kubernetes.io/force-ssl-redirect"
                                | String
                                | doc "type: \"true\" or \"false\". see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#server-side-https-enforcement-through-redirect"
                                | optional,
                              "nginx.ingress.kubernetes.io/from-to-www-redirect"
                                | String
                                | doc "type: \"true\" or \"false\". see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#redirect-fromto-www"
                                | optional,
                              "nginx.ingress.kubernetes.io/global-rate-limit"
                                | Number
                                | doc "type: number. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#global-rate-limiting"
                                | optional,
                              "nginx.ingress.kubernetes.io/global-rate-limit-ignored-cidrs"
                                | String
                                | doc "type: string. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#global-rate-limiting"
                                | optional,
                              "nginx.ingress.kubernetes.io/global-rate-limit-key"
                                | String
                                | doc "type: string. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#global-rate-limiting"
                                | optional,
                              "nginx.ingress.kubernetes.io/global-rate-limit-window"
                                | String
                                | doc "type: duration. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#global-rate-limiting"
                                | optional,
                              "nginx.ingress.kubernetes.io/http2-push-preload"
                                | String
                                | doc "type: \"true\" or \"false\". see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#http2-push-preload"
                                | optional,
                              "nginx.ingress.kubernetes.io/limit-connections"
                                | Number
                                | doc "type: number. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#rate-limiting"
                                | optional,
                              "nginx.ingress.kubernetes.io/limit-rps"
                                | Number
                                | doc "type: number. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#rate-limiting"
                                | optional,
                              "nginx.ingress.kubernetes.io/load-balance"
                                | String
                                | doc "type: string. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#custom-nginx-load-balancing"
                                | optional,
                              "nginx.ingress.kubernetes.io/mirror-host"
                                | String
                                | doc "type: string. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#mirror"
                                | optional,
                              "nginx.ingress.kubernetes.io/mirror-request-body"
                                | String
                                | doc "type: string. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#mirror"
                                | optional,
                              "nginx.ingress.kubernetes.io/mirror-target"
                                | String
                                | doc "type: string. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#mirror"
                                | optional,
                              "nginx.ingress.kubernetes.io/modsecurity-snippet"
                                | String
                                | doc "type: string. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#modsecurity"
                                | optional,
                              "nginx.ingress.kubernetes.io/modsecurity-transaction-id"
                                | String
                                | doc "type: string. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#modsecurity"
                                | optional,
                              "nginx.ingress.kubernetes.io/opentelemetry-trust-incoming-span"
                                | String
                                | doc "type: \"true\" or \"false\". see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#opentelemetry-trust-incoming-spans"
                                | optional,
                              "nginx.ingress.kubernetes.io/opentracing-trust-incoming-span"
                                | String
                                | doc "type: \"true\" or \"false\". see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#opentracing-trust-incoming-span"
                                | optional,
                              "nginx.ingress.kubernetes.io/permanent-redirect"
                                | String
                                | doc "type: string. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#permanent-redirect"
                                | optional,
                              "nginx.ingress.kubernetes.io/permanent-redirect-code"
                                | Number
                                | doc "type: number. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#permanent-redirect-code"
                                | optional,
                              "nginx.ingress.kubernetes.io/preserve-trailing-slash"
                                | String
                                | doc "type: \"true\" or \"false\". see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#server-side-https-enforcement-through-redirect"
                                | optional,
                              "nginx.ingress.kubernetes.io/proxy-body-size"
                                | String
                                | doc "type: string. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#custom-max-body-size"
                                | optional,
                              "nginx.ingress.kubernetes.io/proxy-buffer-size"
                                | String
                                | doc "type: string. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#proxy-buffer-size"
                                | optional,
                              "nginx.ingress.kubernetes.io/proxy-buffering"
                                | String
                                | doc "type: string. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#proxy-buffering"
                                | optional,
                              "nginx.ingress.kubernetes.io/proxy-buffers-number"
                                | Number
                                | doc "type: number. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#proxy-buffers-number"
                                | optional,
                              "nginx.ingress.kubernetes.io/proxy-connect-timeout"
                                | Number
                                | doc "type: number. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#custom-timeouts"
                                | optional,
                              "nginx.ingress.kubernetes.io/proxy-cookie-domain"
                                | String
                                | doc "type: string. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#proxy-cookie-domain"
                                | optional,
                              "nginx.ingress.kubernetes.io/proxy-cookie-path"
                                | String
                                | doc "type: string. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#proxy-cookie-path"
                                | optional,
                              "nginx.ingress.kubernetes.io/proxy-http-version"
                                | String
                                | doc "type: \"1.0\" or \"1.1\". see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#proxy-http-version"
                                | optional,
                              "nginx.ingress.kubernetes.io/proxy-max-temp-file-size"
                                | String
                                | doc "type: string. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#proxy-max-temp-file-size"
                                | optional,
                              "nginx.ingress.kubernetes.io/proxy-next-upstream"
                                | String
                                | doc "type: string. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#custom-timeouts"
                                | optional,
                              "nginx.ingress.kubernetes.io/proxy-next-upstream-timeout"
                                | Number
                                | doc "type: number. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#custom-timeouts"
                                | optional,
                              "nginx.ingress.kubernetes.io/proxy-next-upstream-tries"
                                | Number
                                | doc "type: number. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#custom-timeouts"
                                | optional,
                              "nginx.ingress.kubernetes.io/proxy-read-timeout"
                                | Number
                                | doc "type: number. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#custom-timeouts"
                                | optional,
                              "nginx.ingress.kubernetes.io/proxy-redirect-from"
                                | String
                                | doc "type: string. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#proxy-redirect"
                                | optional,
                              "nginx.ingress.kubernetes.io/proxy-redirect-to"
                                | String
                                | doc "type: string. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#proxy-redirect"
                                | optional,
                              "nginx.ingress.kubernetes.io/proxy-request-buffering"
                                | String
                                | doc "type: string. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#custom-timeouts"
                                | optional,
                              "nginx.ingress.kubernetes.io/proxy-send-timeout"
                                | Number
                                | doc "type: number. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#custom-timeouts"
                                | optional,
                              "nginx.ingress.kubernetes.io/proxy-ssl-ciphers"
                                | String
                                | doc "type: string. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#backend-certificate-authentication"
                                | optional,
                              "nginx.ingress.kubernetes.io/proxy-ssl-name"
                                | String
                                | doc "type: string. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#backend-certificate-authentication"
                                | optional,
                              "nginx.ingress.kubernetes.io/proxy-ssl-protocols"
                                | String
                                | doc "type: string. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#backend-certificate-authentication"
                                | optional,
                              "nginx.ingress.kubernetes.io/proxy-ssl-secret"
                                | String
                                | doc "type: string. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#backend-certificate-authentication"
                                | optional,
                              "nginx.ingress.kubernetes.io/proxy-ssl-server-name"
                                | String
                                | doc "type: string. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#backend-certificate-authentication"
                                | optional,
                              "nginx.ingress.kubernetes.io/proxy-ssl-verify"
                                | String
                                | doc "type: string. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#backend-certificate-authentication"
                                | optional,
                              "nginx.ingress.kubernetes.io/proxy-ssl-verify-depth"
                                | Number
                                | doc "type: number. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#backend-certificate-authentication"
                                | optional,
                              "nginx.ingress.kubernetes.io/rewrite-target"
                                | String
                                | doc "type: URI. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#rewrite"
                                | optional,
                              "nginx.ingress.kubernetes.io/satisfy"
                                | String
                                | doc "type: string. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#satisfy"
                                | optional,
                              "nginx.ingress.kubernetes.io/server-alias"
                                | String
                                | doc "type: string. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#server-alias"
                                | optional,
                              "nginx.ingress.kubernetes.io/server-snippet"
                                | String
                                | doc "type: string. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#server-snippet"
                                | optional,
                              "nginx.ingress.kubernetes.io/service-upstream"
                                | String
                                | doc "type: \"true\" or \"false\". see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#service-upstream"
                                | optional,
                              "nginx.ingress.kubernetes.io/session-cookie-change-on-failure"
                                | String
                                | doc "type: \"true\" or \"false\". see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#cookie-affinity"
                                | optional,
                              "nginx.ingress.kubernetes.io/session-cookie-conditional-samesite-none"
                                | String
                                | doc "type: \"true\" or \"false\". see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#cookie-affinity"
                                | optional,
                              "nginx.ingress.kubernetes.io/session-cookie-domain"
                                | String
                                | doc "type: string. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#cookie-affinity"
                                | optional,
                              "nginx.ingress.kubernetes.io/session-cookie-name"
                                | String
                                | doc "type: string. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#cookie-affinity"
                                | optional,
                              "nginx.ingress.kubernetes.io/session-cookie-path"
                                | String
                                | doc "type: string. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#cookie-affinity"
                                | optional,
                              "nginx.ingress.kubernetes.io/session-cookie-samesite"
                                | String
                                | doc "type: string. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#cookie-affinity"
                                | optional,
                              "nginx.ingress.kubernetes.io/ssl-ciphers"
                                | String
                                | doc "type: string. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#ssl-ciphers"
                                | optional,
                              "nginx.ingress.kubernetes.io/ssl-passthrough"
                                | String
                                | doc "type: \"true\" or \"false\". see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#ssl-passthrough"
                                | optional,
                              "nginx.ingress.kubernetes.io/ssl-prefer-server-ciphers"
                                | String
                                | doc "type: \"true\" or \"false\". see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#ssl-ciphers"
                                | optional,
                              "nginx.ingress.kubernetes.io/ssl-redirect"
                                | String
                                | doc "type: \"true\" or \"false\". see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#server-side-https-enforcement-through-redirect"
                                | optional,
                              "nginx.ingress.kubernetes.io/stream-snippet"
                                | String
                                | doc "type: string. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#stream-snippet"
                                | optional,
                              "nginx.ingress.kubernetes.io/temporal-redirect"
                                | String
                                | doc "type: string. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#temporal-redirect"
                                | optional,
                              "nginx.ingress.kubernetes.io/upstream-hash-by"
                                | String
                                | doc "type: string. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#custom-nginx-upstream-hashing"
                                | optional,
                              "nginx.ingress.kubernetes.io/upstream-vhost"
                                | String
                                | doc "type: string. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#custom-nginx-upstream-vhost"
                                | optional,
                              "nginx.ingress.kubernetes.io/use-regex"
                                | String
                                | doc "type: bool. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#use-regex"
                                | optional,
                              "nginx.ingress.kubernetes.io/whitelist-source-range"
                                | String
                                | doc "type: CIDR. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#whitelist-source-range"
                                | optional,
                              "nginx.ingress.kubernetes.io/x-forwarded-prefix"
                                | String
                                | doc "type: string. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#x-forwarded-prefix-header"
                                | optional,
                            }
                            | doc "NGINX ingress annotations, see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/"
                            | optional,
                          enabled
                            | Bool
                            | doc "Ingress enable. default to true"
                            | optional,
                          path
                            | String
                            | doc "URL path to map the ingress to"
                            | optional,
                          paths
                            | Array String
                            | doc "List of URL paths to map the ingress to"
                            | optional,
                          rewriteTarget
                            | String
                            | doc "Redirect path on the service"
                            | optional,
                        },
                    livenessProbe = js2n.Always,
                    probesPath = String,
                    probesPort = std.contract.any_of [ Number, String ],
                    readinessProbe = js2n.Always,
                    redirectFrom = Array String,
                    replicas = std.number.Integer,
                    resources =
                      {
                          limits
                            | { _ | std.contract.any_of [ Number, String ] }
                            | doc "Limits describes the maximum amount of compute resources allowed. More info: https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/"
                            | optional,
                          requests
                            | { _ | js2n.Always }
                            | doc "Requests describes the minimum amount of compute resources required. If Requests is omitted for a container, it defaults to Limits if that is explicitly specified, otherwise to an implementation-defined value. More info: https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/"
                            | optional,
                          ..
                        },
                    securityContext =
                      {
                          fsGroup
                            | std.number.Integer
                            | doc m%"
                              A special supplemental group that applies to all containers in a pod. Some volume types allow the Kubelet to change the ownership of that volume to be owned by the pod:
                              
                              1. The owning GID will be the FSGroup 2. The setgid bit is set (new files created in the volume will be owned by FSGroup) 3. The permission bits are OR'd with rw-rw----
                              
                              If unset, the Kubelet will not modify the ownership and permissions of any volume. Note that this field cannot be set when spec.os.name is windows.
                            "%
                            | optional,
                          fsGroupChangePolicy
                            | String
                            | doc "fsGroupChangePolicy defines behavior of changing ownership and permission of the volume before being exposed inside Pod. This field will only apply to volume types which support fsGroup based ownership(and permissions). It will have no effect on ephemeral volume types such as: secret, configmaps and emptydir. Valid values are \"OnRootMismatch\" and \"Always\". If not specified, \"Always\" is used. Note that this field cannot be set when spec.os.name is windows."
                            | optional,
                          runAsGroup
                            | std.number.Integer
                            | doc "The GID to run the entrypoint of the container process. Uses runtime default if unset. May also be set in SecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence for that container. Note that this field cannot be set when spec.os.name is windows."
                            | optional,
                          runAsNonRoot
                            | Bool
                            | doc "Indicates that the container must run as a non-root user. If true, the Kubelet will validate the image at runtime to ensure that it does not run as UID 0 (root) and fail to start the container if it does. If unset or false, no such validation will be performed. May also be set in SecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence."
                            | optional,
                          runAsUser
                            | std.number.Integer
                            | doc "The UID to run the entrypoint of the container process. Defaults to user specified in image metadata if unspecified. May also be set in SecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence for that container. Note that this field cannot be set when spec.os.name is windows."
                            | optional,
                          seLinuxOptions
                            | {
                              level
                                | String
                                | doc "Level is SELinux level label that applies to the container."
                                | optional,
                              role
                                | String
                                | doc "Role is a SELinux role label that applies to the container."
                                | optional,
                              type
                                | String
                                | doc "Type is a SELinux type label that applies to the container."
                                | optional,
                              user
                                | String
                                | doc "User is a SELinux user label that applies to the container."
                                | optional,
                              ..
                            }
                            | doc "The SELinux context to be applied to all containers. If unspecified, the container runtime will allocate a random SELinux context for each container.  May also be set in SecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence for that container. Note that this field cannot be set when spec.os.name is windows."
                            | optional,
                          seccompProfile
                            | refs."properties.jobs.properties.runs.additionalProperties.properties.seccompProfile"
                            | { _ | Dyn }
                            | doc "The seccomp options to use by the containers in this pod. Note that this field cannot be set when spec.os.name is windows."
                            | optional,
                          supplementalGroups
                            | Array std.number.Integer
                            | doc "A list of groups applied to the first process run in each container, in addition to the container's primary GID.  If unspecified, no groups will be added to any container. Note that this field cannot be set when spec.os.name is windows."
                            | optional,
                          sysctls
                            | Array
                              {
                                name | String | doc "Name of a property to set",
                                value
                                  | String
                                  | doc "Value of a property to set",
                                ..
                              }
                            | doc "Sysctls hold a list of namespaced sysctls used for the pod. Pods with unsupported sysctls (by the container runtime) might fail to launch. Note that this field cannot be set when spec.os.name is windows."
                            | optional,
                          windowsOptions
                            | {
                              gmsaCredentialSpec
                                | String
                                | doc "GMSACredentialSpec is where the GMSA admission webhook (https://github.com/kubernetes-sigs/windows-gmsa) inlines the contents of the GMSA credential spec named by the GMSACredentialSpecName field."
                                | optional,
                              gmsaCredentialSpecName
                                | String
                                | doc "GMSACredentialSpecName is the name of the GMSA credential spec to use."
                                | optional,
                              hostProcess
                                | Bool
                                | doc "HostProcess determines if a container should be run as a 'Host Process' container. This field is alpha-level and will only be honored by components that enable the WindowsHostProcessContainers feature flag. Setting this field without the feature flag will result in errors when validating the Pod. All of a Pod's containers must have the same effective HostProcess value (it is not allowed to have a mix of HostProcess containers and non-HostProcess containers).  In addition, if HostProcess is true then HostNetwork must also be set to true."
                                | optional,
                              runAsUserName
                                | String
                                | doc "The UserName in Windows to run the entrypoint of the container process. Defaults to the user specified in image metadata if unspecified. May also be set in PodSecurityContext. If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence."
                                | optional,
                              ..
                            }
                            | doc "The Windows specific settings applied to all containers. If unspecified, the options within a container's SecurityContext will be used. If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence. Note that this field cannot be set when spec.os.name is linux."
                            | optional,
                          ..
                        },
                    startupProbe =
                      {
                          exec
                            | {
                              command
                                | Array String
                                | doc "Command is the command line to execute inside the container, the working directory for the command  is root ('/') in the container's filesystem. The command is simply exec'd, it is not run inside a shell, so traditional shell instructions ('|', etc) won't work. To use a shell, you need to explicitly call out to that shell. Exit status of 0 is treated as live/healthy and non-zero is unhealthy."
                                | optional,
                              ..
                            }
                            | doc "Exec specifies the action to take."
                            | optional,
                          failureThreshold
                            | std.number.Integer
                            | doc "Minimum consecutive failures for the probe to be considered failed after having succeeded. Defaults to 3. Minimum value is 1."
                            | optional,
                          grpc
                            | {
                              port
                                | std.number.Integer
                                | doc "Port number of the gRPC service. Number must be in the range 1 to 65535.",
                              service
                                | String
                                | doc m%"
                                  Service is the name of the service to place in the gRPC HealthCheckRequest (see https://github.com/grpc/grpc/blob/master/doc/health-checking.md).
                                  
                                  If this is not specified, the default behavior is defined by gRPC.
                                "%
                                | optional,
                              ..
                            }
                            | doc "GRPC specifies an action involving a GRPC port. This is a beta field and requires enabling GRPCContainerProbe feature gate."
                            | optional,
                          httpGet
                            | {
                              host
                                | String
                                | doc "Host name to connect to, defaults to the pod IP. You probably want to set \"Host\" in httpHeaders instead."
                                | optional,
                              httpHeaders
                                | Array
                                  {
                                    name | String | doc "The header field name",
                                    value
                                      | String
                                      | doc "The header field value",
                                    ..
                                  }
                                | doc "Custom headers to set in the request. HTTP allows repeated headers."
                                | optional,
                              path
                                | String
                                | doc "Path to access on the HTTP server."
                                | optional,
                              port
                                | std.contract.any_of
                                  [ String, std.number.Integer ]
                                | doc "Name or number of the port to access on the container. Number must be in the range 1 to 65535. Name must be an IANA_SVC_NAME.",
                              scheme
                                | String
                                | doc m%"
                                  Scheme to use for connecting to the host. Defaults to HTTP.
                                  
                                  
                                "%
                                | optional,
                              ..
                            }
                            | doc "HTTPGet specifies the http request to perform."
                            | optional,
                          initialDelaySeconds
                            | std.number.Integer
                            | doc "Number of seconds after the container has started before liveness probes are initiated. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes"
                            | optional,
                          periodSeconds
                            | std.number.Integer
                            | doc "How often (in seconds) to perform the probe. Default to 10 seconds. Minimum value is 1."
                            | optional,
                          successThreshold
                            | std.number.Integer
                            | doc "Minimum consecutive successes for the probe to be considered successful after having failed. Defaults to 1. Must be 1 for liveness and startup. Minimum value is 1."
                            | optional,
                          tcpSocket
                            | {
                              host
                                | String
                                | doc "Optional: Host name to connect to, defaults to the pod IP."
                                | optional,
                              port
                                | js2n.Always
                                | doc "Number or name of the port to access on the container. Number must be in the range 1 to 65535. Name must be an IANA_SVC_NAME.",
                              ..
                            }
                            | doc "TCPSocket specifies an action involving a TCP port."
                            | optional,
                          terminationGracePeriodSeconds
                            | std.number.Integer
                            | doc "Optional duration in seconds the pod needs to terminate gracefully upon probe failure. The grace period is the duration in seconds after the processes running in the pod are sent a termination signal and the time when the processes are forcibly halted with a kill signal. Set this value longer than the expected cleanup time for your process. If this value is nil, the pod's terminationGracePeriodSeconds will be used. Otherwise, this value overrides the value provided by the pod spec. Value must be non-negative integer. The value zero indicates stop immediately via the kill signal (no opportunity to shut down). This is a beta field and requires enabling ProbeTerminationGracePeriod feature gate. Minimum value is 1. spec.terminationGracePeriodSeconds is used if unset."
                            | optional,
                          timeoutSeconds
                            | std.number.Integer
                            | doc "Number of seconds after which the probe times out. Defaults to 1 second. Minimum value is 1. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes"
                            | optional,
                          ..
                        },
                    strategyType = String,
                    vars = {  .. },
                    volumeMounts =
                      Array
                          {
                            mountPath
                              | String
                              | doc "Path within the container at which the volume should be mounted.  Must not contain ':'.",
                            mountPropagation
                              | String
                              | doc "mountPropagation determines how mounts are propagated from the host to container and the other way around. When not set, MountPropagationNone is used. This field is beta in 1.10."
                              | optional,
                            name
                              | String
                              | doc "This must match the Name of a Volume.",
                            readOnly
                              | Bool
                              | doc "Mounted read-only if true, read-write otherwise (false or unspecified). Defaults to false."
                              | optional,
                            subPath
                              | String
                              | doc "Path within the volume from which the container's volume should be mounted. Defaults to \"\" (volume's root)."
                              | optional,
                            subPathExpr
                              | String
                              | doc "Expanded path within the volume from which the container's volume should be mounted. Behaves similarly to SubPath but environment variable references $(VAR_NAME) are expanded using the container's environment. Defaults to \"\" (volume's root). SubPathExpr and SubPath are mutually exclusive."
                              | optional,
                            ..
                          },
                    volumes =
                      Array
                          {
                            awsElasticBlockStore
                              | {
                                fsType
                                  | String
                                  | doc "fsType is the filesystem type of the volume that you want to mount. Tip: Ensure that the filesystem type is supported by the host operating system. Examples: \"ext4\", \"xfs\", \"ntfs\". Implicitly inferred to be \"ext4\" if unspecified. More info: https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore"
                                  | optional,
                                partition
                                  | std.number.Integer
                                  | doc "partition is the partition in the volume that you want to mount. If omitted, the default is to mount by volume name. Examples: For volume /dev/sda1, you specify the partition as \"1\". Similarly, the volume partition for /dev/sda is \"0\" (or you can leave the property empty)."
                                  | optional,
                                readOnly
                                  | Bool
                                  | doc "readOnly value true will force the readOnly setting in VolumeMounts. More info: https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore"
                                  | optional,
                                volumeID
                                  | String
                                  | doc "volumeID is unique ID of the persistent disk resource in AWS (Amazon EBS volume). More info: https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore",
                                ..
                              }
                              | doc "awsElasticBlockStore represents an AWS Disk resource that is attached to a kubelet's host machine and then exposed to the pod. More info: https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore"
                              | optional,
                            azureDisk
                              | {
                                cachingMode
                                  | String
                                  | doc "cachingMode is the Host Caching mode: None, Read Only, Read Write."
                                  | optional,
                                diskName
                                  | String
                                  | doc "diskName is the Name of the data disk in the blob storage",
                                diskURI
                                  | String
                                  | doc "diskURI is the URI of data disk in the blob storage",
                                fsType
                                  | String
                                  | doc "fsType is Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. \"ext4\", \"xfs\", \"ntfs\". Implicitly inferred to be \"ext4\" if unspecified."
                                  | optional,
                                kind
                                  | String
                                  | doc "kind expected values are Shared: multiple blob disks per storage account  Dedicated: single blob disk per storage account  Managed: azure managed data disk (only in managed availability set). defaults to shared"
                                  | optional,
                                readOnly
                                  | Bool
                                  | doc "readOnly Defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts."
                                  | optional,
                                ..
                              }
                              | doc "azureDisk represents an Azure Data Disk mount on the host and bind mount to the pod."
                              | optional,
                            azureFile
                              | {
                                readOnly
                                  | Bool
                                  | doc "readOnly defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts."
                                  | optional,
                                secretName
                                  | String
                                  | doc "secretName is the  name of secret that contains Azure Storage Account Name and Key",
                                shareName
                                  | String
                                  | doc "shareName is the azure share Name",
                                ..
                              }
                              | doc "azureFile represents an Azure File Service mount on the host and bind mount to the pod."
                              | optional,
                            cephfs
                              | {
                                monitors
                                  | Array String
                                  | doc "monitors is Required: Monitors is a collection of Ceph monitors More info: https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it",
                                path
                                  | String
                                  | doc "path is Optional: Used as the mounted root, rather than the full Ceph tree, default is /"
                                  | optional,
                                readOnly
                                  | Bool
                                  | doc "readOnly is Optional: Defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts. More info: https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it"
                                  | optional,
                                secretFile
                                  | String
                                  | doc "secretFile is Optional: SecretFile is the path to key ring for User, default is /etc/ceph/user.secret More info: https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it"
                                  | optional,
                                secretRef
                                  | js2n.Always
                                  | doc "secretRef is Optional: SecretRef is reference to the authentication secret for User, default is empty. More info: https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it"
                                  | optional,
                                user
                                  | String
                                  | doc "user is optional: User is the rados user name, default is admin More info: https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it"
                                  | optional,
                                ..
                              }
                              | doc "cephFS represents a Ceph FS mount on the host that shares a pod's lifetime"
                              | optional,
                            cinder
                              | {
                                fsType
                                  | String
                                  | doc "fsType is the filesystem type to mount. Must be a filesystem type supported by the host operating system. Examples: \"ext4\", \"xfs\", \"ntfs\". Implicitly inferred to be \"ext4\" if unspecified. More info: https://examples.k8s.io/mysql-cinder-pd/README.md"
                                  | optional,
                                readOnly
                                  | Bool
                                  | doc "readOnly defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts. More info: https://examples.k8s.io/mysql-cinder-pd/README.md"
                                  | optional,
                                secretRef
                                  | js2n.Always
                                  | doc "secretRef is optional: points to a secret object containing parameters used to connect to OpenStack."
                                  | optional,
                                volumeID
                                  | String
                                  | doc "volumeID used to identify the volume in cinder. More info: https://examples.k8s.io/mysql-cinder-pd/README.md",
                                ..
                              }
                              | doc "cinder represents a cinder volume attached and mounted on kubelets host machine. More info: https://examples.k8s.io/mysql-cinder-pd/README.md"
                              | optional,
                            configMap
                              | {
                                defaultMode
                                  | std.number.Integer
                                  | doc "defaultMode is optional: mode bits used to set permissions on created files by default. Must be an octal value between 0000 and 0777 or a decimal value between 0 and 511. YAML accepts both octal and decimal values, JSON requires decimal values for mode bits. Defaults to 0644. Directories within the path are not affected by this setting. This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set."
                                  | optional,
                                items
                                  | Array js2n.Always
                                  | doc "items if unspecified, each key-value pair in the Data field of the referenced ConfigMap will be projected into the volume as a file whose name is the key and content is the value. If specified, the listed keys will be projected into the specified paths, and unlisted keys will not be present. If a key is specified which is not present in the ConfigMap, the volume setup will error unless it is marked optional. Paths must be relative and may not contain the '..' path or start with '..'."
                                  | optional,
                                name
                                  | String
                                  | doc "Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names"
                                  | optional,
                                "optional"
                                  | Bool
                                  | doc "optional specify whether the ConfigMap or its keys must be defined"
                                  | optional,
                                ..
                              }
                              | doc "configMap represents a configMap that should populate this volume"
                              | optional,
                            csi
                              | {
                                driver
                                  | String
                                  | doc "driver is the name of the CSI driver that handles this volume. Consult with your admin for the correct name as registered in the cluster.",
                                fsType
                                  | String
                                  | doc "fsType to mount. Ex. \"ext4\", \"xfs\", \"ntfs\". If not provided, the empty value is passed to the associated CSI driver which will determine the default filesystem to apply."
                                  | optional,
                                nodePublishSecretRef
                                  | js2n.Always
                                  | doc "nodePublishSecretRef is a reference to the secret object containing sensitive information to pass to the CSI driver to complete the CSI NodePublishVolume and NodeUnpublishVolume calls. This field is optional, and  may be empty if no secret is required. If the secret object contains more than one secret, all secret references are passed."
                                  | optional,
                                readOnly
                                  | Bool
                                  | doc "readOnly specifies a read-only configuration for the volume. Defaults to false (read/write)."
                                  | optional,
                                volumeAttributes
                                  | { _ | String }
                                  | doc "volumeAttributes stores driver-specific properties that are passed to the CSI driver. Consult your driver's documentation for supported values."
                                  | optional,
                                ..
                              }
                              | doc "csi (Container Storage Interface) represents ephemeral storage that is handled by certain external CSI drivers (Beta feature)."
                              | optional,
                            downwardAPI
                              | {
                                defaultMode
                                  | std.number.Integer
                                  | doc "Optional: mode bits to use on created files by default. Must be a Optional: mode bits used to set permissions on created files by default. Must be an octal value between 0000 and 0777 or a decimal value between 0 and 511. YAML accepts both octal and decimal values, JSON requires decimal values for mode bits. Defaults to 0644. Directories within the path are not affected by this setting. This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set."
                                  | optional,
                                items
                                  | Array
                                    {
                                      fieldRef
                                        | js2n.Always
                                        | doc "Required: Selects a field of the pod: only annotations, labels, name and namespace are supported."
                                        | optional,
                                      mode
                                        | std.number.Integer
                                        | doc "Optional: mode bits used to set permissions on this file, must be an octal value between 0000 and 0777 or a decimal value between 0 and 511. YAML accepts both octal and decimal values, JSON requires decimal values for mode bits. If not specified, the volume defaultMode will be used. This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set."
                                        | optional,
                                      path
                                        | String
                                        | doc "Required: Path is  the relative path name of the file to be created. Must not be absolute or contain the '..' path. Must be utf-8 encoded. The first item of the relative path must not start with '..'",
                                      resourceFieldRef
                                        | js2n.Always
                                        | doc "Selects a resource of the container: only resources limits and requests (limits.cpu, limits.memory, requests.cpu and requests.memory) are currently supported."
                                        | optional,
                                      ..
                                    }
                                  | doc "Items is a list of downward API volume file"
                                  | optional,
                                ..
                              }
                              | doc "downwardAPI represents downward API about the pod that should populate this volume"
                              | optional,
                            emptyDir
                              | {
                                medium
                                  | String
                                  | doc "medium represents what type of storage medium should back this directory. The default is \"\" which means to use the node's default medium. Must be an empty string (default) or Memory. More info: https://kubernetes.io/docs/concepts/storage/volumes#emptydir"
                                  | optional,
                                sizeLimit
                                  | js2n.Always
                                  | doc "sizeLimit is the total amount of local storage required for this EmptyDir volume. The size limit is also applicable for memory medium. The maximum usage on memory medium EmptyDir would be the minimum value between the SizeLimit specified here and the sum of memory limits of all containers in a pod. The default is nil which means that the limit is undefined. More info: http://kubernetes.io/docs/user-guide/volumes#emptydir"
                                  | optional,
                                ..
                              }
                              | doc "emptyDir represents a temporary directory that shares a pod's lifetime. More info: https://kubernetes.io/docs/concepts/storage/volumes#emptydir"
                              | optional,
                            ephemeral
                              | {
                                volumeClaimTemplate
                                  | {
                                    metadata
                                      | {
                                        annotations
                                          | { _ | String }
                                          | doc "Annotations is an unstructured key value map stored with a resource that may be set by external tools to store and retrieve arbitrary metadata. They are not queryable and should be preserved when modifying objects. More info: http://kubernetes.io/docs/user-guide/annotations"
                                          | optional,
                                        clusterName
                                          | String
                                          | doc m%"
                                            Deprecated: ClusterName is a legacy field that was always cleared by the system and never used; it will be removed completely in 1.25.
                                            
                                            The name in the go struct is changed to help clients detect accidental use.
                                          "%
                                          | optional,
                                        creationTimestamp
                                          | String
                                          | doc m%"
                                            CreationTimestamp is a timestamp representing the server time when this object was created. It is not guaranteed to be set in happens-before order across separate operations. Clients may not set this value. It is represented in RFC3339 form and is in UTC.
                                            
                                            Populated by the system. Read-only. Null for lists. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
                                          "%
                                          | optional,
                                        deletionGracePeriodSeconds
                                          | std.number.Integer
                                          | doc "Number of seconds allowed for this object to gracefully terminate before it will be removed from the system. Only set when deletionTimestamp is also set. May only be shortened. Read-only."
                                          | optional,
                                        deletionTimestamp
                                          | js2n.Always
                                          | doc m%"
                                            DeletionTimestamp is RFC 3339 date and time at which this resource will be deleted. This field is set by the server when a graceful deletion is requested by the user, and is not directly settable by a client. The resource is expected to be deleted (no longer visible from resource lists, and not reachable by name) after the time in this field, once the finalizers list is empty. As long as the finalizers list contains items, deletion is blocked. Once the deletionTimestamp is set, this value may not be unset or be set further into the future, although it may be shortened or the resource may be deleted prior to this time. For example, a user may request that a pod is deleted in 30 seconds. The Kubelet will react by sending a graceful termination signal to the containers in the pod. After that 30 seconds, the Kubelet will send a hard termination signal (SIGKILL) to the container and after cleanup, remove the pod from the API. In the presence of network partitions, this object may still exist after this timestamp, until an administrator or automated process can determine the resource is fully terminated. If not set, graceful deletion of the object has not been requested.
                                            
                                            Populated by the system when a graceful deletion is requested. Read-only. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
                                          "%
                                          | optional,
                                        finalizers
                                          | Array String
                                          | doc "Must be empty before the object is deleted from the registry. Each entry is an identifier for the responsible component that will remove the entry from the list. If the deletionTimestamp of the object is non-nil, entries in this list can only be removed. Finalizers may be processed and removed in any order.  Order is NOT enforced because it introduces significant risk of stuck finalizers. finalizers is a shared field, any actor with permission can reorder it. If the finalizer list is processed in order, then this can lead to a situation in which the component responsible for the first finalizer in the list is waiting for a signal (field value, external system, or other) produced by a component responsible for a finalizer later in the list, resulting in a deadlock. Without enforced ordering finalizers are free to order amongst themselves and are not vulnerable to ordering changes in the list."
                                          | optional,
                                        generateName
                                          | String
                                          | doc m%"
                                            GenerateName is an optional prefix, used by the server, to generate a unique name ONLY IF the Name field has not been provided. If this field is used, the name returned to the client will be different than the name passed. This value will also be combined with a unique suffix. The provided value has the same validation rules as the Name field, and may be truncated by the length of the suffix required to make the value unique on the server.
                                            
                                            If this field is specified and the generated name exists, the server will return a 409.
                                            
                                            Applied only if Name is not specified. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#idempotency
                                          "%
                                          | optional,
                                        generation
                                          | std.number.Integer
                                          | doc "A sequence number representing a specific generation of the desired state. Populated by the system. Read-only."
                                          | optional,
                                        labels
                                          | { _ | String }
                                          | doc "Map of string keys and values that can be used to organize and categorize (scope and select) objects. May match selectors of replication controllers and services. More info: http://kubernetes.io/docs/user-guide/labels"
                                          | optional,
                                        managedFields
                                          | Array
                                            {
                                              apiVersion
                                                | String
                                                | doc "APIVersion defines the version of this resource that this field set applies to. The format is \"group/version\" just like the top-level APIVersion field. It is necessary to track the version of a field set because it cannot be automatically converted."
                                                | optional,
                                              fieldsType
                                                | String
                                                | doc "FieldsType is the discriminator for the different fields format and version. There is currently only one possible value: \"FieldsV1\""
                                                | optional,
                                              fieldsV1
                                                | { _ | Dyn }
                                                | doc "FieldsV1 holds the first JSON version format as described in the \"FieldsV1\" type."
                                                | optional,
                                              manager
                                                | String
                                                | doc "Manager is an identifier of the workflow managing these fields."
                                                | optional,
                                              operation
                                                | String
                                                | doc "Operation is the type of operation which lead to this ManagedFieldsEntry being created. The only valid values for this field are 'Apply' and 'Update'."
                                                | optional,
                                              subresource
                                                | String
                                                | doc "Subresource is the name of the subresource used to update that object, or empty string if the object was updated through the main resource. The value of this field is used to distinguish between managers, even if they share the same name. For example, a status update will be distinct from a regular update using the same manager name. Note that the APIVersion field is not related to the Subresource field and it always corresponds to the version of the main resource."
                                                | optional,
                                              time
                                                | js2n.Always
                                                | doc "Time is the timestamp of when the ManagedFields entry was added. The timestamp will also be updated if a field is added, the manager changes any of the owned fields value or removes a field. The timestamp does not update when a field is removed from the entry because another manager took it over."
                                                | optional,
                                              ..
                                            }
                                          | doc "ManagedFields maps workflow-id and version to the set of fields that are managed by that workflow. This is mostly for internal housekeeping, and users typically shouldn't need to set or understand this field. A workflow can be the user's name, a controller's name, or the name of a specific apply path like \"ci-cd\". The set of fields is always in the version that the workflow used when modifying the object."
                                          | optional,
                                        name
                                          | String
                                          | doc "Name must be unique within a namespace. Is required when creating resources, although some resources may allow a client to request the generation of an appropriate name automatically. Name is primarily intended for creation idempotence and configuration definition. Cannot be updated. More info: http://kubernetes.io/docs/user-guide/identifiers#names"
                                          | optional,
                                        namespace
                                          | String
                                          | doc m%"
                                            Namespace defines the space within which each name must be unique. An empty namespace is equivalent to the "default" namespace, but "default" is the canonical representation. Not all objects are required to be scoped to a namespace - the value of this field for those objects will be empty.
                                            
                                            Must be a DNS_LABEL. Cannot be updated. More info: http://kubernetes.io/docs/user-guide/namespaces
                                          "%
                                          | optional,
                                        ownerReferences
                                          | Array
                                            {
                                              apiVersion
                                                | String
                                                | doc "API version of the referent.",
                                              blockOwnerDeletion
                                                | Bool
                                                | doc "If true, AND if the owner has the \"foregroundDeletion\" finalizer, then the owner cannot be deleted from the key-value store until this reference is removed. See https://kubernetes.io/docs/concepts/architecture/garbage-collection/#foreground-deletion for how the garbage collector interacts with this field and enforces the foreground deletion. Defaults to false. To set this field, a user needs \"delete\" permission of the owner, otherwise 422 (Unprocessable Entity) will be returned."
                                                | optional,
                                              controller
                                                | Bool
                                                | doc "If true, this reference points to the managing controller."
                                                | optional,
                                              kind
                                                | String
                                                | doc "Kind of the referent. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds",
                                              name
                                                | String
                                                | doc "Name of the referent. More info: http://kubernetes.io/docs/user-guide/identifiers#names",
                                              uid
                                                | String
                                                | doc "UID of the referent. More info: http://kubernetes.io/docs/user-guide/identifiers#uids",
                                              ..
                                            }
                                          | doc "List of objects depended by this object. If ALL objects in the list have been deleted, this object will be garbage collected. If this object is managed by a controller, then an entry in this list will point to this controller, with the controller field set to true. There cannot be more than one managing controller."
                                          | optional,
                                        resourceVersion
                                          | String
                                          | doc m%"
                                            An opaque value that represents the internal version of this object that can be used by clients to determine when objects have changed. May be used for optimistic concurrency, change detection, and the watch operation on a resource or set of resources. Clients must treat these values as opaque and passed unmodified back to the server. They may only be valid for a particular resource or set of resources.
                                            
                                            Populated by the system. Read-only. Value must be treated as opaque by clients and . More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#concurrency-control-and-consistency
                                          "%
                                          | optional,
                                        selfLink
                                          | String
                                          | doc "Deprecated: selfLink is a legacy read-only field that is no longer populated by the system."
                                          | optional,
                                        uid
                                          | String
                                          | doc m%"
                                            UID is the unique in time and space value for this object. It is typically generated by the server on successful creation of a resource and is not allowed to change on PUT operations.
                                            
                                            Populated by the system. Read-only. More info: http://kubernetes.io/docs/user-guide/identifiers#uids
                                          "%
                                          | optional,
                                        ..
                                      }
                                      | doc "May contain labels and annotations that will be copied into the PVC when creating it. No other fields are allowed and will be rejected during validation."
                                      | optional,
                                    spec
                                      | {
                                        accessModes
                                          | Array String
                                          | doc "accessModes contains the desired access modes the volume should have. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes-1"
                                          | optional,
                                        dataSource
                                          | {
                                            apiGroup
                                              | String
                                              | doc "APIGroup is the group for the resource being referenced. If APIGroup is not specified, the specified Kind must be in the core API group. For any other third-party types, APIGroup is required."
                                              | optional,
                                            kind
                                              | String
                                              | doc "Kind is the type of resource being referenced",
                                            name
                                              | String
                                              | doc "Name is the name of resource being referenced",
                                            ..
                                          }
                                          | doc "dataSource field can be used to specify either: * An existing VolumeSnapshot object (snapshot.storage.k8s.io/VolumeSnapshot) * An existing PVC (PersistentVolumeClaim) If the provisioner or an external controller can support the specified data source, it will create a new volume based on the contents of the specified data source. If the AnyVolumeDataSource feature gate is enabled, this field will always have the same contents as the DataSourceRef field."
                                          | optional,
                                        dataSourceRef
                                          | js2n.Always
                                          | doc m%"
                                            dataSourceRef specifies the object from which to populate the volume with data, if a non-empty volume is desired. This may be any local object from a non-empty API group (non core object) or a PersistentVolumeClaim object. When this field is specified, volume binding will only succeed if the type of the specified object matches some installed volume populator or dynamic provisioner. This field will replace the functionality of the DataSource field and as such if both fields are non-empty, they must have the same value. For backwards compatibility, both fields (DataSource and DataSourceRef) will be set to the same value automatically if one of them is empty and the other is non-empty. There are two important differences between DataSource and DataSourceRef: * While DataSource only allows two specific types of objects, DataSourceRef
                                              allows any non-core object, as well as PersistentVolumeClaim objects.
                                            * While DataSource ignores disallowed values (dropping them), DataSourceRef
                                              preserves all values, and generates an error if a disallowed value is
                                              specified.
                                            (Beta) Using this field requires the AnyVolumeDataSource feature gate to be enabled.
                                          "%
                                          | optional,
                                        resources
                                          | js2n.Always
                                          | doc "resources represents the minimum resources the volume should have. If RecoverVolumeExpansionFailure feature is enabled users are allowed to specify resource requirements that are lower than previous value but must still be higher than capacity recorded in the status field of the claim. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#resources"
                                          | optional,
                                        selector
                                          | {
                                            matchExpressions
                                              | Array
                                                {
                                                  key
                                                    | String
                                                    | doc "key is the label key that the selector applies to.",
                                                  operator
                                                    | String
                                                    | doc "operator represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists and DoesNotExist.",
                                                  values
                                                    | Array String
                                                    | doc "values is an array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch."
                                                    | optional,
                                                  ..
                                                }
                                              | doc "matchExpressions is a list of label selector requirements. The requirements are ANDed."
                                              | optional,
                                            matchLabels
                                              | { _ | String }
                                              | doc "matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is \"key\", the operator is \"In\", and the values array contains only \"value\". The requirements are ANDed."
                                              | optional,
                                            ..
                                          }
                                          | doc "selector is a label query over volumes to consider for binding."
                                          | optional,
                                        storageClassName
                                          | String
                                          | doc "storageClassName is the name of the StorageClass required by the claim. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#class-1"
                                          | optional,
                                        volumeMode
                                          | String
                                          | doc "volumeMode defines what type of volume is required by the claim. Value of Filesystem is implied when not included in claim spec."
                                          | optional,
                                        volumeName
                                          | String
                                          | doc "volumeName is the binding reference to the PersistentVolume backing this claim."
                                          | optional,
                                        ..
                                      }
                                      | doc "The specification for the PersistentVolumeClaim. The entire content is copied unchanged into the PVC that gets created from this template. The same fields as in a PersistentVolumeClaim are also valid here.",
                                    ..
                                  }
                                  | doc m%"
                                    Will be used to create a stand-alone PVC to provision the volume. The pod in which this EphemeralVolumeSource is embedded will be the owner of the PVC, i.e. the PVC will be deleted together with the pod.  The name of the PVC will be `<pod name>-<volume name>` where `<volume name>` is the name from the `PodSpec.Volumes` array entry. Pod validation will reject the pod if the concatenated name is not valid for a PVC (for example, too long).
                                    
                                    An existing PVC with that name that is not owned by the pod will *not* be used for the pod to avoid using an unrelated volume by mistake. Starting the pod is then blocked until the unrelated PVC is removed. If such a pre-created PVC is meant to be used by the pod, the PVC has to updated with an owner reference to the pod once the pod exists. Normally this should not be necessary, but it may be useful when manually reconstructing a broken cluster.
                                    
                                    This field is read-only and no changes will be made by Kubernetes to the PVC after it has been created.
                                    
                                    Required, must not be nil.
                                  "%
                                  | optional,
                                ..
                              }
                              | doc m%"
                                ephemeral represents a volume that is handled by a cluster storage driver. The volume's lifecycle is tied to the pod that defines it - it will be created before the pod starts, and deleted when the pod is removed.
                                
                                Use this if: a) the volume is only needed while the pod runs, b) features of normal volumes like restoring from snapshot or capacity
                                   tracking are needed,
                                c) the storage driver is specified through a storage class, and d) the storage driver supports dynamic volume provisioning through
                                   a PersistentVolumeClaim (see EphemeralVolumeSource for more
                                   information on the connection between this volume type
                                   and PersistentVolumeClaim).
                                
                                Use PersistentVolumeClaim or one of the vendor-specific APIs for volumes that persist for longer than the lifecycle of an individual pod.
                                
                                Use CSI for light-weight local ephemeral volumes if the CSI driver is meant to be used that way - see the documentation of the driver for more information.
                                
                                A pod can use both types of ephemeral volumes and persistent volumes at the same time.
                              "%
                              | optional,
                            fc
                              | {
                                fsType
                                  | String
                                  | doc "fsType is the filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. \"ext4\", \"xfs\", \"ntfs\". Implicitly inferred to be \"ext4\" if unspecified."
                                  | optional,
                                lun
                                  | std.number.Integer
                                  | doc "lun is Optional: FC target lun number"
                                  | optional,
                                readOnly
                                  | Bool
                                  | doc "readOnly is Optional: Defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts."
                                  | optional,
                                targetWWNs
                                  | Array String
                                  | doc "targetWWNs is Optional: FC target worldwide names (WWNs)"
                                  | optional,
                                wwids
                                  | Array String
                                  | doc "wwids Optional: FC volume world wide identifiers (wwids) Either wwids or combination of targetWWNs and lun must be set, but not both simultaneously."
                                  | optional,
                                ..
                              }
                              | doc "fc represents a Fibre Channel resource that is attached to a kubelet's host machine and then exposed to the pod."
                              | optional,
                            flexVolume
                              | {
                                driver
                                  | String
                                  | doc "driver is the name of the driver to use for this volume.",
                                fsType
                                  | String
                                  | doc "fsType is the filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. \"ext4\", \"xfs\", \"ntfs\". The default filesystem depends on FlexVolume script."
                                  | optional,
                                options
                                  | { _ | String }
                                  | doc "options is Optional: this field holds extra command options if any."
                                  | optional,
                                readOnly
                                  | Bool
                                  | doc "readOnly is Optional: defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts."
                                  | optional,
                                secretRef
                                  | js2n.Always
                                  | doc "secretRef is Optional: secretRef is reference to the secret object containing sensitive information to pass to the plugin scripts. This may be empty if no secret object is specified. If the secret object contains more than one secret, all secrets are passed to the plugin scripts."
                                  | optional,
                                ..
                              }
                              | doc "flexVolume represents a generic volume resource that is provisioned/attached using an exec based plugin."
                              | optional,
                            flocker
                              | {
                                datasetName
                                  | String
                                  | doc "datasetName is Name of the dataset stored as metadata -> name on the dataset for Flocker should be considered as deprecated"
                                  | optional,
                                datasetUUID
                                  | String
                                  | doc "datasetUUID is the UUID of the dataset. This is unique identifier of a Flocker dataset"
                                  | optional,
                                ..
                              }
                              | doc "flocker represents a Flocker volume attached to a kubelet's host machine. This depends on the Flocker control service being running"
                              | optional,
                            gcePersistentDisk
                              | {
                                fsType
                                  | String
                                  | doc "fsType is filesystem type of the volume that you want to mount. Tip: Ensure that the filesystem type is supported by the host operating system. Examples: \"ext4\", \"xfs\", \"ntfs\". Implicitly inferred to be \"ext4\" if unspecified. More info: https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk"
                                  | optional,
                                partition
                                  | std.number.Integer
                                  | doc "partition is the partition in the volume that you want to mount. If omitted, the default is to mount by volume name. Examples: For volume /dev/sda1, you specify the partition as \"1\". Similarly, the volume partition for /dev/sda is \"0\" (or you can leave the property empty). More info: https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk"
                                  | optional,
                                pdName
                                  | String
                                  | doc "pdName is unique name of the PD resource in GCE. Used to identify the disk in GCE. More info: https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk",
                                readOnly
                                  | Bool
                                  | doc "readOnly here will force the ReadOnly setting in VolumeMounts. Defaults to false. More info: https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk"
                                  | optional,
                                ..
                              }
                              | doc "gcePersistentDisk represents a GCE Disk resource that is attached to a kubelet's host machine and then exposed to the pod. More info: https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk"
                              | optional,
                            gitRepo
                              | {
                                directory
                                  | String
                                  | doc "directory is the target directory name. Must not contain or start with '..'.  If '.' is supplied, the volume directory will be the git repository.  Otherwise, if specified, the volume will contain the git repository in the subdirectory with the given name."
                                  | optional,
                                repository
                                  | String
                                  | doc "repository is the URL",
                                revision
                                  | String
                                  | doc "revision is the commit hash for the specified revision."
                                  | optional,
                                ..
                              }
                              | doc "gitRepo represents a git repository at a particular revision. DEPRECATED: GitRepo is deprecated. To provision a container with a git repo, mount an EmptyDir into an InitContainer that clones the repo using git, then mount the EmptyDir into the Pod's container."
                              | optional,
                            glusterfs
                              | {
                                endpoints
                                  | String
                                  | doc "endpoints is the endpoint name that details Glusterfs topology. More info: https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod",
                                path
                                  | String
                                  | doc "path is the Glusterfs volume path. More info: https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod",
                                readOnly
                                  | Bool
                                  | doc "readOnly here will force the Glusterfs volume to be mounted with read-only permissions. Defaults to false. More info: https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod"
                                  | optional,
                                ..
                              }
                              | doc "glusterfs represents a Glusterfs mount on the host that shares a pod's lifetime. More info: https://examples.k8s.io/volumes/glusterfs/README.md"
                              | optional,
                            hostPath
                              | {
                                path
                                  | String
                                  | doc "path of the directory on the host. If the path is a symlink, it will follow the link to the real path. More info: https://kubernetes.io/docs/concepts/storage/volumes#hostpath",
                                type
                                  | String
                                  | doc "type for HostPath Volume Defaults to \"\" More info: https://kubernetes.io/docs/concepts/storage/volumes#hostpath"
                                  | optional,
                                ..
                              }
                              | doc "hostPath represents a pre-existing file or directory on the host machine that is directly exposed to the container. This is generally used for system agents or other privileged things that are allowed to see the host machine. Most containers will NOT need this. More info: https://kubernetes.io/docs/concepts/storage/volumes#hostpath"
                              | optional,
                            iscsi
                              | {
                                chapAuthDiscovery
                                  | Bool
                                  | doc "chapAuthDiscovery defines whether support iSCSI Discovery CHAP authentication"
                                  | optional,
                                chapAuthSession
                                  | Bool
                                  | doc "chapAuthSession defines whether support iSCSI Session CHAP authentication"
                                  | optional,
                                fsType
                                  | String
                                  | doc "fsType is the filesystem type of the volume that you want to mount. Tip: Ensure that the filesystem type is supported by the host operating system. Examples: \"ext4\", \"xfs\", \"ntfs\". Implicitly inferred to be \"ext4\" if unspecified. More info: https://kubernetes.io/docs/concepts/storage/volumes#iscsi"
                                  | optional,
                                initiatorName
                                  | String
                                  | doc "initiatorName is the custom iSCSI Initiator Name. If initiatorName is specified with iscsiInterface simultaneously, new iSCSI interface <target portal>:<volume name> will be created for the connection."
                                  | optional,
                                iqn
                                  | String
                                  | doc "iqn is the target iSCSI Qualified Name.",
                                iscsiInterface
                                  | String
                                  | doc "iscsiInterface is the interface Name that uses an iSCSI transport. Defaults to 'default' (tcp)."
                                  | optional,
                                lun
                                  | std.number.Integer
                                  | doc "lun represents iSCSI Target Lun number.",
                                portals
                                  | Array String
                                  | doc "portals is the iSCSI Target Portal List. The portal is either an IP or ip_addr:port if the port is other than default (typically TCP ports 860 and 3260)."
                                  | optional,
                                readOnly
                                  | Bool
                                  | doc "readOnly here will force the ReadOnly setting in VolumeMounts. Defaults to false."
                                  | optional,
                                secretRef
                                  | js2n.Always
                                  | doc "secretRef is the CHAP Secret for iSCSI target and initiator authentication"
                                  | optional,
                                targetPortal
                                  | String
                                  | doc "targetPortal is iSCSI Target Portal. The Portal is either an IP or ip_addr:port if the port is other than default (typically TCP ports 860 and 3260).",
                                ..
                              }
                              | doc "iscsi represents an ISCSI Disk resource that is attached to a kubelet's host machine and then exposed to the pod. More info: https://examples.k8s.io/volumes/iscsi/README.md"
                              | optional,
                            name
                              | String
                              | doc "name of the volume. Must be a DNS_LABEL and unique within the pod. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names",
                            nfs
                              | {
                                path
                                  | String
                                  | doc "path that is exported by the NFS server. More info: https://kubernetes.io/docs/concepts/storage/volumes#nfs",
                                readOnly
                                  | Bool
                                  | doc "readOnly here will force the NFS export to be mounted with read-only permissions. Defaults to false. More info: https://kubernetes.io/docs/concepts/storage/volumes#nfs"
                                  | optional,
                                server
                                  | String
                                  | doc "server is the hostname or IP address of the NFS server. More info: https://kubernetes.io/docs/concepts/storage/volumes#nfs",
                                ..
                              }
                              | doc "nfs represents an NFS mount on the host that shares a pod's lifetime More info: https://kubernetes.io/docs/concepts/storage/volumes#nfs"
                              | optional,
                            persistentVolumeClaim
                              | {
                                claimName
                                  | String
                                  | doc "claimName is the name of a PersistentVolumeClaim in the same namespace as the pod using this volume. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#persistentvolumeclaims",
                                readOnly
                                  | Bool
                                  | doc "readOnly Will force the ReadOnly setting in VolumeMounts. Default false."
                                  | optional,
                                ..
                              }
                              | doc "persistentVolumeClaimVolumeSource represents a reference to a PersistentVolumeClaim in the same namespace. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#persistentvolumeclaims"
                              | optional,
                            photonPersistentDisk
                              | {
                                fsType
                                  | String
                                  | doc "fsType is the filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. \"ext4\", \"xfs\", \"ntfs\". Implicitly inferred to be \"ext4\" if unspecified."
                                  | optional,
                                pdID
                                  | String
                                  | doc "pdID is the ID that identifies Photon Controller persistent disk",
                                ..
                              }
                              | doc "photonPersistentDisk represents a PhotonController persistent disk attached and mounted on kubelets host machine"
                              | optional,
                            portworxVolume
                              | {
                                fsType
                                  | String
                                  | doc "fSType represents the filesystem type to mount Must be a filesystem type supported by the host operating system. Ex. \"ext4\", \"xfs\". Implicitly inferred to be \"ext4\" if unspecified."
                                  | optional,
                                readOnly
                                  | Bool
                                  | doc "readOnly defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts."
                                  | optional,
                                volumeID
                                  | String
                                  | doc "volumeID uniquely identifies a Portworx volume",
                                ..
                              }
                              | doc "portworxVolume represents a portworx volume attached and mounted on kubelets host machine"
                              | optional,
                            projected
                              | {
                                defaultMode
                                  | std.number.Integer
                                  | doc "defaultMode are the mode bits used to set permissions on created files by default. Must be an octal value between 0000 and 0777 or a decimal value between 0 and 511. YAML accepts both octal and decimal values, JSON requires decimal values for mode bits. Directories within the path are not affected by this setting. This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set."
                                  | optional,
                                sources
                                  | Array
                                    {
                                      configMap
                                        | {
                                          items
                                            | Array js2n.Always
                                            | doc "items if unspecified, each key-value pair in the Data field of the referenced ConfigMap will be projected into the volume as a file whose name is the key and content is the value. If specified, the listed keys will be projected into the specified paths, and unlisted keys will not be present. If a key is specified which is not present in the ConfigMap, the volume setup will error unless it is marked optional. Paths must be relative and may not contain the '..' path or start with '..'."
                                            | optional,
                                          name
                                            | String
                                            | doc "Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names"
                                            | optional,
                                          "optional"
                                            | Bool
                                            | doc "optional specify whether the ConfigMap or its keys must be defined"
                                            | optional,
                                          ..
                                        }
                                        | doc "configMap information about the configMap data to project"
                                        | optional,
                                      downwardAPI
                                        | {
                                          items
                                            | Array js2n.Always
                                            | doc "Items is a list of DownwardAPIVolume file"
                                            | optional,
                                          ..
                                        }
                                        | doc "downwardAPI information about the downwardAPI data to project"
                                        | optional,
                                      secret
                                        | {
                                          items
                                            | Array js2n.Always
                                            | doc "items if unspecified, each key-value pair in the Data field of the referenced Secret will be projected into the volume as a file whose name is the key and content is the value. If specified, the listed keys will be projected into the specified paths, and unlisted keys will not be present. If a key is specified which is not present in the Secret, the volume setup will error unless it is marked optional. Paths must be relative and may not contain the '..' path or start with '..'."
                                            | optional,
                                          name
                                            | String
                                            | doc "Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names"
                                            | optional,
                                          "optional"
                                            | Bool
                                            | doc "optional field specify whether the Secret or its key must be defined"
                                            | optional,
                                          ..
                                        }
                                        | doc "secret information about the secret data to project"
                                        | optional,
                                      serviceAccountToken
                                        | {
                                          audience
                                            | String
                                            | doc "audience is the intended audience of the token. A recipient of a token must identify itself with an identifier specified in the audience of the token, and otherwise should reject the token. The audience defaults to the identifier of the apiserver."
                                            | optional,
                                          expirationSeconds
                                            | std.number.Integer
                                            | doc "expirationSeconds is the requested duration of validity of the service account token. As the token approaches expiration, the kubelet volume plugin will proactively rotate the service account token. The kubelet will start trying to rotate the token if the token is older than 80 percent of its time to live or if the token is older than 24 hours.Defaults to 1 hour and must be at least 10 minutes."
                                            | optional,
                                          path
                                            | String
                                            | doc "path is the path relative to the mount point of the file to project the token into.",
                                          ..
                                        }
                                        | doc "serviceAccountToken is information about the serviceAccountToken data to project"
                                        | optional,
                                      ..
                                    }
                                  | doc "sources is the list of volume projections"
                                  | optional,
                                ..
                              }
                              | doc "projected items for all in one resources secrets, configmaps, and downward API"
                              | optional,
                            quobyte
                              | {
                                group
                                  | String
                                  | doc "group to map volume access to Default is no group"
                                  | optional,
                                readOnly
                                  | Bool
                                  | doc "readOnly here will force the Quobyte volume to be mounted with read-only permissions. Defaults to false."
                                  | optional,
                                registry
                                  | String
                                  | doc "registry represents a single or multiple Quobyte Registry services specified as a string as host:port pair (multiple entries are separated with commas) which acts as the central registry for volumes",
                                tenant
                                  | String
                                  | doc "tenant owning the given Quobyte volume in the Backend Used with dynamically provisioned Quobyte volumes, value is set by the plugin"
                                  | optional,
                                user
                                  | String
                                  | doc "user to map volume access to Defaults to serivceaccount user"
                                  | optional,
                                volume
                                  | String
                                  | doc "volume is a string that references an already created Quobyte volume by name.",
                                ..
                              }
                              | doc "quobyte represents a Quobyte mount on the host that shares a pod's lifetime"
                              | optional,
                            rbd
                              | {
                                fsType
                                  | String
                                  | doc "fsType is the filesystem type of the volume that you want to mount. Tip: Ensure that the filesystem type is supported by the host operating system. Examples: \"ext4\", \"xfs\", \"ntfs\". Implicitly inferred to be \"ext4\" if unspecified. More info: https://kubernetes.io/docs/concepts/storage/volumes#rbd"
                                  | optional,
                                image
                                  | String
                                  | doc "image is the rados image name. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it",
                                keyring
                                  | String
                                  | doc "keyring is the path to key ring for RBDUser. Default is /etc/ceph/keyring. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it"
                                  | optional,
                                monitors
                                  | Array String
                                  | doc "monitors is a collection of Ceph monitors. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it",
                                pool
                                  | String
                                  | doc "pool is the rados pool name. Default is rbd. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it"
                                  | optional,
                                readOnly
                                  | Bool
                                  | doc "readOnly here will force the ReadOnly setting in VolumeMounts. Defaults to false. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it"
                                  | optional,
                                secretRef
                                  | {
                                    name
                                      | String
                                      | doc "Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names"
                                      | optional,
                                    ..
                                  }
                                  | doc "secretRef is name of the authentication secret for RBDUser. If provided overrides keyring. Default is nil. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it"
                                  | optional,
                                user
                                  | String
                                  | doc "user is the rados user name. Default is admin. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it"
                                  | optional,
                                ..
                              }
                              | doc "rbd represents a Rados Block Device mount on the host that shares a pod's lifetime. More info: https://examples.k8s.io/volumes/rbd/README.md"
                              | optional,
                            scaleIO
                              | {
                                fsType
                                  | String
                                  | doc "fsType is the filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. \"ext4\", \"xfs\", \"ntfs\". Default is \"xfs\"."
                                  | optional,
                                gateway
                                  | String
                                  | doc "gateway is the host address of the ScaleIO API Gateway.",
                                protectionDomain
                                  | String
                                  | doc "protectionDomain is the name of the ScaleIO Protection Domain for the configured storage."
                                  | optional,
                                readOnly
                                  | Bool
                                  | doc "readOnly Defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts."
                                  | optional,
                                secretRef
                                  | js2n.Always
                                  | doc "secretRef references to the secret for ScaleIO user and other sensitive information. If this is not provided, Login operation will fail.",
                                sslEnabled
                                  | Bool
                                  | doc "sslEnabled Flag enable/disable SSL communication with Gateway, default false"
                                  | optional,
                                storageMode
                                  | String
                                  | doc "storageMode indicates whether the storage for a volume should be ThickProvisioned or ThinProvisioned. Default is ThinProvisioned."
                                  | optional,
                                storagePool
                                  | String
                                  | doc "storagePool is the ScaleIO Storage Pool associated with the protection domain."
                                  | optional,
                                system
                                  | String
                                  | doc "system is the name of the storage system as configured in ScaleIO.",
                                volumeName
                                  | String
                                  | doc "volumeName is the name of a volume already created in the ScaleIO system that is associated with this volume source."
                                  | optional,
                                ..
                              }
                              | doc "scaleIO represents a ScaleIO persistent volume attached and mounted on Kubernetes nodes."
                              | optional,
                            secret
                              | {
                                defaultMode
                                  | std.number.Integer
                                  | doc "defaultMode is Optional: mode bits used to set permissions on created files by default. Must be an octal value between 0000 and 0777 or a decimal value between 0 and 511. YAML accepts both octal and decimal values, JSON requires decimal values for mode bits. Defaults to 0644. Directories within the path are not affected by this setting. This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set."
                                  | optional,
                                items
                                  | Array
                                    {
                                      key
                                        | String
                                        | doc "key is the key to project.",
                                      mode
                                        | std.number.Integer
                                        | doc "mode is Optional: mode bits used to set permissions on this file. Must be an octal value between 0000 and 0777 or a decimal value between 0 and 511. YAML accepts both octal and decimal values, JSON requires decimal values for mode bits. If not specified, the volume defaultMode will be used. This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set."
                                        | optional,
                                      path
                                        | String
                                        | doc "path is the relative path of the file to map the key to. May not be an absolute path. May not contain the path element '..'. May not start with the string '..'.",
                                      ..
                                    }
                                  | doc "items If unspecified, each key-value pair in the Data field of the referenced Secret will be projected into the volume as a file whose name is the key and content is the value. If specified, the listed keys will be projected into the specified paths, and unlisted keys will not be present. If a key is specified which is not present in the Secret, the volume setup will error unless it is marked optional. Paths must be relative and may not contain the '..' path or start with '..'."
                                  | optional,
                                "optional"
                                  | Bool
                                  | doc "optional field specify whether the Secret or its keys must be defined"
                                  | optional,
                                secretName
                                  | String
                                  | doc "secretName is the name of the secret in the pod's namespace to use. More info: https://kubernetes.io/docs/concepts/storage/volumes#secret"
                                  | optional,
                                ..
                              }
                              | doc "secret represents a secret that should populate this volume. More info: https://kubernetes.io/docs/concepts/storage/volumes#secret"
                              | optional,
                            storageos
                              | {
                                fsType
                                  | String
                                  | doc "fsType is the filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. \"ext4\", \"xfs\", \"ntfs\". Implicitly inferred to be \"ext4\" if unspecified."
                                  | optional,
                                readOnly
                                  | Bool
                                  | doc "readOnly defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts."
                                  | optional,
                                secretRef
                                  | js2n.Always
                                  | doc "secretRef specifies the secret to use for obtaining the StorageOS API credentials.  If not specified, default values will be attempted."
                                  | optional,
                                volumeName
                                  | String
                                  | doc "volumeName is the human-readable name of the StorageOS volume.  Volume names are only unique within a namespace."
                                  | optional,
                                volumeNamespace
                                  | String
                                  | doc "volumeNamespace specifies the scope of the volume within StorageOS.  If no namespace is specified then the Pod's namespace will be used.  This allows the Kubernetes name scoping to be mirrored within StorageOS for tighter integration. Set VolumeName to any name to override the default behaviour. Set to \"default\" if you are not using namespaces within StorageOS. Namespaces that do not pre-exist within StorageOS will be created."
                                  | optional,
                                ..
                              }
                              | doc "storageOS represents a StorageOS volume attached and mounted on Kubernetes nodes."
                              | optional,
                            vsphereVolume
                              | {
                                fsType
                                  | String
                                  | doc "fsType is filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. \"ext4\", \"xfs\", \"ntfs\". Implicitly inferred to be \"ext4\" if unspecified."
                                  | optional,
                                storagePolicyID
                                  | String
                                  | doc "storagePolicyID is the storage Policy Based Management (SPBM) profile ID associated with the StoragePolicyName."
                                  | optional,
                                storagePolicyName
                                  | String
                                  | doc "storagePolicyName is the storage Policy Based Management (SPBM) profile name."
                                  | optional,
                                volumePath
                                  | String
                                  | doc "volumePath is the path that identifies vSphere volume vmdk",
                                ..
                              }
                              | doc "vsphereVolume represents a vSphere volume attached and mounted on kubelets host machine"
                              | optional,
                            ..
                          },
                    "~chart" = js2n.Always,
                    "~forceRestart" = Bool,
                    "~needs" = js2n.Always,
                  },
              required = {},
            },
      "additionalProperties.allOf.1.then" =
        {
            backup
              | {
                enabled
                  | Bool
                  | doc "Enable database backups. \\n\\nEnabled by default on preprod and prod environments"
                  | optional,
                name
                  | String
                  | doc "to override the backup destination path (in case we need a new destination for a new cluster)"
                  | optional,
                ..
              }
              | optional,
            cnpg-cluster
              | {
                annotations | { _ | Dyn } | optional,
                backup
                  | {
                    barmanObjectStore
                      | js2n.Nullable ({ _ | Dyn })
                      | doc "See: https://cloudnative-pg.io/documentation/1.20/backup_recovery/"
                      | optional,
                    enabled | Bool | optional,
                    immediate | Bool | optional,
                    retentionPolicy
                      | String
                      | doc m%"
                        The retention policy is expressed in the form of XXu where XX is a positive integer and
                        u is in [dwm] - days, weeks, months.
                      "%
                      | optional,
                    schedule
                      | String
                      | doc "this cron format has the seconds on the left"
                      | optional,
                    sqlDumpRetentionDays | String | optional,
                    sqlDumpSchedule | String | optional,
                    ..
                  }
                  | optional,
                clusterExtraSpec | { _ | Dyn } | optional,
                dbName | String | optional,
                dbOwner | String | optional,
                dbSecretName | js2n.Nullable String | optional,
                extensions
                  | Array (
                    std.contract.Sequence
                      [
                        std.enum.TagOrString,
                        [|
                          'postgis_tiger_geocoder-3,
                          'postgis_sfcgal-3,
                          'postgis_tiger_geocoder,
                          'address_standardizer_data_us-3,
                          'address_standardizer,
                          'postgis,
                          'postgis_raster,
                          'postgis_raster-3,
                          'address_standardizer-3,
                          'postgis_topology-3,
                          'postgis_topology,
                          'address_standardizer_data_us,
                          'postgis_sfcgal,
                          'postgis-3,
                          'pgrouting,
                          'pgaudit,
                          'xml2,
                          'bloom,
                          'moddatetime,
                          'btree_gist,
                          'pg_visibility,
                          'tablefunc,
                          'tcn,
                          'btree_gin,
                          'intagg,
                          'pg_prewarm,
                          'tsm_system_time,
                          'refint,
                          'dict_xsyn,
                          'isn,
                          'plpgsql,
                          'pgstattuple,
                          'pg_buffercache,
                          'autoinc,
                          'unaccent,
                          'old_snapshot,
                          'earthdistance,
                          'ltree,
                          'pgrowlocks,
                          'pg_surgery,
                          'pg_freespacemap,
                          'fuzzystrmatch,
                          'tsm_system_rows,
                          'amcheck,
                          'cube,
                          'pg_trgm,
                          'pageinspect,
                          'intarray,
                          'pg_stat_statements,
                          'postgres_fdw,
                          'seg,
                          'insert_username,
                          'sslinfo,
                          'hstore,
                          'citext,
                          'lo,
                          'pgcrypto,
                          'adminpack,
                          'uuid-ossp,
                          'dblink,
                          'file_fdw,
                          'dict_int,
                          'pg_partman
                        |]
                      ]
                  )
                  | optional,
                externalClusters | Array Dyn | optional,
                extraAffinity | { _ | Dyn } | optional,
                fullnameOverride | String | optional,
                image
                  | {
                    pullPolicy | String | optional,
                    repository | String | optional,
                    tag | String | optional,
                    ..
                  }
                  | optional,
                imagePullSecrets | Array Dyn | optional,
                instances | Number | optional,
                logLevel | String | optional,
                maxSyncReplicas | Number | optional,
                minSyncReplicas | Number | optional,
                monitoring
                  | { enablePodMonitor | Bool | optional, .. }
                  | optional,
                nameOverride | String | optional,
                nodeSelector | { _ | Dyn } | optional,
                persistence
                  | {
                    pvcTemplate | { _ | Dyn } | optional,
                    resizeInUseVolumes | js2n.Nullable Bool | optional,
                    size | String | optional,
                    storageClass
                      | String
                      | doc m%"
                        Applied after evaluating the PVC template, if available.
                        If not specified, generated PVCs will be satisfied by the default storage class
                      "%
                      | optional,
                    ..
                  }
                  | optional,
                pg_basebackup
                  | {
                    enabled | Bool | optional,
                    source | js2n.Nullable String | optional,
                    ..
                  }
                  | optional,
                pg_hba | Array Dyn | optional,
                poolers | { _ | Dyn } | optional,
                postInitApplicationSQL | Array String | optional,
                postInitApplicationSQLRefs
                  | js2n.Nullable ({ _ | Dyn })
                  | doc m%"
                    Points references to ConfigMaps or Secrets which contain SQL files, the general implementation order to these references is from all Secrets to all ConfigMaps, and inside Secrets or ConfigMaps, the implementation order is same as the order of each array (by default empty
                    See https://cloudnative-pg.io/documentation/current/api_reference/#postinitapplicationsqlrefs
                  "%
                  | optional,
                postgresqlParameters
                  | {
                    DateStyle
                      | String
                      | doc m%"
                        Sets the display format for date and time values.
                        
                        Should be set according to the format in which you expect to receive date information.
                        
                        see https://postgresqlco.nf/doc/en/param/DateStyle/
                      "%
                      | optional,
                    IntervalStyle
                      | std.enum.TagOrString
                      | [|
                        'iso_8601,
                        'sql_standard,
                        'postgres_verbose,
                        'postgres
                      |]
                      | doc m%"
                        Sets the display format for interval values.
                        
                        This is just in case your applications are expecting something specific in how INTERVAL strings are output.
                        
                        see https://postgresqlco.nf/doc/en/param/IntervalStyle/
                      "%
                      | optional,
                    TimeZone
                      | String
                      | doc m%"
                        Sets the time zone for displaying and interpreting time stamps.
                        
                        To avoid a lot of confusion, make sure this is set to your local timeszone.
                        If the server covers multiple time zones, then this should be set on a ROLE or connection basis.
                        
                        see https://postgresqlco.nf/doc/en/param/TimeZone/
                      "%
                      | optional,
                    allow_in_place_tablespaces
                      | String
                      | doc m%"
                        Allows tablespaces directly inside pg_tblspc, for testing.
                        
                        see https://postgresqlco.nf/doc/en/param/allow_in_place_tablespaces/
                      "%
                      | optional,
                    allow_system_table_mods
                      | String
                      | doc m%"
                        Allows modifications of the structure of system tables.
                        
                        Only available in single-user mode; this setting is for initdb and may be used in the future for upgrade-in-place.
                        
                        see https://postgresqlco.nf/doc/en/param/allow_system_table_mods/
                      "%
                      | optional,
                    application_name
                      | String
                      | doc m%"
                        Sets the application name to be reported in statistics and logs.
                        
                        Set this to a reasonable default for most user sessions; if in the middle of working over your application to support application names, this might be "unknown".
                        
                        see https://postgresqlco.nf/doc/en/param/application_name/
                      "%
                      | optional,
                    archive_cleanup_command
                      | String
                      | doc m%"
                        Sets the shell command that will be executed at every restart point.
                        
                        see https://postgresqlco.nf/doc/en/param/archive_cleanup_command/
                      "%
                      | optional,
                    archive_command
                      | String
                      | doc m%"
                        Sets the shell command that will be called to archive a WAL file.
                        
                        All of the Archiving settings are part of a Point In Time Recovery or Warm Standby configuration.
                        Please see the Backup and Restore section for more information.
                        
                        see https://postgresqlco.nf/doc/en/param/archive_command/
                      "%
                      | optional,
                    archive_mode
                      | std.enum.TagOrString
                      | [| 'off, 'on, 'always |]
                      | doc m%"
                        Allows archiving of WAL files using archive_command.
                        
                        Requires a restart to change, so if you want to turn archiving on and off, set this to 'on' and change archive_command instead.
                        Even better, set archive_command to a script which can be disabled by trigger or ENV variable.
                        
                        see https://postgresqlco.nf/doc/en/param/archive_mode/
                      "%
                      | optional,
                    archive_timeout
                      | String
                      | doc m%"
                        Forces a switch to the next WAL file if a new file has not been started within N seconds.
                        
                        Minimum: 0
                        
                        Maximum: 1073741823
                        
                        Dependant on your tradeoff between disk space and letting the standby get behind.
                        
                        see https://postgresqlco.nf/doc/en/param/archive_timeout/
                      "%
                      | optional,
                    array_nulls
                      | String
                      | doc m%"
                        Enable input of NULL elements in arrays.
                        
                        Provided for compatibility with 7.4 behavior.
                        
                        see https://postgresqlco.nf/doc/en/param/array_nulls/
                      "%
                      | optional,
                    authentication_timeout
                      | String
                      | doc m%"
                        Sets the maximum allowed time to complete client authentication.
                        
                        Minimum: 1
                        
                        Maximum: 600
                        
                        For production databases, it's important that this value be synchronized with the timeout on the application server side.
                        Most web applications will want a shorter timeout, like 20s.
                        
                        see https://postgresqlco.nf/doc/en/param/authentication_timeout/
                      "%
                      | optional,
                    autovacuum
                      | String
                      | doc m%"
                        Starts the autovacuum subprocess.
                        
                        Starts the daemon which cleans up your tables and indexes, preventing bloat and poor response times. The only reason to set it to "off" is for databases which regularly do large batch operations like ETL.
                        Note that you can adjust the frequency or stop autovacuum on individual tables by adding rows to the pg_autovacuum system table.
                        
                        see https://postgresqlco.nf/doc/en/param/autovacuum/
                      "%
                      | optional,
                    autovacuum_analyze_scale_factor
                      | String
                      | doc m%"
                        Number of tuple inserts, updates, or deletes prior to analyze as a fraction of reltuples.
                        
                        Minimum: 0
                        
                        Maximum: 100
                        
                        This setting should be optimal for most databases.
                        However, very large tables (1m rows or more) in which rows are added in a skewed fashion may need to be autoanalyzed at a lower percentage, such as 5% or even 1%.
                        
                        see https://postgresqlco.nf/doc/en/param/autovacuum_analyze_scale_factor/
                      "%
                      | optional,
                    autovacuum_analyze_threshold
                      | String
                      | doc m%"
                        Minimum number of tuple inserts, updates, or deletes prior to analyze.
                        
                        Minimum: 0
                        
                        Maximum: 2147483647
                        
                        see https://postgresqlco.nf/doc/en/param/autovacuum_analyze_threshold/
                      "%
                      | optional,
                    autovacuum_freeze_max_age
                      | String
                      | doc m%"
                        Age at which to autovacuum a table to prevent transaction ID wraparound.
                        
                        Minimum: 100000
                        
                        Maximum: 2000000000
                        
                        Triggers autovacuum automatically if a table is about to suffer from XID rollover. The setting is very conservative, and should probably be increased to 500million, but not higher.
                        
                        see https://postgresqlco.nf/doc/en/param/autovacuum_freeze_max_age/
                      "%
                      | optional,
                    autovacuum_max_workers
                      | String
                      | doc m%"
                        Sets the maximum number of simultaneously running autovacuum worker processes.
                        
                        Minimum: 1
                        
                        Maximum: 262143
                        
                        If you have an installation with many tables (100's to 1000's) or with some tables which autovacuum takes hours to process, you may want to add additional autovacuum workers so that multiple tables can be vacuumed at once.
                        Be conservative, though, as each autovacuum worker will utilize a separate CPU core, memory and I/O.
                        
                        see https://postgresqlco.nf/doc/en/param/autovacuum_max_workers/
                      "%
                      | optional,
                    autovacuum_multixact_freeze_max_age
                      | String
                      | doc m%"
                        Multixact age at which to autovacuum a table to prevent multixact wraparound.
                        
                        Minimum: 10000
                        
                        Maximum: 2000000000
                        
                        Triggers autovacuum automatically when the oldest "multixact" (a kind of lock transaction) is more than this old.
                        Do not raise past 1billion.
                        
                        see https://postgresqlco.nf/doc/en/param/autovacuum_multixact_freeze_max_age/
                      "%
                      | optional,
                    autovacuum_naptime
                      | String
                      | doc m%"
                        Time to sleep between autovacuum runs.
                        
                        Minimum: 1
                        
                        Maximum: 2147483
                        
                        Decrease this to 30s or 15s if you have a large number (100's) of tables, or if you otherwise see from pg_stat_user_tables that autovacuum is not keeping up.
                        
                        see https://postgresqlco.nf/doc/en/param/autovacuum_naptime/
                      "%
                      | optional,
                    autovacuum_vacuum_cost_delay
                      | String
                      | doc m%"
                        Vacuum cost delay in milliseconds, for autovacuum.
                        
                        Minimum: -1
                        
                        Maximum: 100
                        
                        If autovacuum is having too much of a performance impact on running queries, you might want to increase this setting to 50ms.
                        However, this will also cause individual vacuum tasks to take longer.
                        
                        see https://postgresqlco.nf/doc/en/param/autovacuum_vacuum_cost_delay/
                      "%
                      | optional,
                    autovacuum_vacuum_cost_limit
                      | String
                      | doc m%"
                        Vacuum cost amount available before napping, for autovacuum.
                        
                        Minimum: -1
                        
                        Maximum: 10000
                        
                        see https://postgresqlco.nf/doc/en/param/autovacuum_vacuum_cost_limit/
                      "%
                      | optional,
                    autovacuum_vacuum_insert_scale_factor
                      | String
                      | doc m%"
                        Number of tuple inserts prior to vacuum as a fraction of reltuples.
                        
                        Minimum: 0
                        
                        Maximum: 100
                        
                        see https://postgresqlco.nf/doc/en/param/autovacuum_vacuum_insert_scale_factor/
                      "%
                      | optional,
                    autovacuum_vacuum_insert_threshold
                      | String
                      | doc m%"
                        Minimum number of tuple inserts prior to vacuum, or -1 to disable insert vacuums.
                        
                        Minimum: -1
                        
                        Maximum: 2147483647
                        
                        see https://postgresqlco.nf/doc/en/param/autovacuum_vacuum_insert_threshold/
                      "%
                      | optional,
                    autovacuum_vacuum_scale_factor
                      | String
                      | doc m%"
                        Number of tuple updates or deletes prior to vacuum as a fraction of reltuples.
                        
                        Minimum: 0
                        
                        Maximum: 100
                        
                        see https://postgresqlco.nf/doc/en/param/autovacuum_vacuum_scale_factor/
                      "%
                      | optional,
                    autovacuum_vacuum_threshold
                      | String
                      | doc m%"
                        Minimum number of tuple updates or deletes prior to vacuum.
                        
                        Minimum: 0
                        
                        Maximum: 2147483647
                        
                        see https://postgresqlco.nf/doc/en/param/autovacuum_vacuum_threshold/
                      "%
                      | optional,
                    autovacuum_work_mem
                      | String
                      | doc m%"
                        Sets the maximum memory to be used by each autovacuum worker process.
                        
                        Minimum: -1
                        
                        Maximum: 2147483647
                        
                        Set a limit on this which is based on the number of autovac workers you expect to have running.
                        
                        see https://postgresqlco.nf/doc/en/param/autovacuum_work_mem/
                      "%
                      | optional,
                    backend_flush_after
                      | String
                      | doc m%"
                        Number of pages after which previously performed writes are flushed to disk.
                        
                        Minimum: 0
                        
                        Maximum: 256
                        
                        Unless you have time to tune memory flushing behavior and test for improvements/regressions
                        
                        see https://postgresqlco.nf/doc/en/param/backend_flush_after/
                      "%
                      | optional,
                    backslash_quote
                      | std.enum.TagOrString
                      | [| 'off, 'on, 'safe_encoding |]
                      | doc m%"
                        Sets whether "'" is allowed in string literals.
                        
                        If you have cleaned up your application code, you can set this to 'off' to help lock down the database.
                        Older PHP applications will require the insecure setting of 'on'.
                        
                        see https://postgresqlco.nf/doc/en/param/backslash_quote/
                      "%
                      | optional,
                    backtrace_functions
                      | String
                      | doc m%"
                        Log backtrace for errors in these functions.
                        
                        see https://postgresqlco.nf/doc/en/param/backtrace_functions/
                      "%
                      | optional,
                    bgwriter_delay
                      | String
                      | doc m%"
                        Background writer sleep time between rounds.
                        
                        Minimum: 10
                        
                        Maximum: 10000
                        
                        Thanks to bgwriter autotuning, it should no longer be necessary for most users to touch the bgwriter settings.
                        Only modify these if you have a demonstrated issue shown by checkpoint spikes and monitoring pg_stat_bgwriter.  Laptop PostgreSQL users may want to increase bgwriter_delay to 60s to decrease I/O activity, since it is no longer possible to turn the bgwriter off.
                        
                        see https://postgresqlco.nf/doc/en/param/bgwriter_delay/
                      "%
                      | optional,
                    bgwriter_flush_after
                      | String
                      | doc m%"
                        Number of pages after which previously performed writes are flushed to disk.
                        
                        Minimum: 0
                        
                        Maximum: 256
                        
                        Unless you have time to tune memory flushing behavior and test for improvements/regressions
                        
                        see https://postgresqlco.nf/doc/en/param/bgwriter_flush_after/
                      "%
                      | optional,
                    bgwriter_lru_maxpages
                      | String
                      | doc m%"
                        Background writer maximum number of LRU pages to flush per round.
                        
                        Minimum: 0
                        
                        Maximum: 1073741823
                        
                        see https://postgresqlco.nf/doc/en/param/bgwriter_lru_maxpages/
                      "%
                      | optional,
                    bgwriter_lru_multiplier
                      | String
                      | doc m%"
                        Multiple of the average buffer usage to free per round.
                        
                        Minimum: 0
                        
                        Maximum: 10
                        
                        see https://postgresqlco.nf/doc/en/param/bgwriter_lru_multiplier/
                      "%
                      | optional,
                    block_size
                      | String
                      | doc m%"
                        Shows the size of a disk block.
                        
                        Minimum: 8192
                        
                        Maximum: 8192
                        
                        Informational: lets you know of non-standard installation or compile options.
                        
                        see https://postgresqlco.nf/doc/en/param/block_size/
                      "%
                      | optional,
                    bonjour
                      | String
                      | doc m%"
                        Enables advertising the server via Bonjour.
                        
                        Set to "on" if you've compiled in Bonjour support and have an application which works by autodiscovery of Postgres.
                        Otherwise, leave off.
                        
                        see https://postgresqlco.nf/doc/en/param/bonjour/
                      "%
                      | optional,
                    bonjour_name
                      | String
                      | doc m%"
                        Sets the Bonjour service name.
                        
                        Bonjour support must be compiled in and activated on the host machine to be live.
                        You'll want alternate names if you have several instances of PostgreSQL on the same machine.
                        
                        see https://postgresqlco.nf/doc/en/param/bonjour_name/
                      "%
                      | optional,
                    bytea_output
                      | std.enum.TagOrString
                      | [| 'hex, 'escape |]
                      | doc m%"
                        Sets the output format for bytea.
                        
                        see https://postgresqlco.nf/doc/en/param/bytea_output/
                      "%
                      | optional,
                    check_function_bodies
                      | String
                      | doc m%"
                        Check routine bodies during CREATE FUNCTION and CREATE PROCEDURE.
                        
                        You only really want to turn this off to resolve circular dependancies, and that can be done on a per-session basis.
                        In general, checking for syntax errors in PL/pgSQL functions is a very good idea.
                        
                        see https://postgresqlco.nf/doc/en/param/check_function_bodies/
                      "%
                      | optional,
                    checkpoint_completion_target
                      | String
                      | doc m%"
                        Time spent flushing dirty buffers during checkpoint, as fraction of checkpoint interval.
                        
                        Minimum: 0
                        
                        Maximum: 1
                        
                        Defines the fraction of one checkpoint_interval over which to spread checkpoints. The default value works for most users.
                        
                        see https://postgresqlco.nf/doc/en/param/checkpoint_completion_target/
                      "%
                      | optional,
                    checkpoint_flush_after
                      | String
                      | doc m%"
                        Number of pages after which previously performed writes are flushed to disk.
                        
                        Minimum: 0
                        
                        Maximum: 256
                        
                        Unless you have time to tune memory flushing behavior and test for improvements/regressions
                        
                        see https://postgresqlco.nf/doc/en/param/checkpoint_flush_after/
                      "%
                      | optional,
                    checkpoint_timeout
                      | String
                      | doc m%"
                        Sets the maximum time between automatic WAL checkpoints.
                        
                        Minimum: 30
                        
                        Maximum: 86400
                        
                        If you do really large ETL batches, you may want to increase this setting to the maximum length of a batch run.
                        
                        see https://postgresqlco.nf/doc/en/param/checkpoint_timeout/
                      "%
                      | optional,
                    checkpoint_warning
                      | String
                      | doc m%"
                        Enables warnings if checkpoint segments are filled more frequently than this.
                        
                        Minimum: 0
                        
                        Maximum: 2147483647
                        
                        see https://postgresqlco.nf/doc/en/param/checkpoint_warning/
                      "%
                      | optional,
                    client_connection_check_interval
                      | String
                      | doc m%"
                        Sets the time interval between checks for disconnection while running queries.
                        
                        Minimum: 0
                        
                        Maximum: 2147483647
                        
                        see https://postgresqlco.nf/doc/en/param/client_connection_check_interval/
                      "%
                      | optional,
                    client_encoding
                      | String
                      | doc m%"
                        Sets the client's character set encoding.
                        
                        Should match server_encoding unless you have a really good reason why not.
                        
                        see https://postgresqlco.nf/doc/en/param/client_encoding/
                      "%
                      | optional,
                    client_min_messages
                      | std.enum.TagOrString
                      | [|
                        'error,
                        'warning,
                        'notice,
                        'log,
                        'debug1,
                        'debug2,
                        'debug3,
                        'debug4,
                        'debug5
                      |]
                      | doc m%"
                        Sets the message levels that are sent to the client.
                        
                        Unless doing interactive debugging, then you want it set to DEBUG1-5.
                        If you have a client application which is confused by some of PostgreSQL's WARNINGs then you may want to set this to ERROR.
                        
                        see https://postgresqlco.nf/doc/en/param/client_min_messages/
                      "%
                      | optional,
                    cluster_name
                      | String
                      | doc m%"
                        Sets the name of the cluster, which is included in the process title.
                        
                        Should be "postgres-1" or something else identifiable as this specific postmaster.
                        
                        see https://postgresqlco.nf/doc/en/param/cluster_name/
                      "%
                      | optional,
                    commit_delay
                      | String
                      | doc m%"
                        Sets the delay in microseconds between transaction commit and flushing WAL to disk.
                        
                        Minimum: 0
                        
                        Maximum: 100000
                        
                        A primitive form of group commit without asynchronicity.
                        Performance testing of this is very mixed; only set to non-zero if you have time to test the specific performance impact on your workload.  Reasonable values are 200 to 1000.
                        
                        see https://postgresqlco.nf/doc/en/param/commit_delay/
                      "%
                      | optional,
                    commit_siblings
                      | String
                      | doc m%"
                        Sets the minimum concurrent open transactions before performing commit_delay.
                        
                        Minimum: 0
                        
                        Maximum: 1000
                        
                        See commit_delay.
                        Reasonable values are 3 to 8
                        
                        see https://postgresqlco.nf/doc/en/param/commit_siblings/
                      "%
                      | optional,
                    compute_query_id
                      | std.enum.TagOrString
                      | [| 'off, 'on, 'regress, 'auto |]
                      | doc m%"
                        Compute query identifiers.
                        
                        see https://postgresqlco.nf/doc/en/param/compute_query_id/
                      "%
                      | optional,
                    config_file
                      | String
                      | doc m%"
                        Sets the server's main configuration file.
                        
                        Can only be changed via command-line switch for obvious reasons.
                        Useful primarily for testing different configuration options, or for automated restart with different configuration options.
                        
                        see https://postgresqlco.nf/doc/en/param/config_file/
                      "%
                      | optional,
                    constraint_exclusion
                      | std.enum.TagOrString
                      | [| 'off, 'on, 'partition |]
                      | doc m%"
                        Enables the planner to use constraints to optimize queries.
                        
                        Default of "partition" is fine for most users.
                        Setting it to "on" can allow optimization of UNION queries as well, but deserves testing before production deployment.
                        
                        see https://postgresqlco.nf/doc/en/param/constraint_exclusion/
                      "%
                      | optional,
                    cpu_index_tuple_cost
                      | String
                      | doc m%"
                        Sets the planner's estimate of the cost of processing each index entry during an index scan.
                        
                        Minimum: 0
                        
                        Maximum: 1.79769e+308
                        
                        Decrease this slightly to make your database favor indexes slightly more.
                        
                        see https://postgresqlco.nf/doc/en/param/cpu_index_tuple_cost/
                      "%
                      | optional,
                    cpu_operator_cost
                      | String
                      | doc m%"
                        Sets the planner's estimate of the cost of processing each operator or function call.
                        
                        Minimum: 0
                        
                        Maximum: 1.79769e+308
                        
                        Decrease this slightly to make your database favor indexes slightly more.
                        
                        see https://postgresqlco.nf/doc/en/param/cpu_operator_cost/
                      "%
                      | optional,
                    cpu_tuple_cost
                      | String
                      | doc m%"
                        Sets the planner's estimate of the cost of processing each tuple (row).
                        
                        Minimum: 0
                        
                        Maximum: 1.79769e+308
                        
                        see https://postgresqlco.nf/doc/en/param/cpu_tuple_cost/
                      "%
                      | optional,
                    cursor_tuple_fraction
                      | String
                      | doc m%"
                        Sets the planner's estimate of the fraction of a cursor's rows that will be retrieved.
                        
                        Minimum: 0
                        
                        Maximum: 1
                        
                        Increase this to 0.9 if most of the time you're using cursors to step through all of the rows of a query result.
                        
                        see https://postgresqlco.nf/doc/en/param/cursor_tuple_fraction/
                      "%
                      | optional,
                    data_checksums
                      | String
                      | doc m%"
                        Shows whether data checksums are turned on for this cluster.
                        
                        This has to be set at initdb time, and does create a significant amount of extra I/O.
                        However, it will save you from a corrupt database down the line, so if you're not performance-constrained, always use it.
                        
                        see https://postgresqlco.nf/doc/en/param/data_checksums/
                      "%
                      | optional,
                    data_directory
                      | String
                      | doc m%"
                        Sets the server's data directory.
                        
                        Supports the ability to distribute files according to sysadmin or operating system defined schemes, or for launching multiple restart instances using the same binaries.
                        Most of the time, it's better to use configuration options to define these locations so that all PostgreSQL binaries default to the correct paths.
                        
                        see https://postgresqlco.nf/doc/en/param/data_directory/
                      "%
                      | optional,
                    data_directory_mode
                      | String
                      | doc m%"
                        Shows the mode of the data directory.
                        
                        Minimum: 0
                        
                        Maximum: 511
                        
                        see https://postgresqlco.nf/doc/en/param/data_directory_mode/
                      "%
                      | optional,
                    data_sync_retry
                      | String
                      | doc m%"
                        Whether to continue running after a failure to sync data files.
                        
                        see https://postgresqlco.nf/doc/en/param/data_sync_retry/
                      "%
                      | optional,
                    db_user_namespace
                      | String
                      | doc m%"
                        Enables per-database user names.
                        
                        This setting is a hack to work around the lack of per-database users in PostgreSQL.
                        Unless you desperately need it, avoid this setting as it will eventually be replaced by something more maintainable.
                        
                        see https://postgresqlco.nf/doc/en/param/db_user_namespace/
                      "%
                      | optional,
                    deadlock_timeout
                      | String
                      | doc m%"
                        Sets the time to wait on a lock before checking for deadlock.
                        
                        Minimum: 1
                        
                        Maximum: 2147483647
                        
                        Default is fine, except when you are troubleshooting/monitoring locks.
                        In that case, you may want to lower it to as little as 50ms.
                        
                        see https://postgresqlco.nf/doc/en/param/deadlock_timeout/
                      "%
                      | optional,
                    debug_assertions
                      | String
                      | doc m%"
                        Shows whether the running server has assertion checks enabled.
                        
                        Used for debugging PostgreSQL code problems; not for production use.
                        Requires compile options.
                        
                        see https://postgresqlco.nf/doc/en/param/debug_assertions/
                      "%
                      | optional,
                    debug_discard_caches
                      | String
                      | doc m%"
                        Aggressively flush system caches for debugging purposes.
                        
                        Minimum: 0
                        
                        Maximum: 0
                        
                        see https://postgresqlco.nf/doc/en/param/debug_discard_caches/
                      "%
                      | optional,
                    debug_pretty_print
                      | String
                      | doc m%"
                        Indents parse and plan tree displays.
                        
                        For debugging a testing machine.
                        Do not set in production.
                        
                        see https://postgresqlco.nf/doc/en/param/debug_pretty_print/
                      "%
                      | optional,
                    debug_print_parse
                      | String
                      | doc m%"
                        Logs each query's parse tree.
                        
                        For debugging a testing machine.
                        Do not set in production.
                        
                        see https://postgresqlco.nf/doc/en/param/debug_print_parse/
                      "%
                      | optional,
                    debug_print_plan
                      | String
                      | doc m%"
                        Logs each query's execution plan.
                        
                        For debugging a testing machine.
                        Do not set in production.
                        
                        see https://postgresqlco.nf/doc/en/param/debug_print_plan/
                      "%
                      | optional,
                    debug_print_rewritten
                      | String
                      | doc m%"
                        Logs each query's rewritten parse tree.
                        
                        For debugging a testing machine.
                        Do not set in production.
                        
                        see https://postgresqlco.nf/doc/en/param/debug_print_rewritten/
                      "%
                      | optional,
                    default_statistics_target
                      | String
                      | doc m%"
                        Sets the default statistics target.
                        
                        Minimum: 1
                        
                        Maximum: 10000
                        
                        Most applications can use the default of 100.
                          For very small/simple databases, decrease to 10 or 50.  Data warehousing applications generally need to use 500 to 1000.  Otherwise, increase statistics targets on a per-column basis.
                        
                        see https://postgresqlco.nf/doc/en/param/default_statistics_target/
                      "%
                      | optional,
                    default_table_access_method
                      | String
                      | doc m%"
                        Sets the default table access method for new tables.
                        
                        see https://postgresqlco.nf/doc/en/param/default_table_access_method/
                      "%
                      | optional,
                    default_tablespace
                      | String
                      | doc m%"
                        Sets the default tablespace to create tables and indexes in.
                        
                        Change this if you want a different tablespace for user-created tables.
                        Generally, better set on a ROLE or session basis.
                        
                        see https://postgresqlco.nf/doc/en/param/default_tablespace/
                      "%
                      | optional,
                    default_text_search_config
                      | String
                      | doc m%"
                        Sets default text search configuration.
                        
                        Set to the most common language used by the users, so that they don't have to pass the language parameter when calling TSearch functions.
                        
                        see https://postgresqlco.nf/doc/en/param/default_text_search_config/
                      "%
                      | optional,
                    default_toast_compression
                      | std.enum.TagOrString
                      | [| 'lz4, 'pglz |]
                      | doc m%"
                        Sets the default compression method for compressible values.
                        
                        see https://postgresqlco.nf/doc/en/param/default_toast_compression/
                      "%
                      | optional,
                    default_transaction_deferrable
                      | String
                      | doc m%"
                        Sets the default deferrable status of new transactions.
                        
                        If you use serializable transactions by default, it may be also useful to set this in order to decrease the overhead of long-running transactions.
                        
                        see https://postgresqlco.nf/doc/en/param/default_transaction_deferrable/
                      "%
                      | optional,
                    default_transaction_isolation
                      | std.enum.TagOrString
                      | [|
                        '"\"read uncommitted\"",
                        '"\"read committed\"",
                        '"\"repeatable read\"",
                        'serializable
                      |]
                      | doc m%"
                        Sets the transaction isolation level of each new transaction.
                        
                        Relates to transaction_isolation.
                        Better set on a session or transaction basis as transaction_isolation in order to support specific types of transaction conflict resolution.
                        
                        see https://postgresqlco.nf/doc/en/param/default_transaction_isolation/
                      "%
                      | optional,
                    default_transaction_read_only
                      | String
                      | doc m%"
                        Sets the default read-only status of new transactions.
                        
                        This setting is mainly useful for preventing yourself from accidentally changing data.
                        It is not really a security setting, as anyone can revoke it on their own session.  Better set on a session or ROLE level.  Will show up as TRUE if you are on a replication standby.
                        
                        see https://postgresqlco.nf/doc/en/param/default_transaction_read_only/
                      "%
                      | optional,
                    dynamic_library_path
                      | String
                      | doc m%"
                        Sets the path for dynamically loadable modules.
                        
                        Primarily useful if you've written lots of custom C libraries for your installation and want to organize them into custom directories.
                        
                        see https://postgresqlco.nf/doc/en/param/dynamic_library_path/
                      "%
                      | optional,
                    dynamic_shared_memory_type
                      | std.enum.TagOrString
                      | [| 'mmap, 'sysv, 'posix |]
                      | doc m%"
                        Selects the dynamic shared memory implementation used.
                        
                        see https://postgresqlco.nf/doc/en/param/dynamic_shared_memory_type/
                      "%
                      | optional,
                    effective_cache_size
                      | String
                      | doc m%"
                        Sets the planner's assumption about the total size of the data caches.
                        
                        Minimum: 1
                        
                        Maximum: 2147483647
                        
                        Tells the PostgreSQL query planner how much RAM is estimated to be available for caching data, in both shared_buffers and in the filesystem cache. This setting just helps the planner make good cost estimates; it does not actually allocate the memory.
                        
                        see https://postgresqlco.nf/doc/en/param/effective_cache_size/
                      "%
                      | optional,
                    effective_io_concurrency
                      | String
                      | doc m%"
                        Number of simultaneous requests that can be handled efficiently by the disk subsystem.
                        
                        Minimum: 0
                        
                        Maximum: 1000
                        
                        Set to the number of disks in your RAID array or number of I/O channels.
                        Available only for platforms with posix_fadvise support (i.e. Linux).  Currently only affects the execution of parallel bitmapscan, but might affect other I/O operations in future versions.
                        
                        see https://postgresqlco.nf/doc/en/param/effective_io_concurrency/
                      "%
                      | optional,
                    enable_async_append
                      | String
                      | doc m%"
                        Enables the planner's use of async append plans.
                        
                        see https://postgresqlco.nf/doc/en/param/enable_async_append/
                      "%
                      | optional,
                    enable_bitmapscan
                      | String
                      | doc m%"
                        Enables the planner's use of bitmap-scan plans.
                        
                        For interactive session use only when troubleshooting queries.
                        
                        see https://postgresqlco.nf/doc/en/param/enable_bitmapscan/
                      "%
                      | optional,
                    enable_gathermerge
                      | String
                      | doc m%"
                        Enables the planner's use of gather merge plans.
                        
                        see https://postgresqlco.nf/doc/en/param/enable_gathermerge/
                      "%
                      | optional,
                    enable_hashagg
                      | String
                      | doc m%"
                        Enables the planner's use of hashed aggregation plans.
                        
                        For interactive session use only when troubleshooting queries.
                        
                        see https://postgresqlco.nf/doc/en/param/enable_hashagg/
                      "%
                      | optional,
                    enable_hashjoin
                      | String
                      | doc m%"
                        Enables the planner's use of hash join plans.
                        
                        For interactive session use only when troubleshooting queries.
                        
                        see https://postgresqlco.nf/doc/en/param/enable_hashjoin/
                      "%
                      | optional,
                    enable_incremental_sort
                      | String
                      | doc m%"
                        Enables the planner's use of incremental sort steps.
                        
                        see https://postgresqlco.nf/doc/en/param/enable_incremental_sort/
                      "%
                      | optional,
                    enable_indexonlyscan
                      | String
                      | doc m%"
                        Enables the planner's use of index-only-scan plans.
                        
                        see https://postgresqlco.nf/doc/en/param/enable_indexonlyscan/
                      "%
                      | optional,
                    enable_indexscan
                      | String
                      | doc m%"
                        Enables the planner's use of index-scan plans.
                        
                        For interactive session use only when troubleshooting queries.
                        
                        see https://postgresqlco.nf/doc/en/param/enable_indexscan/
                      "%
                      | optional,
                    enable_material
                      | String
                      | doc m%"
                        Enables the planner's use of materialization.
                        
                        For interactive session use only when troubleshooting queries.
                        
                        see https://postgresqlco.nf/doc/en/param/enable_material/
                      "%
                      | optional,
                    enable_memoize
                      | String
                      | doc m%"
                        Enables the planner's use of memoization.
                        
                        see https://postgresqlco.nf/doc/en/param/enable_memoize/
                      "%
                      | optional,
                    enable_mergejoin
                      | String
                      | doc m%"
                        Enables the planner's use of merge join plans.
                        
                        For interactive session use only when troubleshooting queries.
                        
                        see https://postgresqlco.nf/doc/en/param/enable_mergejoin/
                      "%
                      | optional,
                    enable_nestloop
                      | String
                      | doc m%"
                        Enables the planner's use of nested-loop join plans.
                        
                        For interactive session use only when troubleshooting queries.
                        
                        see https://postgresqlco.nf/doc/en/param/enable_nestloop/
                      "%
                      | optional,
                    enable_parallel_append
                      | String
                      | doc m%"
                        Enables the planner's use of parallel append plans.
                        
                        see https://postgresqlco.nf/doc/en/param/enable_parallel_append/
                      "%
                      | optional,
                    enable_parallel_hash
                      | String
                      | doc m%"
                        Enables the planner's use of parallel hash plans.
                        
                        see https://postgresqlco.nf/doc/en/param/enable_parallel_hash/
                      "%
                      | optional,
                    enable_partition_pruning
                      | String
                      | doc m%"
                        Enables plan-time and execution-time partition pruning.
                        
                        see https://postgresqlco.nf/doc/en/param/enable_partition_pruning/
                      "%
                      | optional,
                    enable_partitionwise_aggregate
                      | String
                      | doc m%"
                        Enables partitionwise aggregation and grouping.
                        
                        see https://postgresqlco.nf/doc/en/param/enable_partitionwise_aggregate/
                      "%
                      | optional,
                    enable_partitionwise_join
                      | String
                      | doc m%"
                        Enables partitionwise join.
                        
                        see https://postgresqlco.nf/doc/en/param/enable_partitionwise_join/
                      "%
                      | optional,
                    enable_seqscan
                      | String
                      | doc m%"
                        Enables the planner's use of sequential-scan plans.
                        
                        For interactive session use only when troubleshooting queries.
                        
                        see https://postgresqlco.nf/doc/en/param/enable_seqscan/
                      "%
                      | optional,
                    enable_sort
                      | String
                      | doc m%"
                        Enables the planner's use of explicit sort steps.
                        
                        For interactive session use only when troubleshooting queries.
                        
                        see https://postgresqlco.nf/doc/en/param/enable_sort/
                      "%
                      | optional,
                    enable_tidscan
                      | String
                      | doc m%"
                        Enables the planner's use of TID scan plans.
                        
                        For interactive session use only when troubleshooting queries.
                        
                        see https://postgresqlco.nf/doc/en/param/enable_tidscan/
                      "%
                      | optional,
                    escape_string_warning
                      | String
                      | doc m%"
                        Warn about backslash escapes in ordinary string literals.
                        
                        Useful for providing warnings for interpreted-language applications which may be engaging in unsafe string escape behavior.
                        Unless you are currently porting or upgrading such an application, though, these warnings are not useful and should be turned off.
                        
                        see https://postgresqlco.nf/doc/en/param/escape_string_warning/
                      "%
                      | optional,
                    event_source
                      | String
                      | doc m%"
                        Sets the application name used to identify PostgreSQL messages in the event log.
                        
                        Should be "postgres-1" or something else identifiable as this specific postmaster.
                        
                        see https://postgresqlco.nf/doc/en/param/event_source/
                      "%
                      | optional,
                    exit_on_error
                      | String
                      | doc m%"
                        Terminate session on any error.
                        
                        see https://postgresqlco.nf/doc/en/param/exit_on_error/
                      "%
                      | optional,
                    extension_destdir
                      | String
                      | doc m%"
                        Path to prepend for extension loading
                        
                        see https://postgresqlco.nf/doc/en/param/extension_destdir/
                      "%
                      | optional,
                    external_pid_file
                      | String
                      | doc m%"
                        Writes the postmaster PID to the specified file.
                        
                        Creates an extra copy of the process ID.
                        Used for server administration tools which need a copy of the process ID in a specific directory.
                        
                        see https://postgresqlco.nf/doc/en/param/external_pid_file/
                      "%
                      | optional,
                    extra_float_digits
                      | String
                      | doc m%"
                        Sets the number of digits displayed for floating-point values.
                        
                        Minimum: -15
                        
                        Maximum: 3
                        
                        Only significant for applications which do a lot of float calculations, like scientific databases.
                        
                        see https://postgresqlco.nf/doc/en/param/extra_float_digits/
                      "%
                      | optional,
                    force_parallel_mode
                      | std.enum.TagOrString
                      | [| 'regress, 'on, 'off |]
                      | doc m%"
                        Forces use of parallel query facilities.
                        
                        see https://postgresqlco.nf/doc/en/param/force_parallel_mode/
                      "%
                      | optional,
                    from_collapse_limit
                      | String
                      | doc m%"
                        Sets the FROM-list size beyond which subqueries are not collapsed.
                        
                        Minimum: 1
                        
                        Maximum: 2147483647
                        
                        While it's probably true that newer CPUs could support higher collapse_limits, there's not much incremental benefit to just raising either collapse_limit to 10 or 11.
                        
                        see https://postgresqlco.nf/doc/en/param/from_collapse_limit/
                      "%
                      | optional,
                    fsync
                      | String
                      | doc m%"
                        Forces synchronization of updates to disk.
                        
                        Never turn off unless your data is entirely disposable.
                        Setting fsync=off is the equivalent of saying " don't care about my data, I can recreate the database from scratch if I have to...  If synch activity is a performance concern, see synchronous_commit.
                        
                        see https://postgresqlco.nf/doc/en/param/fsync/
                      "%
                      | optional,
                    full_page_writes
                      | String
                      | doc m%"
                        Writes full pages to WAL when first modified after a checkpoint.
                        
                        This is PostgreSQL's triple-check on transaction log integrity.
                        Leave it on unless you have enough in-depth knowledge of your filesystem and hardware to be certain that torn page writes of log segments are completely prevented.  Solaris/ZFS users claim to be able to turn this off, but that has not been destruction-tested.
                        
                        see https://postgresqlco.nf/doc/en/param/full_page_writes/
                      "%
                      | optional,
                    geqo
                      | String
                      | doc m%"
                        Enables genetic query optimization.
                        
                        see https://postgresqlco.nf/doc/en/param/geqo/
                      "%
                      | optional,
                    geqo_effort
                      | String
                      | doc m%"
                        GEQO: effort is used to set the default for other GEQO parameters.
                        
                        Minimum: 1
                        
                        Maximum: 10
                        
                        see https://postgresqlco.nf/doc/en/param/geqo_effort/
                      "%
                      | optional,
                    geqo_generations
                      | String
                      | doc m%"
                        GEQO: number of iterations of the algorithm.
                        
                        Minimum: 0
                        
                        Maximum: 2147483647
                        
                        see https://postgresqlco.nf/doc/en/param/geqo_generations/
                      "%
                      | optional,
                    geqo_pool_size
                      | String
                      | doc m%"
                        GEQO: number of individuals in the population.
                        
                        Minimum: 0
                        
                        Maximum: 2147483647
                        
                        see https://postgresqlco.nf/doc/en/param/geqo_pool_size/
                      "%
                      | optional,
                    geqo_seed
                      | String
                      | doc m%"
                        GEQO: seed for random path selection.
                        
                        Minimum: 0
                        
                        Maximum: 1
                        
                        If you set this manually, you can force repeatable execution paths for GEQO queries.
                        
                        see https://postgresqlco.nf/doc/en/param/geqo_seed/
                      "%
                      | optional,
                    geqo_selection_bias
                      | String
                      | doc m%"
                        GEQO: selective pressure within the population.
                        
                        Minimum: 1.5
                        
                        Maximum: 2
                        
                        see https://postgresqlco.nf/doc/en/param/geqo_selection_bias/
                      "%
                      | optional,
                    geqo_threshold
                      | String
                      | doc m%"
                        Sets the threshold of FROM items beyond which GEQO is used.
                        
                        Minimum: 2
                        
                        Maximum: 2147483647
                        
                        With new, faster processors it's tempting to raise the geqo_threshold a little, such as to 16 or 18.
                        Increasing more than that is unwise as query planning time goes up geometrically.
                        
                        see https://postgresqlco.nf/doc/en/param/geqo_threshold/
                      "%
                      | optional,
                    gin_fuzzy_search_limit
                      | String
                      | doc m%"
                        Sets the maximum allowed result for exact search by GIN.
                        
                        Minimum: 0
                        
                        Maximum: 2147483647
                        
                        If you're going to use GIN queries in a web application, it's generally useful to set a limit on how many rows can be returned from the index just for response times.
                        However, the maximum number needs to depend on your application; what do users see as an acceptable expression of "many"?
                        
                        see https://postgresqlco.nf/doc/en/param/gin_fuzzy_search_limit/
                      "%
                      | optional,
                    gin_pending_list_limit
                      | String
                      | doc m%"
                        Sets the maximum size of the pending list for GIN index.
                        
                        Minimum: 64
                        
                        Maximum: 2147483647
                        
                        Unless you have a lot of GIN indexed data and have time to test the performance of fastupdate.
                        Even then, it's probably better to set it on individual indexes.
                        
                        see https://postgresqlco.nf/doc/en/param/gin_pending_list_limit/
                      "%
                      | optional,
                    hash_mem_multiplier
                      | String
                      | doc m%"
                        Multiple of work_mem to use for hash tables.
                        
                        Minimum: 1
                        
                        Maximum: 1000
                        
                        see https://postgresqlco.nf/doc/en/param/hash_mem_multiplier/
                      "%
                      | optional,
                    hba_file
                      | String
                      | doc m%"
                        Sets the server's "hba" configuration file.
                        
                        Allows you to move the pg_hba file to a sysadmin-specified location.
                        
                        see https://postgresqlco.nf/doc/en/param/hba_file/
                      "%
                      | optional,
                    hot_standby
                      | String
                      | doc m%"
                        Allows connections and queries during recovery.
                        
                        Set to "on", unless you want to specifically prohibit people from running queries on a standby server.
                        
                        see https://postgresqlco.nf/doc/en/param/hot_standby/
                      "%
                      | optional,
                    hot_standby_feedback
                      | String
                      | doc m%"
                        Allows feedback from a hot standby to the primary that will avoid query conflicts.
                        
                        Helps avoid query cancel on the replicas in most cases.
                        Turn it off for a replica which does long-running reports and is allowed to lag.
                        
                        see https://postgresqlco.nf/doc/en/param/hot_standby_feedback/
                      "%
                      | optional,
                    huge_page_size
                      | String
                      | doc m%"
                        The size of huge page that should be requested.
                        
                        Minimum: 0
                        
                        Maximum: 2147483647
                        
                        see https://postgresqlco.nf/doc/en/param/huge_page_size/
                      "%
                      | optional,
                    huge_pages
                      | std.enum.TagOrString
                      | [| 'try, 'on, 'off |]
                      | doc m%"
                        Use of huge pages on Linux or Windows.
                        
                        However, for small systems (< 2GB of RAM) may be beneficial to set to "off".
                        
                        see https://postgresqlco.nf/doc/en/param/huge_pages/
                      "%
                      | optional,
                    ident_file
                      | String
                      | doc m%"
                        Sets the server's "ident" configuration file.
                        
                        Allows you to move the pg_ident file to a sysadmin-specified location.
                        
                        see https://postgresqlco.nf/doc/en/param/ident_file/
                      "%
                      | optional,
                    idle_in_transaction_session_timeout
                      | String
                      | doc m%"
                        Sets the maximum allowed idle time between queries, when in a transaction.
                        
                        Minimum: 0
                        
                        Maximum: 2147483647
                        
                        Set to 1 hour maximum, or as low as 1 minute if you know your query load well.
                        Idle transactions are bad news.
                        
                        see https://postgresqlco.nf/doc/en/param/idle_in_transaction_session_timeout/
                      "%
                      | optional,
                    idle_session_timeout
                      | String
                      | doc m%"
                        Sets the maximum allowed idle time between queries, when not in a transaction.
                        
                        Minimum: 0
                        
                        Maximum: 2147483647
                        
                        see https://postgresqlco.nf/doc/en/param/idle_session_timeout/
                      "%
                      | optional,
                    ignore_checksum_failure
                      | String
                      | doc m%"
                        Continues processing after a checksum failure.
                        
                        For rescuing a corrupt DB
                        
                        see https://postgresqlco.nf/doc/en/param/ignore_checksum_failure/
                      "%
                      | optional,
                    ignore_invalid_pages
                      | String
                      | doc m%"
                        Continues recovery after an invalid pages failure.
                        
                        see https://postgresqlco.nf/doc/en/param/ignore_invalid_pages/
                      "%
                      | optional,
                    ignore_system_indexes
                      | String
                      | doc m%"
                        Disables reading from system indexes.
                        
                        Useful for salvaging data from a corrupted database.
                        
                        see https://postgresqlco.nf/doc/en/param/ignore_system_indexes/
                      "%
                      | optional,
                    in_hot_standby
                      | String
                      | doc m%"
                        Shows whether hot standby is currently active.
                        
                        see https://postgresqlco.nf/doc/en/param/in_hot_standby/
                      "%
                      | optional,
                    integer_datetimes
                      | String
                      | doc m%"
                        Shows whether datetimes are integer based.
                        
                        Informational: lets you know of non-standard installation or compile options.
                        
                        see https://postgresqlco.nf/doc/en/param/integer_datetimes/
                      "%
                      | optional,
                    jit
                      | String
                      | doc m%"
                        Allow JIT compilation.
                        
                        see https://postgresqlco.nf/doc/en/param/jit/
                      "%
                      | optional,
                    jit_above_cost
                      | String
                      | doc m%"
                        Perform JIT compilation if query is more expensive.
                        
                        Minimum: -1
                        
                        Maximum: 1.79769e+308
                        
                        see https://postgresqlco.nf/doc/en/param/jit_above_cost/
                      "%
                      | optional,
                    jit_debugging_support
                      | String
                      | doc m%"
                        Register JIT-compiled functions with debugger.
                        
                        see https://postgresqlco.nf/doc/en/param/jit_debugging_support/
                      "%
                      | optional,
                    jit_dump_bitcode
                      | String
                      | doc m%"
                        Write out LLVM bitcode to facilitate JIT debugging.
                        
                        see https://postgresqlco.nf/doc/en/param/jit_dump_bitcode/
                      "%
                      | optional,
                    jit_expressions
                      | String
                      | doc m%"
                        Allow JIT compilation of expressions.
                        
                        see https://postgresqlco.nf/doc/en/param/jit_expressions/
                      "%
                      | optional,
                    jit_inline_above_cost
                      | String
                      | doc m%"
                        Perform JIT inlining if query is more expensive.
                        
                        Minimum: -1
                        
                        Maximum: 1.79769e+308
                        
                        see https://postgresqlco.nf/doc/en/param/jit_inline_above_cost/
                      "%
                      | optional,
                    jit_optimize_above_cost
                      | String
                      | doc m%"
                        Optimize JIT-compiled functions if query is more expensive.
                        
                        Minimum: -1
                        
                        Maximum: 1.79769e+308
                        
                        see https://postgresqlco.nf/doc/en/param/jit_optimize_above_cost/
                      "%
                      | optional,
                    jit_profiling_support
                      | String
                      | doc m%"
                        Register JIT-compiled functions with perf profiler.
                        
                        see https://postgresqlco.nf/doc/en/param/jit_profiling_support/
                      "%
                      | optional,
                    jit_provider
                      | String
                      | doc m%"
                        JIT provider to use.
                        
                        see https://postgresqlco.nf/doc/en/param/jit_provider/
                      "%
                      | optional,
                    jit_tuple_deforming
                      | String
                      | doc m%"
                        Allow JIT compilation of tuple deforming.
                        
                        see https://postgresqlco.nf/doc/en/param/jit_tuple_deforming/
                      "%
                      | optional,
                    join_collapse_limit
                      | String
                      | doc m%"
                        Sets the FROM-list size beyond which JOIN constructs are not flattened.
                        
                        Minimum: 1
                        
                        Maximum: 2147483647
                        
                        If for some reason you wanted to explicitly declare the join order for all of your queries, you could set this to 1.
                        That is not recommended, though.
                        
                        see https://postgresqlco.nf/doc/en/param/join_collapse_limit/
                      "%
                      | optional,
                    krb_caseins_users
                      | String
                      | doc m%"
                        Sets whether Kerberos and GSSAPI user names should be treated as case-insensitive.
                        
                        Speak with your sysadmin or network security about how to set the various kerberos settings to match your local kerberos setup.
                        Kerberos support must be compiled in to PostgreSQL, and set in pg_hba.conf.
                        
                        see https://postgresqlco.nf/doc/en/param/krb_caseins_users/
                      "%
                      | optional,
                    krb_server_keyfile
                      | String
                      | doc m%"
                        Sets the location of the Kerberos server key file.
                        
                        see https://postgresqlco.nf/doc/en/param/krb_server_keyfile/
                      "%
                      | optional,
                    lc_collate
                      | String
                      | doc m%"
                        Shows the collation order locale.
                        
                        Set at initdb time.
                        Displayed for information only.
                        
                        see https://postgresqlco.nf/doc/en/param/lc_collate/
                      "%
                      | optional,
                    lc_ctype
                      | String
                      | doc m%"
                        Shows the character classification and case conversion locale.
                        
                        Set at initdb time.
                        Displayed for information only.
                        
                        see https://postgresqlco.nf/doc/en/param/lc_ctype/
                      "%
                      | optional,
                    lc_messages
                      | String
                      | doc m%"
                        Sets the language in which messages are displayed.
                        
                        see https://postgresqlco.nf/doc/en/param/lc_messages/
                      "%
                      | optional,
                    lc_monetary
                      | String
                      | doc m%"
                        Sets the locale for formatting monetary amounts.
                        
                        see https://postgresqlco.nf/doc/en/param/lc_monetary/
                      "%
                      | optional,
                    lc_numeric
                      | String
                      | doc m%"
                        Sets the locale for formatting numbers.
                        
                        see https://postgresqlco.nf/doc/en/param/lc_numeric/
                      "%
                      | optional,
                    lc_time
                      | String
                      | doc m%"
                        Sets the locale for formatting date and time values.
                        
                        see https://postgresqlco.nf/doc/en/param/lc_time/
                      "%
                      | optional,
                    listen_addresses
                      | String
                      | doc m%"
                        Sets the host name or IP address(es) to listen to.
                        
                        Set your listen_address as restrictively as possible; '*' should only be used for development machines
                        
                        see https://postgresqlco.nf/doc/en/param/listen_addresses/
                      "%
                      | optional,
                    lo_compat_privileges
                      | String
                      | doc m%"
                        Enables backward compatibility mode for privilege checks on large objects.
                        
                        see https://postgresqlco.nf/doc/en/param/lo_compat_privileges/
                      "%
                      | optional,
                    local_preload_libraries
                      | String
                      | doc m%"
                        Lists unprivileged shared libraries to preload into each backend.
                        
                        This is largely a convenience setting, automatically loading libraries listed without needing an explicit load command.
                        Has no effect on performance.
                        
                        see https://postgresqlco.nf/doc/en/param/local_preload_libraries/
                      "%
                      | optional,
                    lock_timeout
                      | String
                      | doc m%"
                        Sets the maximum allowed duration of any wait for a lock.
                        
                        Minimum: 0
                        
                        Maximum: 2147483647
                        
                        ... but consider setting this per application or per query for any explicit locking attempts.
                        
                        see https://postgresqlco.nf/doc/en/param/lock_timeout/
                      "%
                      | optional,
                    log_autovacuum_min_duration
                      | String
                      | doc m%"
                        Sets the minimum execution time above which autovacuum actions will be logged.
                        
                        Minimum: -1
                        
                        Maximum: 2147483647
                        
                        Logs all autovacuum actions which take more than the specified time.
                        Useful for figuring out if autovacuum is bogging down your system or blocking.
                        
                        see https://postgresqlco.nf/doc/en/param/log_autovacuum_min_duration/
                      "%
                      | optional,
                    log_checkpoints
                      | String
                      | doc m%"
                        Logs each checkpoint.
                        
                        When doing performance analysis, it's often a good idea to turn on most of the logging options and log them to a CSVlog.
                        
                        
                        see https://postgresqlco.nf/doc/en/param/log_checkpoints/
                      "%
                      | optional,
                    log_connections
                      | String
                      | doc m%"
                        Logs each successful connection.
                        
                        Useful for performance analysis.
                        
                        see https://postgresqlco.nf/doc/en/param/log_connections/
                      "%
                      | optional,
                    log_destination
                      | String
                      | doc m%"
                        Sets the destination for server log output.
                        
                        Your choice of log destination depends on your system administration plans and the status of your server.
                        "syslog" or "eventlog" (Windows) are good choices for most development servers, because they can support centralized log monitors.  For development and testing, however, "csvlog" is probably the most useful, as it allows you to run queries against the log contents.
                        
                        see https://postgresqlco.nf/doc/en/param/log_destination/
                      "%
                      | optional,
                    log_directory
                      | String
                      | doc m%"
                        Sets the destination directory for log files.
                        
                        If you are having PostgreSQL keep its own activity logs on a production server, it's probably a good idea to locate them on separate storage from the database and transaction log.
                        
                        see https://postgresqlco.nf/doc/en/param/log_directory/
                      "%
                      | optional,
                    log_disconnections
                      | String
                      | doc m%"
                        Logs end of a session, including duration.
                        
                        Useful for performance analysis.
                        
                        see https://postgresqlco.nf/doc/en/param/log_disconnections/
                      "%
                      | optional,
                    log_duration
                      | String
                      | doc m%"
                        Logs the duration of each completed SQL statement.
                        
                        Useful for performance analysis.
                        
                        see https://postgresqlco.nf/doc/en/param/log_duration/
                      "%
                      | optional,
                    log_error_verbosity
                      | std.enum.TagOrString
                      | [| 'verbose, '"default", 'terse |]
                      | doc m%"
                        Sets the verbosity of logged messages.
                        
                        Unless doing intensive debugging.
                        Alternately, set to TERSE if managing log volume is becoming a problem.
                        
                        see https://postgresqlco.nf/doc/en/param/log_error_verbosity/
                      "%
                      | optional,
                    log_executor_stats
                      | String
                      | doc m%"
                        Writes executor performance statistics to the server log.
                        
                        Used for profiling the query executor.
                        
                        see https://postgresqlco.nf/doc/en/param/log_executor_stats/
                      "%
                      | optional,
                    log_file_mode
                      | String
                      | doc m%"
                        Sets the file permissions for log files.
                        
                        Minimum: 0
                        
                        Maximum: 511
                        
                        ... unless you need to share the log with Postgres' unix group, in which case set it to 660.
                        
                        see https://postgresqlco.nf/doc/en/param/log_file_mode/
                      "%
                      | optional,
                    log_filename
                      | String
                      | doc m%"
                        Sets the file name pattern for log files.
                        
                        If you want your logs to rotate automatically without needing a cron job to delete old logs, try naming them after the days of the week or the month so they overwrite automatically (i.e. 'postgresql-%a' or 'postgresql-%d').
                        This also helps with log analysis.
                        
                        see https://postgresqlco.nf/doc/en/param/log_filename/
                      "%
                      | optional,
                    log_hostname
                      | String
                      | doc m%"
                        Logs the host name in the connection logs.
                        
                        As this setting requires resolution of each connecting hostname, it's pretty much always too expensive to have on, even when troubleshooting.
                        
                        see https://postgresqlco.nf/doc/en/param/log_hostname/
                      "%
                      | optional,
                    log_line_prefix
                      | String
                      | doc m%%"
                        Controls information prefixed to each log line.
                        
                        Primarily useful for providing extra information when logging to syslog or eventlog.
                        Try "%h:%d:%u:%c  %t" for this.
                        
                        see https://postgresqlco.nf/doc/en/param/log_line_prefix/
                      "%%
                      | optional,
                    log_lock_waits
                      | String
                      | doc m%"
                        Logs long lock waits.
                        
                        Useful for performance analysis.
                        
                        see https://postgresqlco.nf/doc/en/param/log_lock_waits/
                      "%
                      | optional,
                    log_min_duration_sample
                      | String
                      | doc m%"
                        Sets the minimum execution time above which a sample of statements will be logged. Sampling is determined by log_statement_sample_rate.
                        
                        Minimum: -1
                        
                        Maximum: 2147483647
                        
                        see https://postgresqlco.nf/doc/en/param/log_min_duration_sample/
                      "%
                      | optional,
                    log_min_duration_statement
                      | String
                      | doc m%"
                        Sets the minimum execution time above which all statements will be logged.
                        
                        Minimum: -1
                        
                        Maximum: 2147483647
                        
                        Possibly the most generally useful log setting for troubleshooting performance, especially on a production server.
                        Records only long-running queries for analysis; since these are often your "problem" queries, these are the most useful ones to know about.  Used for pg_fouine.
                        
                        see https://postgresqlco.nf/doc/en/param/log_min_duration_statement/
                      "%
                      | optional,
                    log_min_error_statement
                      | std.enum.TagOrString
                      | [|
                        'panic,
                        'fatal,
                        'log,
                        'error,
                        'warning,
                        'notice,
                        'info,
                        'debug1,
                        'debug2,
                        'debug3,
                        'debug4,
                        'debug5
                      |]
                      | doc m%"
                        Causes all statements generating error at or above this level to be logged.
                        
                        Logs SQL statements which error.
                        If you have an application which routinely generates errors and can't fix it, then raise the level to FATAL or PANIC.
                        
                        see https://postgresqlco.nf/doc/en/param/log_min_error_statement/
                      "%
                      | optional,
                    log_min_messages
                      | std.enum.TagOrString
                      | [|
                        'panic,
                        'fatal,
                        'log,
                        'error,
                        'warning,
                        'notice,
                        'info,
                        'debug1,
                        'debug2,
                        'debug3,
                        'debug4,
                        'debug5
                      |]
                      | doc m%"
                        Sets the message levels that are logged.
                        
                        Unless doing serious troubleshooting.
                        If you want to output parses and plans, set to DEBUG1.
                        
                        see https://postgresqlco.nf/doc/en/param/log_min_messages/
                      "%
                      | optional,
                    log_parameter_max_length
                      | String
                      | doc m%"
                        When logging statements, limit logged parameter values to first N bytes.
                        
                        Minimum: -1
                        
                        Maximum: 1073741823
                        
                        see https://postgresqlco.nf/doc/en/param/log_parameter_max_length/
                      "%
                      | optional,
                    log_parameter_max_length_on_error
                      | String
                      | doc m%"
                        When reporting an error, limit logged parameter values to first N bytes.
                        
                        Minimum: -1
                        
                        Maximum: 1073741823
                        
                        see https://postgresqlco.nf/doc/en/param/log_parameter_max_length_on_error/
                      "%
                      | optional,
                    log_parser_stats
                      | String
                      | doc m%"
                        Writes parser performance statistics to the server log.
                        
                        Used for profiling the query parser.
                        
                        see https://postgresqlco.nf/doc/en/param/log_parser_stats/
                      "%
                      | optional,
                    log_planner_stats
                      | String
                      | doc m%"
                        Writes planner performance statistics to the server log.
                        
                        Used for profiling the query planner.
                        
                        see https://postgresqlco.nf/doc/en/param/log_planner_stats/
                      "%
                      | optional,
                    log_recovery_conflict_waits
                      | String
                      | doc m%"
                        Logs standby recovery conflict waits.
                        
                        see https://postgresqlco.nf/doc/en/param/log_recovery_conflict_waits/
                      "%
                      | optional,
                    log_replication_commands
                      | String
                      | doc m%"
                        Logs each replication command.
                        
                        ... assuming you're monitoring replication status, which you should.
                        
                        see https://postgresqlco.nf/doc/en/param/log_replication_commands/
                      "%
                      | optional,
                    log_rotation_age
                      | String
                      | doc m%"
                        Automatic log file rotation will occur after N minutes.
                        
                        Minimum: 0
                        
                        Maximum: 35791394
                        
                        1d is generally good for production.
                        Set to 1h to rotate logs hourly when doing performance analysis.
                        
                        see https://postgresqlco.nf/doc/en/param/log_rotation_age/
                      "%
                      | optional,
                    log_rotation_size
                      | String
                      | doc m%"
                        Automatic log file rotation will occur after N kilobytes.
                        
                        Minimum: 0
                        
                        Maximum: 2097151
                        
                        Default is quite small if you have any extra logging turned on at all.
                        Increase to avoid the creation of additional log segments with hard-to-predict names.
                        
                        see https://postgresqlco.nf/doc/en/param/log_rotation_size/
                      "%
                      | optional,
                    log_statement
                      | std.enum.TagOrString
                      | [| 'all, 'mod, 'ddl, 'none |]
                      | doc m%"
                        Sets the type of statements logged.
                        
                        For exhaustive performance analysis on test systems, set to 'all'.
                        Most production setups will just want to use 'ddl' to make sure to record database-altering actions, but very secure setups may want to use 'mod' or even 'all'.  Can produce a lot of log volume.
                        
                        see https://postgresqlco.nf/doc/en/param/log_statement/
                      "%
                      | optional,
                    log_statement_sample_rate
                      | String
                      | doc m%"
                        Fraction of statements exceeding log_min_duration_sample to be logged.
                        
                        Minimum: 0
                        
                        Maximum: 1
                        
                        see https://postgresqlco.nf/doc/en/param/log_statement_sample_rate/
                      "%
                      | optional,
                    log_statement_stats
                      | String
                      | doc m%"
                        Writes cumulative performance statistics to the server log.
                        
                        Used for full query path profiling.
                        Exclusive of the other three options.
                        
                        see https://postgresqlco.nf/doc/en/param/log_statement_stats/
                      "%
                      | optional,
                    log_temp_files
                      | String
                      | doc m%"
                        Log the use of temporary files larger than this number of kilobytes.
                        
                        Minimum: -1
                        
                        Maximum: 2147483647
                        
                        This logger is used for troubleshooting sorts and other activities which are spilling to disk.
                        If you use it at all, it's probably good to set it a something low like 1kB so that you know each query that spilled to disk, since any disk spill at all causes a dramatic slowdown in the query.  Can be used to see if you need more work_mem, temp_mem or maintenance_work_mem.
                        
                        see https://postgresqlco.nf/doc/en/param/log_temp_files/
                      "%
                      | optional,
                    log_timezone
                      | String
                      | doc m%"
                        Sets the time zone to use in log messages.
                        
                        To avoid confusion, it's often useful to log to the timezone where the DBA or sysadmin lives.
                        
                        see https://postgresqlco.nf/doc/en/param/log_timezone/
                      "%
                      | optional,
                    log_transaction_sample_rate
                      | String
                      | doc m%"
                        Sets the fraction of transactions from which to log all statements.
                        
                        Minimum: 0
                        
                        Maximum: 1
                        
                        see https://postgresqlco.nf/doc/en/param/log_transaction_sample_rate/
                      "%
                      | optional,
                    log_truncate_on_rotation
                      | String
                      | doc m%"
                        Truncate existing log files of same name during log rotation.
                        
                        Set to "on" for production with a reusable logfile name to limit log accumulation if you don't have a sysadmin script to do so.
                        
                        see https://postgresqlco.nf/doc/en/param/log_truncate_on_rotation/
                      "%
                      | optional,
                    logging_collector
                      | String
                      | doc m%"
                        Start a subprocess to capture stderr output and/or csvlogs into log files.
                        
                        Only relevant for "csvlog" and "stderr".
                        
                        see https://postgresqlco.nf/doc/en/param/logging_collector/
                      "%
                      | optional,
                    logical_decoding_work_mem
                      | String
                      | doc m%"
                        Sets the maximum memory to be used for logical decoding.
                        
                        Minimum: 64
                        
                        Maximum: 2147483647
                        
                        see https://postgresqlco.nf/doc/en/param/logical_decoding_work_mem/
                      "%
                      | optional,
                    maintenance_io_concurrency
                      | String
                      | doc m%"
                        A variant of effective_io_concurrency that is used for maintenance work.
                        
                        Minimum: 0
                        
                        Maximum: 1000
                        
                        see https://postgresqlco.nf/doc/en/param/maintenance_io_concurrency/
                      "%
                      | optional,
                    maintenance_work_mem
                      | String
                      | doc m%"
                        Sets the maximum memory to be used for maintenance operations.
                        
                        Minimum: 1024
                        
                        Maximum: 2147483647
                        
                        Sets the limit for the amount that autovacuum, manual vacuum, bulk index build and other maintenance routines are permitted to use.
                        Setting it to a moderately high value will increase the efficiency of vacuum and other operations.  Applications which perform large ETL operations may need to allocate up to 1/4 of RAM to support large bulk vacuums.  Note that each autovacuum worker may use this much, so if using multiple autovacuum workers you may want to decrease this value so that they can't claim over 1/8 or 1/4 of available RAM.
                        
                        see https://postgresqlco.nf/doc/en/param/maintenance_work_mem/
                      "%
                      | optional,
                    max_connections
                      | String
                      | doc m%"
                        Sets the maximum number of concurrent connections.
                        
                        Minimum: 1
                        
                        Maximum: 262143
                        
                        Should be set to the maximum number of connections which you expect to need at peak load.
                        Note that each connection uses shared_buffer memory, as well as additional non-shared memory, so be careful not to run the system out of memory.  In general, if you need more than 200 connections, you should probably be making more use of connection pooling.
                        
                        see https://postgresqlco.nf/doc/en/param/max_connections/
                      "%
                      | optional,
                    max_files_per_process
                      | String
                      | doc m%"
                        Sets the maximum number of simultaneously open files for each server process.
                        
                        Minimum: 64
                        
                        Maximum: 2147483647
                        
                        If you have a large database with many partitioned tables, you may want to increase this.
                        Note that you will probably have to increase ulimits for the postgres user or system as well.
                        
                        see https://postgresqlco.nf/doc/en/param/max_files_per_process/
                      "%
                      | optional,
                    max_function_args
                      | String
                      | doc m%"
                        Shows the maximum number of function arguments.
                        
                        Minimum: 100
                        
                        Maximum: 100
                        
                        Informational: lets you know of non-standard installation or compile options.
                        
                        see https://postgresqlco.nf/doc/en/param/max_function_args/
                      "%
                      | optional,
                    max_identifier_length
                      | String
                      | doc m%"
                        Shows the maximum identifier length.
                        
                        Minimum: 63
                        
                        Maximum: 63
                        
                        Informational: lets you know of non-standard installation or compile options.
                        
                        see https://postgresqlco.nf/doc/en/param/max_identifier_length/
                      "%
                      | optional,
                    max_index_keys
                      | String
                      | doc m%"
                        Shows the maximum number of index keys.
                        
                        Minimum: 32
                        
                        Maximum: 32
                        
                        Informational: lets you know of non-standard installation or compile options.
                        
                        see https://postgresqlco.nf/doc/en/param/max_index_keys/
                      "%
                      | optional,
                    max_locks_per_transaction
                      | String
                      | doc m%"
                        Sets the maximum number of locks per transaction.
                        
                        Minimum: 10
                        
                        Maximum: 2147483647
                        
                        Some databases with very complex schema or with many long-running tranactions need a higher amount.
                        This is rare though.
                        
                        see https://postgresqlco.nf/doc/en/param/max_locks_per_transaction/
                      "%
                      | optional,
                    max_logical_replication_workers
                      | String
                      | doc m%"
                        Maximum number of logical replication worker processes.
                        
                        Minimum: 0
                        
                        Maximum: 262143
                        
                        ... unless logical replication is falling behind and the replica isn't handling other traffic
                        
                        see https://postgresqlco.nf/doc/en/param/max_logical_replication_workers/
                      "%
                      | optional,
                    max_parallel_maintenance_workers
                      | String
                      | doc m%"
                        Sets the maximum number of parallel processes per maintenance operation.
                        
                        Minimum: 0
                        
                        Maximum: 1024
                        
                        see https://postgresqlco.nf/doc/en/param/max_parallel_maintenance_workers/
                      "%
                      | optional,
                    max_parallel_workers
                      | String
                      | doc m%"
                        Sets the maximum number of parallel workers that can be active at one time.
                        
                        Minimum: 0
                        
                        Maximum: 1024
                        
                        ...
                        if you think you can benefit from parallel query, and even cores/1 for DW systems.
                        
                        see https://postgresqlco.nf/doc/en/param/max_parallel_workers/
                      "%
                      | optional,
                    max_parallel_workers_per_gather
                      | String
                      | doc m%"
                        Sets the maximum number of parallel processes per executor node.
                        
                        Minimum: 0
                        
                        Maximum: 1024
                        
                        Increase if you plan to use parallel query to 4 or 8, depending on cores/concurrent sessions. 
                        
                        see https://postgresqlco.nf/doc/en/param/max_parallel_workers_per_gather/
                      "%
                      | optional,
                    max_pred_locks_per_page
                      | String
                      | doc m%"
                        Sets the maximum number of predicate-locked tuples per page.
                        
                        Minimum: 0
                        
                        Maximum: 2147483647
                        
                        see https://postgresqlco.nf/doc/en/param/max_pred_locks_per_page/
                      "%
                      | optional,
                    max_pred_locks_per_relation
                      | String
                      | doc m%"
                        Sets the maximum number of predicate-locked pages and tuples per relation.
                        
                        Minimum: -2147483648
                        
                        Maximum: 2147483647
                        
                        see https://postgresqlco.nf/doc/en/param/max_pred_locks_per_relation/
                      "%
                      | optional,
                    max_pred_locks_per_transaction
                      | String
                      | doc m%"
                        Sets the maximum number of predicate locks per transaction.
                        
                        Minimum: 10
                        
                        Maximum: 2147483647
                        
                        Raise if you have a lot of tables and are seeing some transactions fail, but modestly as a larger transaction table is expensive.
                        
                        see https://postgresqlco.nf/doc/en/param/max_pred_locks_per_transaction/
                      "%
                      | optional,
                    max_prepared_transactions
                      | String
                      | doc m%"
                        Sets the maximum number of simultaneously prepared transactions.
                        
                        Minimum: 0
                        
                        Maximum: 262143
                        
                        Most applications do not use XA prepared transactions, so should set this parameter to 0.
                        If you do require prepared transactions, you should set this equal to max_connections to avoid blocking.  May require increasing kernel memory parameters.
                        
                        see https://postgresqlco.nf/doc/en/param/max_prepared_transactions/
                      "%
                      | optional,
                    max_replication_slots
                      | String
                      | doc m%"
                        Sets the maximum number of simultaneously defined replication slots.
                        
                        Minimum: 0
                        
                        Maximum: 262143
                        
                        Set to twice as many replicas as you ever expect to have.
                        
                        see https://postgresqlco.nf/doc/en/param/max_replication_slots/
                      "%
                      | optional,
                    max_slot_wal_keep_size
                      | String
                      | doc m%"
                        Sets the maximum WAL size that can be reserved by replication slots.
                        
                        Minimum: -1
                        
                        Maximum: 2147483647
                        
                        see https://postgresqlco.nf/doc/en/param/max_slot_wal_keep_size/
                      "%
                      | optional,
                    max_stack_depth
                      | String
                      | doc m%"
                        Sets the maximum stack depth, in kilobytes.
                        
                        Minimum: 100
                        
                        Maximum: 2147483647
                        
                        Increase this if you have experienced the relevant error.
                        
                        see https://postgresqlco.nf/doc/en/param/max_stack_depth/
                      "%
                      | optional,
                    max_standby_archive_delay
                      | String
                      | doc m%"
                        Sets the maximum delay before canceling queries when a hot standby server is processing archived WAL data.
                        
                        Minimum: -1
                        
                        Maximum: 2147483647
                        
                        If you are replicating primarily for failover, set this to a very low value (like 0) in order to keep the standby as up to date as possible.
                        If this standby is running queries as its primary role, set to the length of time of the longest-running query you want to allow.
                        
                        see https://postgresqlco.nf/doc/en/param/max_standby_archive_delay/
                      "%
                      | optional,
                    max_standby_streaming_delay
                      | String
                      | doc m%"
                        Sets the maximum delay before canceling queries when a hot standby server is processing streamed WAL data.
                        
                        Minimum: -1
                        
                        Maximum: 2147483647
                        
                        If you are replicating primarily for failover, set this to a very low value (like 0) in order to keep the standby as up to date as possible.
                        If this standby is running queries as its primary role, set to the length of time of the longest-running query you want to allow.
                        
                        see https://postgresqlco.nf/doc/en/param/max_standby_streaming_delay/
                      "%
                      | optional,
                    max_sync_workers_per_subscription
                      | String
                      | doc m%"
                        Maximum number of table synchronization workers per subscription.
                        
                        Minimum: 0
                        
                        Maximum: 262143
                        
                        Consider raising to cores/2 when initially synchronizing logical replication for a new replica.
                        
                        see https://postgresqlco.nf/doc/en/param/max_sync_workers_per_subscription/
                      "%
                      | optional,
                    max_wal_senders
                      | String
                      | doc m%"
                        Sets the maximum number of simultaneously running WAL sender processes.
                        
                        Minimum: 0
                        
                        Maximum: 262143
                        
                        If you are replicating, you want to set this to the maximum number of standby servers you might possibly have.
                        Performance impact when set above zero, but no additional penalty for setting it higher.
                        
                        see https://postgresqlco.nf/doc/en/param/max_wal_senders/
                      "%
                      | optional,
                    max_wal_size
                      | String
                      | doc m%"
                        Sets the WAL size that triggers a checkpoint.
                        
                        Minimum: 2
                        
                        Maximum: 2147483647
                        
                        ... except for databases that write more than 1GB/hour of data, in which case increase the size of the log so that it's at least an hour worth of logs
                        
                        see https://postgresqlco.nf/doc/en/param/max_wal_size/
                      "%
                      | optional,
                    max_worker_processes
                      | String
                      | doc m%"
                        Maximum number of concurrent worker processes.
                        
                        Minimum: 0
                        
                        Maximum: 262143
                        
                        Increase to max_parallel_workers + other workers, such as workers for logical replication and custom background workers.
                        Not more than your number of cores, though.
                        
                        see https://postgresqlco.nf/doc/en/param/max_worker_processes/
                      "%
                      | optional,
                    min_dynamic_shared_memory
                      | String
                      | doc m%"
                        Amount of dynamic shared memory reserved at startup.
                        
                        Minimum: 0
                        
                        Maximum: 2147483647
                        
                        see https://postgresqlco.nf/doc/en/param/min_dynamic_shared_memory/
                      "%
                      | optional,
                    min_parallel_index_scan_size
                      | String
                      | doc m%"
                        Sets the minimum amount of index data for a parallel scan.
                        
                        Minimum: 0
                        
                        Maximum: 715827882
                        
                        see https://postgresqlco.nf/doc/en/param/min_parallel_index_scan_size/
                      "%
                      | optional,
                    min_parallel_table_scan_size
                      | String
                      | doc m%"
                        Sets the minimum amount of table data for a parallel scan.
                        
                        Minimum: 0
                        
                        Maximum: 715827882
                        
                        ... , unless doing IoT or a read-only database.
                        Raise to 100MB or so if your traffic on the database is very bursty, to prevent the WAL from shrinking too much.
                        
                        see https://postgresqlco.nf/doc/en/param/min_parallel_table_scan_size/
                      "%
                      | optional,
                    min_wal_size
                      | String
                      | doc m%"
                        Sets the minimum size to shrink the WAL to.
                        
                        Minimum: 2
                        
                        Maximum: 2147483647
                        
                        see https://postgresqlco.nf/doc/en/param/min_wal_size/
                      "%
                      | optional,
                    old_snapshot_threshold
                      | String
                      | doc m%"
                        Time before a snapshot is too old to read pages changed after the snapshot was taken.
                        
                        Minimum: -1
                        
                        Maximum: 86400
                        
                        ... or the length of the longest transaction you expect to run + 1 hour.
                        
                        see https://postgresqlco.nf/doc/en/param/old_snapshot_threshold/
                      "%
                      | optional,
                    parallel_leader_participation
                      | String
                      | doc m%"
                        Controls whether Gather and Gather Merge also run subplans.
                        
                        see https://postgresqlco.nf/doc/en/param/parallel_leader_participation/
                      "%
                      | optional,
                    parallel_setup_cost
                      | String
                      | doc m%"
                        Sets the planner's estimate of the cost of starting up worker processes for parallel query.
                        
                        Minimum: 0
                        
                        Maximum: 1.79769e+308
                        
                        see https://postgresqlco.nf/doc/en/param/parallel_setup_cost/
                      "%
                      | optional,
                    parallel_tuple_cost
                      | String
                      | doc m%"
                        Sets the planner's estimate of the cost of passing each tuple (row) from worker to leader backend.
                        
                        Minimum: 0
                        
                        Maximum: 1.79769e+308
                        
                        see https://postgresqlco.nf/doc/en/param/parallel_tuple_cost/
                      "%
                      | optional,
                    password_encryption
                      | std.enum.TagOrString
                      | [| 'scram-sha-256, 'md5 |]
                      | doc m%"
                        Chooses the algorithm for encrypting passwords.
                        
                        There is no good reason for this to be set to "off".
                        
                        see https://postgresqlco.nf/doc/en/param/password_encryption/
                      "%
                      | optional,
                    "pg_stat_statements.max"
                      | String
                      | doc m%"
                        Sets the maximum number of statements tracked by pg_stat_statements.
                        
                        Minimum: 100
                        
                        Maximum: 1073741823
                        
                        see https://postgresqlco.nf/doc/en/param/pg_stat_statements.max/
                      "%
                      | optional,
                    "pg_stat_statements.save"
                      | String
                      | doc m%"
                        Save pg_stat_statements statistics across server shutdowns.
                        
                        see https://postgresqlco.nf/doc/en/param/pg_stat_statements.save/
                      "%
                      | optional,
                    "pg_stat_statements.track"
                      | std.enum.TagOrString
                      | [| 'all, 'top, 'none |]
                      | doc m%"
                        Selects which statements are tracked by pg_stat_statements.
                        
                        see https://postgresqlco.nf/doc/en/param/pg_stat_statements.track/
                      "%
                      | optional,
                    "pg_stat_statements.track_planning"
                      | String
                      | doc m%"
                        Selects whether planning duration is tracked by pg_stat_statements.
                        
                        see https://postgresqlco.nf/doc/en/param/pg_stat_statements.track_planning/
                      "%
                      | optional,
                    "pg_stat_statements.track_utility"
                      | String
                      | doc m%"
                        Selects whether utility commands are tracked by pg_stat_statements.
                        
                        see https://postgresqlco.nf/doc/en/param/pg_stat_statements.track_utility/
                      "%
                      | optional,
                    plan_cache_mode
                      | std.enum.TagOrString
                      | [| 'force_custom_plan, 'force_generic_plan, 'auto |]
                      | doc m%"
                        Controls the planner's selection of custom or generic plan.
                        
                        see https://postgresqlco.nf/doc/en/param/plan_cache_mode/
                      "%
                      | optional,
                    port
                      | String
                      | doc m%"
                        Sets the TCP port the server listens on.
                        
                        Minimum: 1
                        
                        Maximum: 65535
                        
                        Alternate ports are primarily useful for running several versions, or instances, of PostgreSQL on one machine.
                        However, if you're using an alternate port to support several versions, it's often better to compile in the port number.
                        
                        see https://postgresqlco.nf/doc/en/param/port/
                      "%
                      | optional,
                    post_auth_delay
                      | String
                      | doc m%"
                        Waits N seconds on connection startup after authentication.
                        
                        Minimum: 0
                        
                        Maximum: 2147
                        
                        Primarily used for attaching debuggers to sessions.
                        
                        see https://postgresqlco.nf/doc/en/param/post_auth_delay/
                      "%
                      | optional,
                    pre_auth_delay
                      | String
                      | doc m%"
                        Waits N seconds on connection startup before authentication.
                        
                        Minimum: 0
                        
                        Maximum: 60
                        
                        Primarily used for attaching debuggers to sessions.
                        
                        see https://postgresqlco.nf/doc/en/param/pre_auth_delay/
                      "%
                      | optional,
                    primary_conninfo
                      | String
                      | doc m%"
                        Sets the connection string to be used to connect to the sending server.
                        
                        see https://postgresqlco.nf/doc/en/param/primary_conninfo/
                      "%
                      | optional,
                    primary_slot_name
                      | String
                      | doc m%"
                        Sets the name of the replication slot to use on the sending server.
                        
                        see https://postgresqlco.nf/doc/en/param/primary_slot_name/
                      "%
                      | optional,
                    promote_trigger_file
                      | String
                      | doc m%"
                        Specifies a file name whose presence ends recovery in the standby.
                        
                        see https://postgresqlco.nf/doc/en/param/promote_trigger_file/
                      "%
                      | optional,
                    quote_all_identifiers
                      | String
                      | doc m%"
                        When generating SQL fragments, quote all identifiers.
                        
                        see https://postgresqlco.nf/doc/en/param/quote_all_identifiers/
                      "%
                      | optional,
                    random_page_cost
                      | String
                      | doc m%"
                        Sets the planner's estimate of the cost of a nonsequentially fetched disk page.
                        
                        Minimum: 0
                        
                        Maximum: 1.79769e+308
                        
                        Sets the ratio of seek to scan time for your database storage.
                        Should not be altered unless you're using special storage (SSDs, high end SANs, etc.) where seek/scan ratios are actually different.  If you need the database to favor indexes more, tune effective_cache_size and some of the cpu_* costs instead.
                        
                        see https://postgresqlco.nf/doc/en/param/random_page_cost/
                      "%
                      | optional,
                    recovery_end_command
                      | String
                      | doc m%"
                        Sets the shell command that will be executed once at the end of recovery.
                        
                        see https://postgresqlco.nf/doc/en/param/recovery_end_command/
                      "%
                      | optional,
                    recovery_init_sync_method
                      | std.enum.TagOrString
                      | [| 'syncfs, 'fsync |]
                      | doc m%"
                        Sets the method for synchronizing the data directory before crash recovery.
                        
                        see https://postgresqlco.nf/doc/en/param/recovery_init_sync_method/
                      "%
                      | optional,
                    recovery_min_apply_delay
                      | String
                      | doc m%"
                        Sets the minimum delay for applying changes during recovery.
                        
                        Minimum: 0
                        
                        Maximum: 2147483647
                        
                        see https://postgresqlco.nf/doc/en/param/recovery_min_apply_delay/
                      "%
                      | optional,
                    recovery_target
                      | String
                      | doc m%"
                        Set to "immediate" to end recovery as soon as a consistent state is reached.
                        
                        see https://postgresqlco.nf/doc/en/param/recovery_target/
                      "%
                      | optional,
                    recovery_target_action
                      | std.enum.TagOrString
                      | [| 'shutdown, 'promote, 'pause |]
                      | doc m%"
                        Sets the action to perform upon reaching the recovery target.
                        
                        see https://postgresqlco.nf/doc/en/param/recovery_target_action/
                      "%
                      | optional,
                    recovery_target_inclusive
                      | String
                      | doc m%"
                        Sets whether to include or exclude transaction with recovery target.
                        
                        see https://postgresqlco.nf/doc/en/param/recovery_target_inclusive/
                      "%
                      | optional,
                    recovery_target_lsn
                      | String
                      | doc m%"
                        Sets the LSN of the write-ahead log location up to which recovery will proceed.
                        
                        see https://postgresqlco.nf/doc/en/param/recovery_target_lsn/
                      "%
                      | optional,
                    recovery_target_name
                      | String
                      | doc m%"
                        Sets the named restore point up to which recovery will proceed.
                        
                        see https://postgresqlco.nf/doc/en/param/recovery_target_name/
                      "%
                      | optional,
                    recovery_target_time
                      | String
                      | doc m%"
                        Sets the time stamp up to which recovery will proceed.
                        
                        see https://postgresqlco.nf/doc/en/param/recovery_target_time/
                      "%
                      | optional,
                    recovery_target_timeline
                      | String
                      | doc m%"
                        Specifies the timeline to recover into.
                        
                        see https://postgresqlco.nf/doc/en/param/recovery_target_timeline/
                      "%
                      | optional,
                    recovery_target_xid
                      | String
                      | doc m%"
                        Sets the transaction ID up to which recovery will proceed.
                        
                        see https://postgresqlco.nf/doc/en/param/recovery_target_xid/
                      "%
                      | optional,
                    remove_temp_files_after_crash
                      | String
                      | doc m%"
                        Remove temporary files after backend crash.
                        
                        see https://postgresqlco.nf/doc/en/param/remove_temp_files_after_crash/
                      "%
                      | optional,
                    restart_after_crash
                      | String
                      | doc m%"
                        Reinitialize server after backend crash.
                        
                        ...
                        unless deliberately running postgres in "ephemral" mode
                        
                        see https://postgresqlco.nf/doc/en/param/restart_after_crash/
                      "%
                      | optional,
                    restore_command
                      | String
                      | doc m%"
                        Sets the shell command that will be called to retrieve an archived WAL file.
                        
                        see https://postgresqlco.nf/doc/en/param/restore_command/
                      "%
                      | optional,
                    row_security
                      | String
                      | doc m%"
                        Enable row security.
                        
                        ...
                        except when testing row security policies.
                        
                        see https://postgresqlco.nf/doc/en/param/row_security/
                      "%
                      | optional,
                    search_path
                      | String
                      | doc m%"
                        Sets the schema search order for names that are not schema-qualified.
                        
                        Most DBAs either use the default or set search_path on a ROLE or database object basis.
                        The one reason to set it in postgresql.conf is if you are taking the security step of removing the special "public" schema in order to lock down your database.
                        
                        see https://postgresqlco.nf/doc/en/param/search_path/
                      "%
                      | optional,
                    segment_size
                      | String
                      | doc m%"
                        Shows the number of pages per disk file.
                        
                        Minimum: 131072
                        
                        Maximum: 131072
                        
                        Informational: lets you know of non-standard installation or compile options.
                        
                        see https://postgresqlco.nf/doc/en/param/segment_size/
                      "%
                      | optional,
                    seq_page_cost
                      | String
                      | doc m%"
                        Sets the planner's estimate of the cost of a sequentially fetched disk page.
                        
                        Minimum: 0
                        
                        Maximum: 1.79769e+308
                        
                        The main reason to modify seq_page_cost is to try to get planner costs to more-or-less indicate execution times in milleseconds.
                        All other costs change relative to this cost automatically.
                        
                        see https://postgresqlco.nf/doc/en/param/seq_page_cost/
                      "%
                      | optional,
                    server_encoding
                      | String
                      | doc m%"
                        Shows the server (database) character set encoding.
                        
                        Set at initdb time.
                        Displayed for information only.
                        
                        see https://postgresqlco.nf/doc/en/param/server_encoding/
                      "%
                      | optional,
                    server_version
                      | String
                      | doc m%"
                        Shows the server version.
                        
                        Informational: lets you know of non-standard installation or compile options.
                        
                        see https://postgresqlco.nf/doc/en/param/server_version/
                      "%
                      | optional,
                    server_version_num
                      | String
                      | doc m%"
                        Shows the server version as an integer.
                        
                        Minimum: 140009
                        
                        Maximum: 140009
                        
                        Informational: lets you know of non-standard installation or compile options.
                        
                        see https://postgresqlco.nf/doc/en/param/server_version_num/
                      "%
                      | optional,
                    session_preload_libraries
                      | String
                      | doc m%"
                        Lists shared libraries to preload into each backend.
                        
                        Special uses for debugging or for loading application-specific extensions.
                        
                        see https://postgresqlco.nf/doc/en/param/session_preload_libraries/
                      "%
                      | optional,
                    session_replication_role
                      | std.enum.TagOrString
                      | [| 'local, 'replica, 'origin |]
                      | doc m%"
                        Sets the session's behavior for triggers and rewrite rules.
                        
                        Only gets changed for databases which are taking part in a replication chain.
                        In that case, "origin" servers fire replication (and other) triggers, and "replica" do not.  Part of the generic replication hooks which are used by Slony and Bucardo.
                        
                        see https://postgresqlco.nf/doc/en/param/session_replication_role/
                      "%
                      | optional,
                    shared_buffers
                      | String
                      | doc m%"
                        Sets the number of shared memory buffers used by the server.
                        
                        Minimum: 16
                        
                        Maximum: 1073741823
                        
                        A memory quantity defining PostgreSQL's "dedicated" RAM, which is used for connection control, active operations, and more.
                        However, since PostgreSQL also needs free RAM for file system buffers, sorts and maintenance operations, it is not advisable to set shared_buffers to a majority of RAM.   Note that increasing shared_buffers often requires you to increase some  system kernel parameters, most notably SHMMAX and SHMALL.  See  Operating System Environment: Managing Kernel Resources in the PostgreSQL documentation for more details.  Also note that shared_buffers over 2GB is  only supported on 64-bit systems.
                        
                        see https://postgresqlco.nf/doc/en/param/shared_buffers/
                      "%
                      | optional,
                    shared_memory_type
                      | std.enum.TagOrString
                      | [| 'mmap, 'sysv |]
                      | doc m%"
                        Selects the shared memory implementation used for the main shared memory region.
                        
                        see https://postgresqlco.nf/doc/en/param/shared_memory_type/
                      "%
                      | optional,
                    shared_preload_libraries
                      | String
                      | doc m%"
                        Lists shared libraries to preload into server.
                        
                        Primarily used for custom C libraries (data types, stored procedures) which you expect your application to use heavily.
                        Trades memory overhead for these libraries against load time, so really should only be used for libraries you expect most queries to require.
                        
                        see https://postgresqlco.nf/doc/en/param/shared_preload_libraries/
                      "%
                      | optional,
                    ssl
                      | String
                      | doc m%"
                        Enables SSL connections.
                        
                        One of several different settings to turn on SSL connections for PostgreSQL.
                        SSL is a very good idea for highly secure setups.  In addition, you must compile in SSL support and set SSL connections in pg_hba.conf, as well as configuring SSL itself.
                        
                        see https://postgresqlco.nf/doc/en/param/ssl/
                      "%
                      | optional,
                    ssl_ca_file
                      | String
                      | doc m%"
                        Location of the SSL certificate authority file.
                        
                        You should always use SSL connections if you can.
                        However, this does require setting up SSL.
                        
                        see https://postgresqlco.nf/doc/en/param/ssl_ca_file/
                      "%
                      | optional,
                    ssl_cert_file
                      | String
                      | doc m%"
                        Location of the SSL server certificate file.
                        
                        According to your SSL configuration, which maybe provided by your installer.
                        
                        see https://postgresqlco.nf/doc/en/param/ssl_cert_file/
                      "%
                      | optional,
                    ssl_ciphers
                      | String
                      | doc m%"
                        Sets the list of allowed SSL ciphers.
                        
                        Allows DBAs to require "str" enough or preset ciphers for SSL connections.
                        If you have not compiled SSL support, this parameter will not be available.
                        
                        see https://postgresqlco.nf/doc/en/param/ssl_ciphers/
                      "%
                      | optional,
                    ssl_crl_dir
                      | String
                      | doc m%"
                        Location of the SSL certificate revocation list directory.
                        
                        see https://postgresqlco.nf/doc/en/param/ssl_crl_dir/
                      "%
                      | optional,
                    ssl_crl_file
                      | String
                      | doc m%"
                        Location of the SSL certificate revocation list file.
                        
                        According to your SSL configuration, which maybe provided by your installer.
                        
                        see https://postgresqlco.nf/doc/en/param/ssl_crl_file/
                      "%
                      | optional,
                    ssl_dh_params_file
                      | String
                      | doc m%"
                        Location of the SSL DH parameters file.
                        
                        According to your SSL configuration, which maybe provided by your installer.
                        
                        see https://postgresqlco.nf/doc/en/param/ssl_dh_params_file/
                      "%
                      | optional,
                    ssl_ecdh_curve
                      | String
                      | doc m%"
                        Sets the curve to use for ECDH.
                        
                        According to your SSL configuration, which maybe provided by your installer.
                        
                        see https://postgresqlco.nf/doc/en/param/ssl_ecdh_curve/
                      "%
                      | optional,
                    ssl_key_file
                      | String
                      | doc m%"
                        Location of the SSL server private key file.
                        
                        According to your SSL configuration, which maybe provided by your installer.
                        
                        see https://postgresqlco.nf/doc/en/param/ssl_key_file/
                      "%
                      | optional,
                    ssl_library
                      | String
                      | doc m%"
                        Shows the name of the SSL library.
                        
                        see https://postgresqlco.nf/doc/en/param/ssl_library/
                      "%
                      | optional,
                    ssl_max_protocol_version
                      | std.enum.TagOrString
                      | [|
                        '"TLSv1.3",
                        '"TLSv1.2",
                        '"TLSv1.1",
                        'TLSv1,
                        '"\"\""
                      |]
                      | doc m%"
                        Sets the maximum SSL/TLS protocol version to use.
                        
                        see https://postgresqlco.nf/doc/en/param/ssl_max_protocol_version/
                      "%
                      | optional,
                    ssl_min_protocol_version
                      | std.enum.TagOrString
                      | [| '"TLSv1.3", '"TLSv1.2", '"TLSv1.1", 'TLSv1 |]
                      | doc m%"
                        Sets the minimum SSL/TLS protocol version to use.
                        
                        see https://postgresqlco.nf/doc/en/param/ssl_min_protocol_version/
                      "%
                      | optional,
                    ssl_passphrase_command
                      | String
                      | doc m%"
                        Command to obtain passphrases for SSL.
                        
                        see https://postgresqlco.nf/doc/en/param/ssl_passphrase_command/
                      "%
                      | optional,
                    ssl_passphrase_command_supports_reload
                      | String
                      | doc m%"
                        Also use ssl_passphrase_command during server reload.
                        
                        see https://postgresqlco.nf/doc/en/param/ssl_passphrase_command_supports_reload/
                      "%
                      | optional,
                    ssl_prefer_server_ciphers
                      | String
                      | doc m%"
                        Give priority to server ciphersuite order.
                        
                        According to your SSL configuration, which maybe provided by your installer.
                        
                        see https://postgresqlco.nf/doc/en/param/ssl_prefer_server_ciphers/
                      "%
                      | optional,
                    standard_conforming_strings
                      | String
                      | doc m%"
                        Causes '...' strings to treat backslashes literally.
                        
                        If you can clean up your application code, this disables use of
                        as an escape character except in escaped (E' ') strings.  This is both safer, and less likely to result in unexpected output for things like Windows filepaths.
                        
                        see https://postgresqlco.nf/doc/en/param/standard_conforming_strings/
                      "%
                      | optional,
                    statement_timeout
                      | String
                      | doc m%"
                        Sets the maximum allowed duration of any statement.
                        
                        Minimum: 0
                        
                        Maximum: 2147483647
                        
                        Defaults to 0, meaning no timeout.
                        For most web applications, it's a good idea to set a default timeout, such as 60s to prevent runaway queries from bogging the server.  If set, though, you need to remember to set (at the ROLE or session level) a higher statement_timeout for expected long-running maintenance or batch operations.
                        
                        see https://postgresqlco.nf/doc/en/param/statement_timeout/
                      "%
                      | optional,
                    stats_temp_directory
                      | String
                      | doc m%"
                        Writes temporary statistics files to the specified directory.
                        
                        Useful for extremely high-volume databases; the stats temp directory could be set to a RAMdisk or other high-speed resource (at the cost of potentially losing some stats) as this file gets updated hundreds of times per second.
                        
                        
                        see https://postgresqlco.nf/doc/en/param/stats_temp_directory/
                      "%
                      | optional,
                    superuser_reserved_connections
                      | String
                      | doc m%"
                        Sets the number of connection slots reserved for superusers.
                        
                        Minimum: 0
                        
                        Maximum: 262143
                        
                        You should have at least one superuser connection open for troubleshooting at all times.
                        So if you run more than two concurrent regular administrative tasks, you'll need more reserved connections.  Note that this number is taken from max_connections, not in addition to it.
                        
                        see https://postgresqlco.nf/doc/en/param/superuser_reserved_connections/
                      "%
                      | optional,
                    synchronize_seqscans
                      | String
                      | doc m%"
                        Enable synchronized sequential scans.
                        
                        This new peformance enhancment can also cause rows to be returned in an order other than physical storage order.
                        For poorly-written older applications, this may break application code; turn it off to disable.
                        
                        see https://postgresqlco.nf/doc/en/param/synchronize_seqscans/
                      "%
                      | optional,
                    synchronous_commit
                      | std.enum.TagOrString
                      | [| 'off, 'on, 'remote_apply, 'remote_write, 'local |]
                      | doc m%"
                        Sets the current transaction's synchronization level.
                        
                        If data integrity is less important to you than response times (for example, if you are running a social networking application or processing logs) you can turn this off, making your transaction logs asynchronous.
                        This can result in up to wal_buffers or wal_writer_delay * 2 worth of data in an unexpected shutdown, but your database will not be corrupted.  Note that you can also set this on a per-session basis, allowing you to mix "lossy" and "safe" transactions, which is a better approach for most applications.
                        
                        see https://postgresqlco.nf/doc/en/param/synchronous_commit/
                      "%
                      | optional,
                    synchronous_standby_names
                      | String
                      | doc m%"
                        Number of synchronous standbys and list of names of potential synchronous ones.
                        
                        Special, see syntax for sync standby config.
                        Don't get into this if you're not sure what you're doing.
                        
                        see https://postgresqlco.nf/doc/en/param/synchronous_standby_names/
                      "%
                      | optional,
                    syslog_facility
                      | std.enum.TagOrString
                      | [|
                        'local7,
                        'local6,
                        'local5,
                        'local4,
                        'local3,
                        'local2,
                        'local1,
                        'local0
                      |]
                      | doc m%"
                        Sets the syslog "facility" to be used when syslog enabled.
                        
                        Change the logserver facility if you are having a conflict with other applications.
                        
                        see https://postgresqlco.nf/doc/en/param/syslog_facility/
                      "%
                      | optional,
                    syslog_ident
                      | String
                      | doc m%"
                        Sets the program name used to identify PostgreSQL messages in syslog.
                        
                        If using a centralized logserver or if you have multiple Postgres instances, you probably want to identify your postgresql instance by hostname.
                        
                        see https://postgresqlco.nf/doc/en/param/syslog_ident/
                      "%
                      | optional,
                    syslog_sequence_numbers
                      | String
                      | doc m%"
                        Add sequence number to syslog messages to avoid duplicate suppression.
                        
                        see https://postgresqlco.nf/doc/en/param/syslog_sequence_numbers/
                      "%
                      | optional,
                    syslog_split_messages
                      | String
                      | doc m%"
                        Split messages sent to syslog by lines and to fit into 1024 bytes.
                        
                        see https://postgresqlco.nf/doc/en/param/syslog_split_messages/
                      "%
                      | optional,
                    tcp_keepalives_count
                      | String
                      | doc m%"
                        Maximum number of TCP keepalive retransmits.
                        
                        Minimum: 0
                        
                        Maximum: 2147483647
                        
                        The three tcp_keepalive settings help manage a system which tends to have "undead" connection/query processes.
                        For systems which support them, you can regulate checking that connections are still "live" end-to-end to kill them off.  Not needed if you're not having a problem.  Should be synchronized with the new TCP keepalive support in libpq on the client side.
                        
                        see https://postgresqlco.nf/doc/en/param/tcp_keepalives_count/
                      "%
                      | optional,
                    tcp_keepalives_idle
                      | String
                      | doc m%"
                        Time between issuing TCP keepalives.
                        
                        Minimum: 0
                        
                        Maximum: 2147483647
                        
                        see https://postgresqlco.nf/doc/en/param/tcp_keepalives_idle/
                      "%
                      | optional,
                    tcp_keepalives_interval
                      | String
                      | doc m%"
                        Time between TCP keepalive retransmits.
                        
                        Minimum: 0
                        
                        Maximum: 2147483647
                        
                        see https://postgresqlco.nf/doc/en/param/tcp_keepalives_interval/
                      "%
                      | optional,
                    tcp_user_timeout
                      | String
                      | doc m%"
                        TCP user timeout.
                        
                        Minimum: 0
                        
                        Maximum: 2147483647
                        
                        see https://postgresqlco.nf/doc/en/param/tcp_user_timeout/
                      "%
                      | optional,
                    temp_buffers
                      | String
                      | doc m%"
                        Sets the maximum number of temporary buffers used by each session.
                        
                        Minimum: 100
                        
                        Maximum: 1073741823
                        
                        Currently used only for holding temporary tables in memory.
                        If your application requires heavy use of temporary tables (many proprietary reporting engines do) then you might want to increase this substantially.  However, be careful because this is non-shared RAM which is allocated per session.  Otherwise, the default is fine.
                        
                        see https://postgresqlco.nf/doc/en/param/temp_buffers/
                      "%
                      | optional,
                    temp_file_limit
                      | String
                      | doc m%"
                        Limits the total size of all temporary files used by each process.
                        
                        Minimum: -1
                        
                        Maximum: 2147483647
                        
                        ... or something which is bigger than your largest possible sort, but not big enough to run you out of disk space.
                        
                        see https://postgresqlco.nf/doc/en/param/temp_file_limit/
                      "%
                      | optional,
                    temp_tablespaces
                      | String
                      | doc m%"
                        Sets the tablespace(s) to use for temporary tables and sort files.
                        
                        For applications which create lots of temporary objects, this setting can be used to put the temp space on a faster/separate device, or even a ramdisk.
                        Because it accepts a list, it can even be used to load balance temp object creation among several tablespaces.
                        
                        see https://postgresqlco.nf/doc/en/param/temp_tablespaces/
                      "%
                      | optional,
                    timezone_abbreviations
                      | String
                      | doc m%"
                        Selects a file of time zone abbreviations.
                        
                        See appendencies for alternatives.
                        
                        see https://postgresqlco.nf/doc/en/param/timezone_abbreviations/
                      "%
                      | optional,
                    trace_notify
                      | String
                      | doc m%"
                        Generates debugging output for LISTEN and NOTIFY.
                        
                        The various TRACE options are for debugging specific behaviors interactively. Many of them require compile-time options. trace_notice is for debugging listen/notice.
                        
                        see https://postgresqlco.nf/doc/en/param/trace_notify/
                      "%
                      | optional,
                    trace_recovery_messages
                      | std.enum.TagOrString
                      | [|
                        'error,
                        'warning,
                        'notice,
                        'log,
                        'debug1,
                        'debug2,
                        'debug3,
                        'debug4,
                        'debug5
                      |]
                      | doc m%"
                        Enables logging of recovery-related debugging information.
                        
                        For troubleshooting replication/PITR failures.
                        
                        see https://postgresqlco.nf/doc/en/param/trace_recovery_messages/
                      "%
                      | optional,
                    trace_sort
                      | String
                      | doc m%"
                        Emit information about resource usage in sorting.
                        
                        For debugging sorts.
                        
                        see https://postgresqlco.nf/doc/en/param/trace_sort/
                      "%
                      | optional,
                    track_activities
                      | String
                      | doc m%"
                        Collects information about executing commands.
                        
                        see https://postgresqlco.nf/doc/en/param/track_activities/
                      "%
                      | optional,
                    track_activity_query_size
                      | String
                      | doc m%"
                        Sets the size reserved for pg_stat_activity.query, in bytes.
                        
                        Minimum: 100
                        
                        Maximum: 1048576
                        
                        Sets the truncation threshold of queries in pg_stat_activity (and pg_stat_statements).
                        Increase it if you have really long queries which are being cut off, but there is significant extra memory usage for keeping longer queries.
                        
                        see https://postgresqlco.nf/doc/en/param/track_activity_query_size/
                      "%
                      | optional,
                    track_commit_timestamp
                      | String
                      | doc m%"
                        Collects transaction commit time.
                        
                        see https://postgresqlco.nf/doc/en/param/track_commit_timestamp/
                      "%
                      | optional,
                    track_counts
                      | String
                      | doc m%"
                        Collects statistics on database activity.
                        
                        Needed for autovacuum to work properly.
                        Do not turn off.
                        
                        see https://postgresqlco.nf/doc/en/param/track_counts/
                      "%
                      | optional,
                    track_functions
                      | std.enum.TagOrString
                      | [| 'all, 'pl, 'none |]
                      | doc m%"
                        Collects function-level statistics on database activity.
                        
                        Set it to 'pl' to collect stats on user-defined functions.
                        Very useful for stored procedure performance profiling and troubleshooting.
                        
                        see https://postgresqlco.nf/doc/en/param/track_functions/
                      "%
                      | optional,
                    track_io_timing
                      | String
                      | doc m%"
                        Collects timing statistics for database I/O activity.
                        
                        Turn it on if you're monitoring disk usage per request.
                        
                        see https://postgresqlco.nf/doc/en/param/track_io_timing/
                      "%
                      | optional,
                    track_wal_io_timing
                      | String
                      | doc m%"
                        Collects timing statistics for WAL I/O activity.
                        
                        see https://postgresqlco.nf/doc/en/param/track_wal_io_timing/
                      "%
                      | optional,
                    transaction_deferrable
                      | String
                      | doc m%"
                        Whether to defer a read-only serializable transaction until it can be executed with no possible serialization failures.
                        
                        see https://postgresqlco.nf/doc/en/param/transaction_deferrable/
                      "%
                      | optional,
                    transaction_isolation
                      | std.enum.TagOrString
                      | [|
                        '"\"read uncommitted\"",
                        '"\"read committed\"",
                        '"\"repeatable read\"",
                        'serializable
                      |]
                      | doc m%"
                        Sets the current transaction's isolation level.
                        
                        Set per session if you need, for example, SERIALIZABLE semantics to prevent data conflicts for multi-step transactions.
                        
                        see https://postgresqlco.nf/doc/en/param/transaction_isolation/
                      "%
                      | optional,
                    transaction_read_only
                      | String
                      | doc m%"
                        Sets the current transaction's read-only status.
                        
                        Sets the current transaction to read only.
                        Useful as part of a SQL injection prevention program.  Shows as TRUE on replication standbys.
                        
                        see https://postgresqlco.nf/doc/en/param/transaction_read_only/
                      "%
                      | optional,
                    transform_null_equals
                      | String
                      | doc m%"
                        Treats "expr=NULL" as "expr IS NULL".
                        
                        Provided for compatibility with Microsoft Access and similar broken applications which treat "= NULL" as the same as "IS NULL".
                        
                        
                        see https://postgresqlco.nf/doc/en/param/transform_null_equals/
                      "%
                      | optional,
                    unix_socket_directories
                      | String
                      | doc m%"
                        Sets the directories where Unix-domain sockets will be created.
                        
                        Change to a more secure directory, which many installers do for you.
                        
                        see https://postgresqlco.nf/doc/en/param/unix_socket_directories/
                      "%
                      | optional,
                    unix_socket_group
                      | String
                      | doc m%"
                        Sets the owning group of the Unix-domain socket.
                        
                        see https://postgresqlco.nf/doc/en/param/unix_socket_group/
                      "%
                      | optional,
                    unix_socket_permissions
                      | String
                      | doc m%"
                        Sets the access permissions of the Unix-domain socket.
                        
                        Minimum: 0
                        
                        Maximum: 511
                        
                        see https://postgresqlco.nf/doc/en/param/unix_socket_permissions/
                      "%
                      | optional,
                    update_process_title
                      | String
                      | doc m%"
                        Updates the process title to show the active SQL command.
                        
                        Updates the process title on OSes which support this.
                        Very useful for checking resource usage by currently running queries.
                        
                        see https://postgresqlco.nf/doc/en/param/update_process_title/
                      "%
                      | optional,
                    vacuum_cost_delay
                      | String
                      | doc m%"
                        Vacuum cost delay in milliseconds.
                        
                        Minimum: 0
                        
                        Maximum: 100
                        
                        Most of the time, you will want manual vacuum to execute without vacuum_delay, especially if you're using it as part of ETL.
                        If for some reason you can't use autovacuum on an OLTP database, however, you may want to increase this to 20ms to decrease the impact vacuum has on currently running queries.  Will cause vacuum to take up to twice as long to complete.
                        
                        see https://postgresqlco.nf/doc/en/param/vacuum_cost_delay/
                      "%
                      | optional,
                    vacuum_cost_limit
                      | String
                      | doc m%"
                        Vacuum cost amount available before napping.
                        
                        Minimum: 1
                        
                        Maximum: 10000
                        
                        see https://postgresqlco.nf/doc/en/param/vacuum_cost_limit/
                      "%
                      | optional,
                    vacuum_cost_page_dirty
                      | String
                      | doc m%"
                        Vacuum cost for a page dirtied by vacuum.
                        
                        Minimum: 0
                        
                        Maximum: 10000
                        
                        see https://postgresqlco.nf/doc/en/param/vacuum_cost_page_dirty/
                      "%
                      | optional,
                    vacuum_cost_page_hit
                      | String
                      | doc m%"
                        Vacuum cost for a page found in the buffer cache.
                        
                        Minimum: 0
                        
                        Maximum: 10000
                        
                        see https://postgresqlco.nf/doc/en/param/vacuum_cost_page_hit/
                      "%
                      | optional,
                    vacuum_cost_page_miss
                      | String
                      | doc m%"
                        Vacuum cost for a page not found in the buffer cache.
                        
                        Minimum: 0
                        
                        Maximum: 10000
                        
                        see https://postgresqlco.nf/doc/en/param/vacuum_cost_page_miss/
                      "%
                      | optional,
                    vacuum_defer_cleanup_age
                      | String
                      | doc m%"
                        Number of transactions by which VACUUM and HOT cleanup should be deferred, if any.
                        
                        Minimum: 0
                        
                        Maximum: 1000000
                        
                        No longer effective thanks to hot_standby_feedback.
                        
                        see https://postgresqlco.nf/doc/en/param/vacuum_defer_cleanup_age/
                      "%
                      | optional,
                    vacuum_failsafe_age
                      | String
                      | doc m%"
                        Age at which VACUUM should trigger failsafe to avoid a wraparound outage.
                        
                        Minimum: 0
                        
                        Maximum: 2100000000
                        
                        see https://postgresqlco.nf/doc/en/param/vacuum_failsafe_age/
                      "%
                      | optional,
                    vacuum_freeze_min_age
                      | String
                      | doc m%"
                        Minimum age at which VACUUM should freeze a table row.
                        
                        Minimum: 0
                        
                        Maximum: 1000000000
                        
                        Most users will want to decrease this so that rows which have been cold for a long time get frozen earlier, and avoid an autovacuum_freeze.
                        The suggestion of 500000 is for a moderately busy database; do not set to less than a few hours worth of XIDs.  Maximum setting is 1/2 of autovaccuum_max_freeze_age.
                        
                        see https://postgresqlco.nf/doc/en/param/vacuum_freeze_min_age/
                      "%
                      | optional,
                    vacuum_freeze_table_age
                      | String
                      | doc m%"
                        Age at which VACUUM should scan whole table to freeze tuples.
                        
                        Minimum: 0
                        
                        Maximum: 2000000000
                        
                        Generally set to 80% of autovacuum_max_freeze age to preempt a full vacuum freeze.
                        If you can schedule cron vacuums during application slow periods, it might be valuable to lower this value in order to encourage vacuum freezing of tables before they are triggered by autovacuum.
                        
                        see https://postgresqlco.nf/doc/en/param/vacuum_freeze_table_age/
                      "%
                      | optional,
                    vacuum_multixact_failsafe_age
                      | String
                      | doc m%"
                        Multixact age at which VACUUM should trigger failsafe to avoid a wraparound outage.
                        
                        Minimum: 0
                        
                        Maximum: 2100000000
                        
                        see https://postgresqlco.nf/doc/en/param/vacuum_multixact_failsafe_age/
                      "%
                      | optional,
                    vacuum_multixact_freeze_min_age
                      | String
                      | doc m%"
                        Minimum age at which VACUUM should freeze a MultiXactId in a table row.
                        
                        Minimum: 0
                        
                        Maximum: 1000000000
                        
                        Like freeze_min_age, lower this to somewhere around an hour of XID burn.
                        Try starting with 500000.
                        
                        see https://postgresqlco.nf/doc/en/param/vacuum_multixact_freeze_min_age/
                      "%
                      | optional,
                    vacuum_multixact_freeze_table_age
                      | String
                      | doc m%"
                        Multixact age at which VACUUM should scan whole table to freeze tuples.
                        
                        Minimum: 0
                        
                        Maximum: 2000000000
                        
                        Set to 80% of autovaccum_multixact_freeze_max_age
                        
                        see https://postgresqlco.nf/doc/en/param/vacuum_multixact_freeze_table_age/
                      "%
                      | optional,
                    wal_block_size
                      | String
                      | doc m%"
                        Shows the block size in the write ahead log.
                        
                        Minimum: 8192
                        
                        Maximum: 8192
                        
                        Informational: lets you know of non-standard installation or compile options.
                        
                        see https://postgresqlco.nf/doc/en/param/wal_block_size/
                      "%
                      | optional,
                    wal_buffers
                      | String
                      | doc m%"
                        Sets the number of disk-page buffers in shared memory for WAL.
                        
                        Minimum: -1
                        
                        Maximum: 262143
                        
                        On very busy, high-core machines it can be useful to raise this to as much as 128MB.
                        
                        see https://postgresqlco.nf/doc/en/param/wal_buffers/
                      "%
                      | optional,
                    wal_compression
                      | String
                      | doc m%"
                        Compresses full-page writes written in WAL file.
                        
                        ... unless your storage is less constrained than your CPU.
                        
                        see https://postgresqlco.nf/doc/en/param/wal_compression/
                      "%
                      | optional,
                    wal_consistency_checking
                      | String
                      | doc m%"
                        Sets the WAL resource managers for which WAL consistency checks are done.
                        
                        see https://postgresqlco.nf/doc/en/param/wal_consistency_checking/
                      "%
                      | optional,
                    wal_init_zero
                      | String
                      | doc m%"
                        Writes zeroes to new WAL files before first use.
                        
                        see https://postgresqlco.nf/doc/en/param/wal_init_zero/
                      "%
                      | optional,
                    wal_keep_size
                      | String
                      | doc m%"
                        Sets the size of WAL files held for standby servers.
                        
                        Minimum: 0
                        
                        Maximum: 2147483647
                        
                        see https://postgresqlco.nf/doc/en/param/wal_keep_size/
                      "%
                      | optional,
                    wal_level
                      | std.enum.TagOrString
                      | [| 'logical, 'replica, 'minimal |]
                      | doc m%"
                        Sets the level of information written to the WAL.
                        
                        Level replica is required for binary replication, and level logical is required for logical replication.
                        This is a setting because raising the level adds more writes to the WAL, so if you're not doing replication or archiving at all, set it to minimal.
                        
                        see https://postgresqlco.nf/doc/en/param/wal_level/
                      "%
                      | optional,
                    wal_log_hints
                      | String
                      | doc m%"
                        Writes full pages to WAL when first modified after a checkpoint, even for a non-critical modification.
                        
                        see https://postgresqlco.nf/doc/en/param/wal_log_hints/
                      "%
                      | optional,
                    wal_receiver_create_temp_slot
                      | String
                      | doc m%"
                        Sets whether a WAL receiver should create a temporary replication slot if no permanent slot is configured.
                        
                        see https://postgresqlco.nf/doc/en/param/wal_receiver_create_temp_slot/
                      "%
                      | optional,
                    wal_receiver_status_interval
                      | String
                      | doc m%"
                        Sets the maximum interval between WAL receiver status reports to the sending server.
                        
                        Minimum: 0
                        
                        Maximum: 2147483
                        
                        see https://postgresqlco.nf/doc/en/param/wal_receiver_status_interval/
                      "%
                      | optional,
                    wal_receiver_timeout
                      | String
                      | doc m%"
                        Sets the maximum wait time to receive data from the sending server.
                        
                        Minimum: 0
                        
                        Maximum: 2147483647
                        
                        see https://postgresqlco.nf/doc/en/param/wal_receiver_timeout/
                      "%
                      | optional,
                    wal_recycle
                      | String
                      | doc m%"
                        Recycles WAL files by renaming them.
                        
                        see https://postgresqlco.nf/doc/en/param/wal_recycle/
                      "%
                      | optional,
                    wal_retrieve_retry_interval
                      | String
                      | doc m%"
                        Sets the time to wait before retrying to retrieve WAL after a failed attempt.
                        
                        Minimum: 1
                        
                        Maximum: 2147483647
                        
                        see https://postgresqlco.nf/doc/en/param/wal_retrieve_retry_interval/
                      "%
                      | optional,
                    wal_segment_size
                      | String
                      | doc m%"
                        Shows the size of write ahead log segments.
                        
                        Minimum: 1048576
                        
                        Maximum: 1073741824
                        
                        Informational: lets you know of non-standard installation or compile options.
                        
                        see https://postgresqlco.nf/doc/en/param/wal_segment_size/
                      "%
                      | optional,
                    wal_sender_timeout
                      | String
                      | doc m%"
                        Sets the maximum time to wait for WAL replication.
                        
                        Minimum: 0
                        
                        Maximum: 2147483647
                        
                        see https://postgresqlco.nf/doc/en/param/wal_sender_timeout/
                      "%
                      | optional,
                    wal_skip_threshold
                      | String
                      | doc m%"
                        Minimum size of new file to fsync instead of writing WAL.
                        
                        Minimum: 0
                        
                        Maximum: 2147483647
                        
                        see https://postgresqlco.nf/doc/en/param/wal_skip_threshold/
                      "%
                      | optional,
                    wal_sync_method
                      | std.enum.TagOrString
                      | [| 'open_datasync, 'open_sync, 'fdatasync, 'fsync |]
                      | doc m%"
                        Selects the method used for forcing WAL updates to disk.
                        
                        On install, PostgreSQL figures out the best method for your OS.
                        It's pretty good at this point; don't change the default.  Note that the value of "fsync" shown in your postgresql.conf file is not necessarily the setting the server is using; try SHOW instead.
                        
                        see https://postgresqlco.nf/doc/en/param/wal_sync_method/
                      "%
                      | optional,
                    wal_writer_delay
                      | String
                      | doc m%"
                        Time between WAL flushes performed in the WAL writer.
                        
                        Minimum: 1
                        
                        Maximum: 10000
                        
                        Defines the maximum data (in time) that can be lost if synchronous_commit=off and the database shuts down.
                        Because of long transactions, actual data lost can be up to twice this time.  Has no effect if synchronous_commit=on.  If you are going to turn synchronous_commit=off server-wide, you should probably lower this to prevent too much data loss.
                        
                        see https://postgresqlco.nf/doc/en/param/wal_writer_delay/
                      "%
                      | optional,
                    wal_writer_flush_after
                      | String
                      | doc m%"
                        Amount of WAL written out by WAL writer that triggers a flush.
                        
                        Minimum: 0
                        
                        Maximum: 2147483647
                        
                        see https://postgresqlco.nf/doc/en/param/wal_writer_flush_after/
                      "%
                      | optional,
                    work_mem
                      | String
                      | doc m%"
                        Sets the maximum memory to be used for query workspaces.
                        
                        Minimum: 64
                        
                        Maximum: 2147483647
                        
                        Sets the limit for the amount of non-shared RAM available for each query operation, including sorts and hashes.
                        This limit acts as a primitive resource control, preventing the server from going into swap due to overallocation.  Note that this is non-shared RAM per operation, which means large complex queries can use multple times this amount.  Also, work_mem is allocated by powers of two, so round to the nearest binary step.  The second formula is for reporting and DW servers which run a lot of complex queries.
                        
                        see https://postgresqlco.nf/doc/en/param/work_mem/
                      "%
                      | optional,
                    xmlbinary
                      | std.enum.TagOrString
                      | [| 'hex, 'base64 |]
                      | doc m%"
                        Sets how binary values are to be encoded in XML.
                        
                        Set to whatever your client application supports.
                        
                        see https://postgresqlco.nf/doc/en/param/xmlbinary/
                      "%
                      | optional,
                    xmloption
                      | std.enum.TagOrString
                      | [| 'document, 'content |]
                      | doc m%"
                        Sets whether XML data in implicit parsing and serialization operations is to be considered as documents or content fragments.
                        
                        see https://postgresqlco.nf/doc/en/param/xmloption/
                      "%
                      | optional,
                    zero_damaged_pages
                      | String
                      | doc m%"
                        Continues processing past damaged page headers.
                        
                        Used for salvaging data from a known-bad database.
                        You should always make a binary backup before using this option, and it should not be used while users are allowed to connect.  After damaged pages are erased, other kinds of data intergrity errors may persist (like broken PKs and FKs).  ZDP should generally be used to get your DB to a stage where the data can be dumped and loaded into a new database.
                        
                        see https://postgresqlco.nf/doc/en/param/zero_damaged_pages/
                      "%
                      | optional,
                  }
                  | doc "Define your parameters on https://pgtune.leopard.in.ua"
                  | optional,
                priorityClassName
                  | String
                  | doc "Name of the priority class which will be used in every generated Pod, if the PriorityClass specified does not exist, the pod will not be able to schedule. Please refer to https://kubernetes.io/docs/concepts/scheduling-eviction/pod-priority-preemption/#priorityclass for more information"
                  | optional,
                recovery
                  | {
                    barmanObjectStore
                      | js2n.Nullable ({ _ | Dyn })
                      | doc "See: https://cloudnative-pg.io/documentation/current/backup_recovery/"
                      | optional,
                    database | js2n.Nullable String | optional,
                    enabled | Bool | optional,
                    owner | js2n.Nullable String | optional,
                    secretName | js2n.Nullable String | optional,
                    targetTime
                      | String
                      | doc "Relative to Postgres server timezone"
                      | optional,
                    ..
                  }
                  | optional,
                registryCredentials | js2n.Nullable ({ _ | Dyn }) | optional,
                replica | { enabled | Bool | optional, .. } | optional,
                resources
                  | js2n.Always
                  | doc m%"
                    We usually recommend not to specify default resources and to leave this as a conscious
                    choice for the user. This also increases chances charts run on environments with little
                    resources, such as Minikube. If you do want to specify resources, uncomment the following
                    lines, adjust them as necessary, and remove the curly braces after 'resources:'.
                  "%
                  | optional,
                scheduledBackups | { _ | Dyn } | optional,
                sharedPreloadLibraries
                  | std.contract.any_of
                    [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ]
                  | optional,
                superuserSecretName | js2n.Nullable String | optional,
                tolerations | Array Dyn | optional,
                ..
              }
              | optional,
            "~chart" | std.contract.Equal "pg" | optional,
            ..
          },
      "definitions.chart" =
        {
            "~chart"
              | std.contract.any_of
                [
                  String,
                  js2n.Const "app",
                  js2n.Const "pg",
                  js2n.Const "hasura",
                  js2n.Const "pgweb",
                  js2n.Const "maildev",
                  js2n.Const "redis",
                  js2n.Const "jobs"
                ]
              | doc "Kontinuous chart to use",
            "~needs" | Array String | optional,
            ..
          },
      "properties.jobs" =
        {
            runs
              | {
                _ | std.contract.Sequence
                  [
                    js2n.IfThenElse
                      (std.contract.any_of
                        [
                          js2n.Null,
                          Bool,
                          Number,
                          String,
                          js2n.record.Record
                            {
                              additional = 'Some Dyn,
                              patterns = {},
                              properties = { use = js2n.Null, },
                              required = {},
                            },
                          Array Dyn
                        ])
                      (std.contract.any_of
                        [
                          js2n.Null,
                          Bool,
                          Number,
                          String,
                          { _ | Dyn },
                          Array Dyn
                        ])
                      (js2n.IfThenElse
                        (std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            js2n.record.Record
                              {
                                additional = 'Some Dyn,
                                patterns = {},
                                properties = { use = js2n.Const "build", },
                                required = {},
                              },
                            Array Dyn
                          ])
                        (std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            {
                              use
                                | std.contract.any_of
                                  [
                                    js2n.Null,
                                    Bool,
                                    Number,
                                    String,
                                    { _ | Dyn },
                                    Array Dyn
                                  ]
                                | optional,
                              with
                                | {
                                  buildArgs
                                    | refs."properties.jobs.properties.runs.additionalProperties.else.then.properties.with.definitions.build-args"
                                    | { _ | Dyn }
                                    | optional,
                                  buildOptions
                                    | String
                                    | doc "Build options"
                                    | optional,
                                  buildkitServiceAddr
                                    | String
                                    | doc "Address of the buildkit service. defaults to `tcp://buildkit-service.buildkit-service.svc:1234`"
                                    | optional,
                                  buildkitServiceClientCertsSecretName
                                    | String
                                    | doc "Use a specific secret for build kit service client cert. default to `buildkit-client-certs`"
                                    | optional,
                                  buildkitServiceEnabled
                                    | String
                                    | doc "Enable buildkit remote service. set to `true` to activate."
                                    | optional,
                                  context
                                    | String
                                    | doc "Docker context (cwd) when building the image. Defaults to ."
                                    | optional,
                                  dockerfile
                                    | String
                                    | doc "Path to the Dockerfile on the repository. Defaults to /Dockerfile"
                                    | optional,
                                  imagePackage
                                    | String
                                    | doc "Name of the docker image on the registry"
                                    | optional,
                                  imageProject
                                    | String
                                    | doc "Optional project name in the docker registry"
                                    | optional,
                                  imageRepository
                                    | String
                                    | doc "Optional sub repository for the docker image"
                                    | optional,
                                  registry
                                    | String
                                    | doc "Url of your custom docker registry"
                                    | optional,
                                  registrySecretRefName
                                    | String
                                    | doc "Name of the registry secret if you have a custom docker registry. Should contain CI_REGISTRY_USER, CI_REGISTRY_PASSWORD"
                                    | optional,
                                  secrets
                                    | {
                                      additionalProperties
                                        | js2n.Always
                                        | optional,
                                      ..
                                    }
                                    | doc "Use secrets securely at build time that will not be exposed in the image layers, keys are secrets ids, `secretName` and `secretKey` properties can be used to target the kubernetes secret"
                                    | optional,
                                  target
                                    | String
                                    | doc "Set the target build stage to build."
                                    | optional,
                                },
                              ..
                            },
                            Array Dyn
                          ])
                        (js2n.IfThenElse
                          (std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              Number,
                              String,
                              js2n.record.Record
                                {
                                  additional = 'Some Dyn,
                                  patterns = {},
                                  properties =
                                    { use = js2n.Const "build-kaniko", },
                                  required = {},
                                },
                              Array Dyn
                            ])
                          (std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              Number,
                              String,
                              {
                                use
                                  | std.contract.any_of
                                    [
                                      js2n.Null,
                                      Bool,
                                      Number,
                                      String,
                                      { _ | Dyn },
                                      Array Dyn
                                    ]
                                  | optional,
                                with
                                  | {
                                    buildArgs
                                      | refs."properties.jobs.properties.runs.additionalProperties.else.else.then.properties.with.definitions.build-args"
                                      | { _ | Dyn }
                                      | optional,
                                    buildOptions
                                      | String
                                      | doc "Build options"
                                      | optional,
                                    context
                                      | String
                                      | doc "Docker context (cwd) when building the image. Defaults to ."
                                      | optional,
                                    dockerfile
                                      | String
                                      | doc "Path to the Dockerfile on the repository. Defaults to /Dockerfile"
                                      | optional,
                                    imagePackage
                                      | String
                                      | doc "Name of the dockerfile on the registry",
                                    imageProject
                                      | String
                                      | doc "Optional project name in the docker registry"
                                      | optional,
                                    imageRepository
                                      | String
                                      | doc "Optional sub repository for the docker image"
                                      | optional,
                                    noPush
                                      | Bool
                                      | doc "Disable registry push, just build"
                                      | optional,
                                    registrySecretRefName
                                      | String
                                      | doc "Name of the registry secret if you have a custom docker registry. Should contain CI_REGISTRY_USER, CI_REGISTRY_PASSWORD"
                                      | optional,
                                    skipExisting
                                      | Bool
                                      | doc "Skip build if image already registerd"
                                      | optional,
                                    target
                                      | String
                                      | doc "Set the target build stage to build."
                                      | optional,
                                  },
                                ..
                              },
                              Array Dyn
                            ])
                          (js2n.IfThenElse
                            (std.contract.any_of
                              [
                                js2n.Null,
                                Bool,
                                Number,
                                String,
                                js2n.record.Record
                                  {
                                    additional = 'Some Dyn,
                                    patterns = {},
                                    properties =
                                      { use = js2n.Const "create-db", },
                                    required = {},
                                  },
                                Array Dyn
                              ])
                            (std.contract.any_of
                              [
                                js2n.Null,
                                Bool,
                                Number,
                                String,
                                {
                                  use
                                    | std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        Number,
                                        String,
                                        { _ | Dyn },
                                        Array Dyn
                                      ]
                                    | optional,
                                  with
                                    | {
                                      database
                                        | String
                                        | doc "Name of the Postgres database to create. Defaults to environment"
                                        | optional,
                                      extensions
                                        | String
                                        | doc "List of Postgres extensions to create in the new database. Defaults to `hstore pgcrypto citext uuid-ossp postgis pg_trgm unaccent`"
                                        | optional,
                                      pgAdminUserSecretRefName
                                        | String
                                        | doc "Secret with admin credentials to the database server"
                                        | optional,
                                      pgSecretName
                                        | String
                                        | doc "Name of the kubernetes user secret to create. Defaults to pg-user"
                                        | optional,
                                      pgUser
                                        | String
                                        | doc "Name of the Postgres user to create"
                                        | optional,
                                      useAzureFlex
                                        | std.enum.TagOrString
                                        | [| '"false", '"true" |]
                                        | doc "Use an Azure Flex database. defaults to false"
                                        | optional,
                                    }
                                    | optional,
                                  ..
                                },
                                Array Dyn
                              ])
                            (js2n.IfThenElse
                              (std.contract.any_of
                                [
                                  js2n.Null,
                                  Bool,
                                  Number,
                                  String,
                                  js2n.record.Record
                                    {
                                      additional = 'Some Dyn,
                                      patterns = {},
                                      properties =
                                        { use = js2n.Const "deactivate", },
                                      required = {},
                                    },
                                  Array Dyn
                                ])
                              (std.contract.any_of
                                [
                                  js2n.Null,
                                  Bool,
                                  Number,
                                  String,
                                  {
                                    use
                                      | std.contract.any_of
                                        [
                                          js2n.Null,
                                          Bool,
                                          Number,
                                          String,
                                          { _ | Dyn },
                                          Array Dyn
                                        ]
                                      | optional,
                                    with
                                      | {
                                        database
                                          | String
                                          | doc "Name of the Postgres database to destroy. Defaults to environment"
                                          | optional,
                                        db
                                          | Bool
                                          | doc "Has a database, and use default database, true by default if `database` filled"
                                          | optional,
                                        pgAdminUserSecretRefName
                                          | String
                                          | doc "Secret with admin credentials to the database server"
                                          | optional,
                                      },
                                    ..
                                  },
                                  Array Dyn
                                ])
                              (js2n.IfThenElse
                                (std.contract.any_of
                                  [
                                    js2n.Null,
                                    Bool,
                                    Number,
                                    String,
                                    js2n.record.Record
                                      {
                                        additional = 'Some Dyn,
                                        patterns = {},
                                        properties =
                                          { use = js2n.Const "drop-db", },
                                        required = {},
                                      },
                                    Array Dyn
                                  ])
                                (std.contract.any_of
                                  [
                                    js2n.Null,
                                    Bool,
                                    Number,
                                    String,
                                    {
                                      use
                                        | std.contract.any_of
                                          [
                                            js2n.Null,
                                            Bool,
                                            Number,
                                            String,
                                            { _ | Dyn },
                                            Array Dyn
                                          ]
                                        | optional,
                                      with
                                        | {
                                          database
                                            | String
                                            | doc "Name of the Postgres database to destroy."
                                            | optional,
                                          databaseUser
                                            | String
                                            | doc "Name of the Postgres user to destroy."
                                            | optional,
                                          pgAdminUserSecretRefName
                                            | String
                                            | doc "Secret with admin credentials to the database server"
                                            | optional,
                                        },
                                      ..
                                    },
                                    Array Dyn
                                  ])
                                (js2n.IfThenElse
                                  (std.contract.any_of
                                    [
                                      js2n.Null,
                                      Bool,
                                      Number,
                                      String,
                                      js2n.record.Record
                                        {
                                          additional = 'Some Dyn,
                                          patterns = {},
                                          properties =
                                            { use = js2n.Const "pg-restore", },
                                          required = {},
                                        },
                                      Array Dyn
                                    ])
                                  (std.contract.any_of
                                    [
                                      js2n.Null,
                                      Bool,
                                      Number,
                                      String,
                                      {
                                        use
                                          | std.contract.any_of
                                            [
                                              js2n.Null,
                                              Bool,
                                              Number,
                                              String,
                                              { _ | Dyn },
                                              Array Dyn
                                            ]
                                          | optional,
                                        with
                                          | {
                                            database
                                              | String
                                              | doc "Name of the Postgres database to restore to"
                                              | optional,
                                            filterPath
                                              | String
                                              | doc "filter for the latest file lookup"
                                              | optional,
                                            mountPath
                                              | String
                                              | doc "Path to the backup storage mount"
                                              | optional,
                                            owner
                                              | String
                                              | doc "Change restored database owner"
                                              | optional,
                                            pgAdminUserSecretRefName
                                              | String
                                              | doc "Secret with admin credentials to the database server"
                                              | optional,
                                            restorePath
                                              | String
                                              | doc "Path to .sql file in the repo",
                                          },
                                        ..
                                      },
                                      Array Dyn
                                    ])
                                  (js2n.IfThenElse
                                    (std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        Number,
                                        String,
                                        js2n.record.Record
                                          {
                                            additional = 'Some Dyn,
                                            patterns = {},
                                            properties =
                                              { use = js2n.Const "psql", },
                                            required = {},
                                          },
                                        Array Dyn
                                      ])
                                    (std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        Number,
                                        String,
                                        {
                                          use
                                            | std.contract.any_of
                                              [
                                                js2n.Null,
                                                Bool,
                                                Number,
                                                String,
                                                { _ | Dyn },
                                                Array Dyn
                                              ]
                                            | optional,
                                          with
                                            | {
                                              pgSecretRefName
                                                | String
                                                | doc "Secret with Postgresql credentials to execute the script",
                                              sqlFile
                                                | String
                                                | doc "Path to .sql file in the repo",
                                            },
                                          ..
                                        },
                                        Array Dyn
                                      ])
                                    (js2n.IfThenElse
                                      (std.contract.any_of
                                        [
                                          js2n.Null,
                                          Bool,
                                          Number,
                                          String,
                                          js2n.record.Record
                                            {
                                              additional = 'Some Dyn,
                                              patterns = {},
                                              properties =
                                                { use = js2n.Const "seed-db", },
                                              required = {},
                                            },
                                          Array Dyn
                                        ])
                                      (std.contract.any_of
                                        [
                                          js2n.Null,
                                          Bool,
                                          Number,
                                          String,
                                          {
                                            use
                                              | std.contract.any_of
                                                [
                                                  js2n.Null,
                                                  Bool,
                                                  Number,
                                                  String,
                                                  { _ | Dyn },
                                                  Array Dyn
                                                ]
                                              | optional,
                                            with
                                              | {
                                                pgSecretName
                                                  | String
                                                  | doc "Secret with Postgresql credentials to execute the script"
                                                  | optional,
                                                seedPath
                                                  | String
                                                  | doc "Path to .sql file in the repo",
                                              },
                                            ..
                                          },
                                          Array Dyn
                                        ]) js2n.Always)))))))),
                    {
                      args
                        | Array String
                        | doc "Arguments to the entrypoint. The container image's CMD is used if this is not provided. Variable references $(VAR_NAME) are expanded using the container's environment. If a variable cannot be resolved, the reference in the input string will be unchanged. Double $$ are reduced to a single $, which allows for escaping the $(VAR_NAME) syntax: i.e. \"$$(VAR_NAME)\" will produce the string literal \"$(VAR_NAME)\". Escaped references will never be expanded, regardless of whether the variable exists or not. Cannot be updated. More info: https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell"
                        | optional,
                      checkout
                        | Bool
                        | doc "Should the repo be checked-out to build. defaults to true"
                        | optional,
                      cpuLimit
                        | String
                        | doc "Kubernetes max cpu for the Job before capping"
                        | optional,
                      cpuRequest
                        | String
                        | doc "Kubernetes cpu reservation for the Job"
                        | optional,
                      entrypoint
                        | Array String
                        | doc "Entrypoint array. Not executed within a shell. The container image's ENTRYPOINT is used if this is not provided. Variable references $(VAR_NAME) are expanded using the container's environment. If a variable cannot be resolved, the reference in the input string will be unchanged. Double $$ are reduced to a single $, which allows for escaping the $(VAR_NAME) syntax: i.e. \"$$(VAR_NAME)\" will produce the string literal \"$(VAR_NAME)\". Escaped references will never be expanded, regardless of whether the variable exists or not. Cannot be updated. More info: https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell"
                        | optional,
                      env | js2n.Always | optional,
                      envFrom | js2n.Always | optional,
                      image
                        | String
                        | doc "Container image name. More info: https://kubernetes.io/docs/concepts/containers/images This field is optional to allow higher level config management to default or override container images in workload controllers like Deployments and StatefulSets."
                        | optional,
                      kubernetes
                        | Bool
                        | doc "Allow access to the Kubernetes API."
                        | optional,
                      memoryLimit
                        | String
                        | doc "Kubernetes max memory for the Job before OOMKill"
                        | optional,
                      memoryRequest
                        | String
                        | doc "Kubernetes memory reservation for the Job"
                        | optional,
                      retry | Number | doc "Retry the job n times." | optional,
                      run
                        | String
                        | doc "Commands that will be passed to the job's image."
                        | optional,
                      seccompProfile
                        | {
                          localhostProfile
                            | String
                            | doc "localhostProfile indicates a profile defined in a file on the node should be used. The profile must be preconfigured on the node to work. Must be a descending path, relative to the kubelet's configured seccomp profile location. Must only be set if type is \"Localhost\"."
                            | optional,
                          type
                            | String
                            | doc m%"
                              type indicates which kind of seccomp profile will be applied. Valid options are:
                              
                              Localhost - a profile defined in a file on the node should be used. RuntimeDefault - the container runtime default profile should be used. Unconfined - no profile should be applied.
                              
                              
                            "%,
                          ..
                        }
                        | doc "SeccompProfile defines a pod/container's seccomp profile settings. Only one profile source may be set."
                        | optional,
                      use
                        | std.enum.TagOrString
                        | [|
                          'seed-db,
                          'psql,
                          'pg-restore,
                          'drop-db,
                          'deactivate,
                          'create-db,
                          'build-kaniko,
                          'build
                        |]
                        | optional,
                      volumeMounts | js2n.Always | optional,
                      volumes | js2n.Always | optional,
                      with | js2n.Always | optional,
                      "~needs"
                        | Array String
                        | doc "List of kontinuous dependencies"
                        | optional,
                    }
                  ]
              },
            "~chart" | std.contract.Equal "jobs" | optional,
          },
      "properties.jobs.properties.runs.additionalProperties.else.else.then.properties.with.definitions.build-args" =
        {  .. },
      "properties.jobs.properties.runs.additionalProperties.else.then.properties.with.definitions.build-args" =
        {  .. },
      "properties.jobs.properties.runs.additionalProperties.properties.seccompProfile" =
        {
            localhostProfile
              | String
              | doc "localhostProfile indicates a profile defined in a file on the node should be used. The profile must be preconfigured on the node to work. Must be a descending path, relative to the kubelet's configured seccomp profile location. Must only be set if type is \"Localhost\"."
              | optional,
            type
              | String
              | doc m%"
                type indicates which kind of seccomp profile will be applied. Valid options are:
                
                Localhost - a profile defined in a file on the node should be used. RuntimeDefault - the container runtime default profile should be used. Unconfined - no profile should be applied.
                
                
              "%,
            ..
          },
    }
    in
  js2n.record.Record
      {
        additional =
          'Some
              (std.contract.Sequence
                [
                  js2n.IfThenElse
                    (std.contract.any_of
                      [
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Record
                          {
                            additional = 'Some Dyn,
                            patterns = {},
                            properties = { "~chart" = js2n.Const "app", },
                            required = { "~chart" = true, },
                          },
                        Array Dyn
                      ])
                    (js2n.record.Record
                      {
                        additional = 'None,
                        patterns =
                          {
                              "^\\." =
                                std.contract.any_of [ Bool, Number, String ],
                            },
                        properties =
                          {
                              addVolumes = Array String,
                              autoscale =
                                {
                                    averageUtilization
                                      | {
                                        cpu | Number | optional,
                                        memory | Number | optional,
                                        ..
                                      }
                                      | doc "Autoscaling averageUtilization tuning"
                                      | optional,
                                    enabled
                                      | Bool
                                      | doc "Enable Horizontal pod autoscaling"
                                      | optional,
                                    maxReplicas
                                      | Number
                                      | doc "Minimum number of replicas"
                                      | optional,
                                    minReplicas
                                      | Number
                                      | doc "Minimum number of replicas"
                                      | optional,
                                    ..
                                  },
                              certSecretName = String,
                              containerPort =
                                std.contract.any_of [ Number, String ],
                              env =
                                Array
                                    {
                                      name
                                        | String
                                        | doc "Name of the environment variable. Must be a C_IDENTIFIER.",
                                      value
                                        | String
                                        | doc "Variable references $(VAR_NAME) are expanded using the previously defined environment variables in the container and any service environment variables. If a variable cannot be resolved, the reference in the input string will be unchanged. Double $$ are reduced to a single $, which allows for escaping the $(VAR_NAME) syntax: i.e. \"$$(VAR_NAME)\" will produce the string literal \"$(VAR_NAME)\". Escaped references will never be expanded, regardless of whether the variable exists or not. Defaults to \"\"."
                                        | optional,
                                      valueFrom
                                        | {
                                          configMapKeyRef
                                            | {
                                              key
                                                | String
                                                | doc "The key to select.",
                                              name
                                                | String
                                                | doc "Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names"
                                                | optional,
                                              "optional"
                                                | Bool
                                                | doc "Specify whether the ConfigMap or its key must be defined"
                                                | optional,
                                              ..
                                            }
                                            | doc "Selects a key of a ConfigMap."
                                            | optional,
                                          fieldRef
                                            | {
                                              apiVersion
                                                | String
                                                | doc "Version of the schema the FieldPath is written in terms of, defaults to \"v1\"."
                                                | optional,
                                              fieldPath
                                                | String
                                                | doc "Path of the field to select in the specified API version.",
                                              ..
                                            }
                                            | doc "Selects a field of the pod: supports metadata.name, metadata.namespace, `metadata.labels['<KEY>']`, `metadata.annotations['<KEY>']`, spec.nodeName, spec.serviceAccountName, status.hostIP, status.podIP, status.podIPs."
                                            | optional,
                                          resourceFieldRef
                                            | {
                                              containerName
                                                | String
                                                | doc "Container name: required for volumes, optional for env vars"
                                                | optional,
                                              divisor
                                                | std.contract.any_of
                                                  [
                                                    js2n.Null,
                                                    Bool,
                                                    { _ | Dyn },
                                                    Array Dyn,
                                                    Number,
                                                    String
                                                  ]
                                                | doc "Specifies the output format of the exposed resources, defaults to \"1\""
                                                | optional,
                                              resource
                                                | String
                                                | doc "Required: resource to select",
                                              ..
                                            }
                                            | doc "Selects a resource of the container: only resources limits and requests (limits.cpu, limits.memory, limits.ephemeral-storage, requests.cpu, requests.memory and requests.ephemeral-storage) are currently supported."
                                            | optional,
                                          secretKeyRef
                                            | {
                                              key
                                                | String
                                                | doc "The key of the secret to select from.  Must be a valid secret key.",
                                              name
                                                | String
                                                | doc "Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names"
                                                | optional,
                                              "optional"
                                                | Bool
                                                | doc "Specify whether the Secret or its key must be defined"
                                                | optional,
                                              ..
                                            }
                                            | doc "Selects a key of a secret in the pod's namespace"
                                            | optional,
                                          ..
                                        }
                                        | doc "Source for the environment variable's value. Cannot be used if value is not empty."
                                        | optional,
                                      ..
                                    },
                              envFrom =
                                Array
                                    {
                                      configMapRef
                                        | {
                                          name
                                            | String
                                            | doc "Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names"
                                            | optional,
                                          "optional"
                                            | Bool
                                            | doc "Specify whether the ConfigMap must be defined"
                                            | optional,
                                          ..
                                        }
                                        | doc "The ConfigMap to select from"
                                        | optional,
                                      prefix
                                        | String
                                        | doc "An optional identifier to prepend to each key in the ConfigMap. Must be a C_IDENTIFIER."
                                        | optional,
                                      secretRef
                                        | {
                                          name
                                            | String
                                            | doc "Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names"
                                            | optional,
                                          "optional"
                                            | Bool
                                            | doc "Specify whether the Secret must be defined"
                                            | optional,
                                          ..
                                        }
                                        | doc "The Secret to select from"
                                        | optional,
                                      ..
                                    },
                              host = String,
                              image = String,
                              imagePackage = String,
                              imageProject = String,
                              imageRepository = String,
                              ingress =
                                {
                                    annotations
                                      | {
                                        "nginx.ingress.kubernetes.io/affinity"
                                          | String
                                          | doc "type: cookie. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#session-affinity"
                                          | optional,
                                        "nginx.ingress.kubernetes.io/affinity-canary-behavior"
                                          | String
                                          | doc "type: \"sticky\" or \"legacy\". see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#session-affinity"
                                          | optional,
                                        "nginx.ingress.kubernetes.io/affinity-mode"
                                          | String
                                          | doc "type: \"balanced\" or \"persistent\". see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#session-affinity"
                                          | optional,
                                        "nginx.ingress.kubernetes.io/app-root"
                                          | String
                                          | doc "type: string. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#rewrite"
                                          | optional,
                                        "nginx.ingress.kubernetes.io/auth-cache-duration"
                                          | String
                                          | doc "type: string. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#external-authentication"
                                          | optional,
                                        "nginx.ingress.kubernetes.io/auth-cache-key"
                                          | String
                                          | doc "type: string. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#external-authentication"
                                          | optional,
                                        "nginx.ingress.kubernetes.io/auth-keepalive"
                                          | Number
                                          | doc "type: number. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#external-authentication"
                                          | optional,
                                        "nginx.ingress.kubernetes.io/auth-keepalive-requests"
                                          | Number
                                          | doc "type: number. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#external-authentication"
                                          | optional,
                                        "nginx.ingress.kubernetes.io/auth-keepalive-share-vars"
                                          | String
                                          | doc "type: \"true\" or \"false\". see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#external-authentication"
                                          | optional,
                                        "nginx.ingress.kubernetes.io/auth-keepalive-timeout"
                                          | Number
                                          | doc "type: number. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#external-authentication"
                                          | optional,
                                        "nginx.ingress.kubernetes.io/auth-proxy-set-headers"
                                          | String
                                          | doc "type: string. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#external-authentication"
                                          | optional,
                                        "nginx.ingress.kubernetes.io/auth-realm"
                                          | String
                                          | doc "type: string. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#authentication"
                                          | optional,
                                        "nginx.ingress.kubernetes.io/auth-secret"
                                          | String
                                          | doc "type: string. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#authentication"
                                          | optional,
                                        "nginx.ingress.kubernetes.io/auth-secret-type"
                                          | String
                                          | doc "type: string. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#authentication"
                                          | optional,
                                        "nginx.ingress.kubernetes.io/auth-snippet"
                                          | String
                                          | doc "type: string. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#external-authentication"
                                          | optional,
                                        "nginx.ingress.kubernetes.io/auth-tls-error-page"
                                          | String
                                          | doc "type: string. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#client-certificate-authentication"
                                          | optional,
                                        "nginx.ingress.kubernetes.io/auth-tls-match-cn"
                                          | String
                                          | doc "type: string. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#client-certificate-authentication"
                                          | optional,
                                        "nginx.ingress.kubernetes.io/auth-tls-pass-certificate-to-upstream"
                                          | String
                                          | doc "type: \"true\" or \"false\". see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#client-certificate-authentication"
                                          | optional,
                                        "nginx.ingress.kubernetes.io/auth-tls-secret"
                                          | String
                                          | doc "type: string. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#client-certificate-authentication"
                                          | optional,
                                        "nginx.ingress.kubernetes.io/auth-tls-verify-client"
                                          | String
                                          | doc "type: string. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#client-certificate-authentication"
                                          | optional,
                                        "nginx.ingress.kubernetes.io/auth-tls-verify-depth"
                                          | Number
                                          | doc "type: number. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#client-certificate-authentication"
                                          | optional,
                                        "nginx.ingress.kubernetes.io/auth-type"
                                          | String
                                          | doc "type: \"basic\" or \"digest\". see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#authentication"
                                          | optional,
                                        "nginx.ingress.kubernetes.io/auth-url"
                                          | String
                                          | doc "type: string. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#external-authentication"
                                          | optional,
                                        "nginx.ingress.kubernetes.io/backend-protocol"
                                          | String
                                          | doc "type: string. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#backend-protocol"
                                          | optional,
                                        "nginx.ingress.kubernetes.io/canary"
                                          | String
                                          | doc "type: \"true\" or \"false\". see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#canary"
                                          | optional,
                                        "nginx.ingress.kubernetes.io/canary-by-cookie"
                                          | String
                                          | doc "type: string. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#canary"
                                          | optional,
                                        "nginx.ingress.kubernetes.io/canary-by-header"
                                          | String
                                          | doc "type: string. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#canary"
                                          | optional,
                                        "nginx.ingress.kubernetes.io/canary-by-header-pattern"
                                          | String
                                          | doc "type: string. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#canary"
                                          | optional,
                                        "nginx.ingress.kubernetes.io/canary-by-header-value"
                                          | String
                                          | doc "type: string. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#canary"
                                          | optional,
                                        "nginx.ingress.kubernetes.io/canary-weight"
                                          | Number
                                          | doc "type: number. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#canary"
                                          | optional,
                                        "nginx.ingress.kubernetes.io/canary-weight-total"
                                          | Number
                                          | doc "type: number. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#canary"
                                          | optional,
                                        "nginx.ingress.kubernetes.io/client-body-buffer-size"
                                          | String
                                          | doc "type: string. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#client-body-buffer-size"
                                          | optional,
                                        "nginx.ingress.kubernetes.io/configuration-snippet"
                                          | String
                                          | doc "type: string. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#configuration-snippet"
                                          | optional,
                                        "nginx.ingress.kubernetes.io/connection-proxy-header"
                                          | String
                                          | doc "type: string. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#connection-proxy-header"
                                          | optional,
                                        "nginx.ingress.kubernetes.io/cors-allow-credentials"
                                          | String
                                          | doc "type: \"true\" or \"false\". see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#enable-cors"
                                          | optional,
                                        "nginx.ingress.kubernetes.io/cors-allow-headers"
                                          | String
                                          | doc "type: string. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#enable-cors"
                                          | optional,
                                        "nginx.ingress.kubernetes.io/cors-allow-methods"
                                          | String
                                          | doc "type: string. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#enable-cors"
                                          | optional,
                                        "nginx.ingress.kubernetes.io/cors-allow-origin"
                                          | String
                                          | doc "type: string. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#enable-cors"
                                          | optional,
                                        "nginx.ingress.kubernetes.io/cors-expose-headers"
                                          | String
                                          | doc "type: string. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#enable-cors"
                                          | optional,
                                        "nginx.ingress.kubernetes.io/cors-max-age"
                                          | Number
                                          | doc "type: number. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#enable-cors"
                                          | optional,
                                        "nginx.ingress.kubernetes.io/custom-http-errors"
                                          | String
                                          | doc "type: []int. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#custom-http-errors"
                                          | optional,
                                        "nginx.ingress.kubernetes.io/default-backend"
                                          | String
                                          | doc "type: string. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#default-backend"
                                          | optional,
                                        "nginx.ingress.kubernetes.io/denylist-source-range"
                                          | String
                                          | doc "type: CIDR. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#denylist-source-range"
                                          | optional,
                                        "nginx.ingress.kubernetes.io/enable-access-log"
                                          | String
                                          | doc "type: \"true\" or \"false\". see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#enable-access-log"
                                          | optional,
                                        "nginx.ingress.kubernetes.io/enable-cors"
                                          | String
                                          | doc "type: \"true\" or \"false\". see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#enable-cors"
                                          | optional,
                                        "nginx.ingress.kubernetes.io/enable-global-auth"
                                          | String
                                          | doc "type: \"true\" or \"false\". see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#external-authentication"
                                          | optional,
                                        "nginx.ingress.kubernetes.io/enable-modsecurity"
                                          | String
                                          | doc "type: bool. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#modsecurity"
                                          | optional,
                                        "nginx.ingress.kubernetes.io/enable-opentelemetry"
                                          | String
                                          | doc "type: \"true\" or \"false\". see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#enable-opentelemetry"
                                          | optional,
                                        "nginx.ingress.kubernetes.io/enable-opentracing"
                                          | String
                                          | doc "type: \"true\" or \"false\". see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#enable-opentracing"
                                          | optional,
                                        "nginx.ingress.kubernetes.io/enable-owasp-core-rules"
                                          | String
                                          | doc "type: bool. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#modsecurity"
                                          | optional,
                                        "nginx.ingress.kubernetes.io/enable-rewrite-log"
                                          | String
                                          | doc "type: \"true\" or \"false\". see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#enable-rewrite-log"
                                          | optional,
                                        "nginx.ingress.kubernetes.io/force-ssl-redirect"
                                          | String
                                          | doc "type: \"true\" or \"false\". see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#server-side-https-enforcement-through-redirect"
                                          | optional,
                                        "nginx.ingress.kubernetes.io/from-to-www-redirect"
                                          | String
                                          | doc "type: \"true\" or \"false\". see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#redirect-fromto-www"
                                          | optional,
                                        "nginx.ingress.kubernetes.io/global-rate-limit"
                                          | Number
                                          | doc "type: number. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#global-rate-limiting"
                                          | optional,
                                        "nginx.ingress.kubernetes.io/global-rate-limit-ignored-cidrs"
                                          | String
                                          | doc "type: string. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#global-rate-limiting"
                                          | optional,
                                        "nginx.ingress.kubernetes.io/global-rate-limit-key"
                                          | String
                                          | doc "type: string. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#global-rate-limiting"
                                          | optional,
                                        "nginx.ingress.kubernetes.io/global-rate-limit-window"
                                          | String
                                          | doc "type: duration. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#global-rate-limiting"
                                          | optional,
                                        "nginx.ingress.kubernetes.io/http2-push-preload"
                                          | String
                                          | doc "type: \"true\" or \"false\". see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#http2-push-preload"
                                          | optional,
                                        "nginx.ingress.kubernetes.io/limit-connections"
                                          | Number
                                          | doc "type: number. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#rate-limiting"
                                          | optional,
                                        "nginx.ingress.kubernetes.io/limit-rps"
                                          | Number
                                          | doc "type: number. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#rate-limiting"
                                          | optional,
                                        "nginx.ingress.kubernetes.io/load-balance"
                                          | String
                                          | doc "type: string. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#custom-nginx-load-balancing"
                                          | optional,
                                        "nginx.ingress.kubernetes.io/mirror-host"
                                          | String
                                          | doc "type: string. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#mirror"
                                          | optional,
                                        "nginx.ingress.kubernetes.io/mirror-request-body"
                                          | String
                                          | doc "type: string. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#mirror"
                                          | optional,
                                        "nginx.ingress.kubernetes.io/mirror-target"
                                          | String
                                          | doc "type: string. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#mirror"
                                          | optional,
                                        "nginx.ingress.kubernetes.io/modsecurity-snippet"
                                          | String
                                          | doc "type: string. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#modsecurity"
                                          | optional,
                                        "nginx.ingress.kubernetes.io/modsecurity-transaction-id"
                                          | String
                                          | doc "type: string. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#modsecurity"
                                          | optional,
                                        "nginx.ingress.kubernetes.io/opentelemetry-trust-incoming-span"
                                          | String
                                          | doc "type: \"true\" or \"false\". see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#opentelemetry-trust-incoming-spans"
                                          | optional,
                                        "nginx.ingress.kubernetes.io/opentracing-trust-incoming-span"
                                          | String
                                          | doc "type: \"true\" or \"false\". see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#opentracing-trust-incoming-span"
                                          | optional,
                                        "nginx.ingress.kubernetes.io/permanent-redirect"
                                          | String
                                          | doc "type: string. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#permanent-redirect"
                                          | optional,
                                        "nginx.ingress.kubernetes.io/permanent-redirect-code"
                                          | Number
                                          | doc "type: number. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#permanent-redirect-code"
                                          | optional,
                                        "nginx.ingress.kubernetes.io/preserve-trailing-slash"
                                          | String
                                          | doc "type: \"true\" or \"false\". see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#server-side-https-enforcement-through-redirect"
                                          | optional,
                                        "nginx.ingress.kubernetes.io/proxy-body-size"
                                          | String
                                          | doc "type: string. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#custom-max-body-size"
                                          | optional,
                                        "nginx.ingress.kubernetes.io/proxy-buffer-size"
                                          | String
                                          | doc "type: string. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#proxy-buffer-size"
                                          | optional,
                                        "nginx.ingress.kubernetes.io/proxy-buffering"
                                          | String
                                          | doc "type: string. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#proxy-buffering"
                                          | optional,
                                        "nginx.ingress.kubernetes.io/proxy-buffers-number"
                                          | Number
                                          | doc "type: number. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#proxy-buffers-number"
                                          | optional,
                                        "nginx.ingress.kubernetes.io/proxy-connect-timeout"
                                          | Number
                                          | doc "type: number. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#custom-timeouts"
                                          | optional,
                                        "nginx.ingress.kubernetes.io/proxy-cookie-domain"
                                          | String
                                          | doc "type: string. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#proxy-cookie-domain"
                                          | optional,
                                        "nginx.ingress.kubernetes.io/proxy-cookie-path"
                                          | String
                                          | doc "type: string. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#proxy-cookie-path"
                                          | optional,
                                        "nginx.ingress.kubernetes.io/proxy-http-version"
                                          | String
                                          | doc "type: \"1.0\" or \"1.1\". see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#proxy-http-version"
                                          | optional,
                                        "nginx.ingress.kubernetes.io/proxy-max-temp-file-size"
                                          | String
                                          | doc "type: string. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#proxy-max-temp-file-size"
                                          | optional,
                                        "nginx.ingress.kubernetes.io/proxy-next-upstream"
                                          | String
                                          | doc "type: string. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#custom-timeouts"
                                          | optional,
                                        "nginx.ingress.kubernetes.io/proxy-next-upstream-timeout"
                                          | Number
                                          | doc "type: number. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#custom-timeouts"
                                          | optional,
                                        "nginx.ingress.kubernetes.io/proxy-next-upstream-tries"
                                          | Number
                                          | doc "type: number. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#custom-timeouts"
                                          | optional,
                                        "nginx.ingress.kubernetes.io/proxy-read-timeout"
                                          | Number
                                          | doc "type: number. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#custom-timeouts"
                                          | optional,
                                        "nginx.ingress.kubernetes.io/proxy-redirect-from"
                                          | String
                                          | doc "type: string. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#proxy-redirect"
                                          | optional,
                                        "nginx.ingress.kubernetes.io/proxy-redirect-to"
                                          | String
                                          | doc "type: string. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#proxy-redirect"
                                          | optional,
                                        "nginx.ingress.kubernetes.io/proxy-request-buffering"
                                          | String
                                          | doc "type: string. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#custom-timeouts"
                                          | optional,
                                        "nginx.ingress.kubernetes.io/proxy-send-timeout"
                                          | Number
                                          | doc "type: number. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#custom-timeouts"
                                          | optional,
                                        "nginx.ingress.kubernetes.io/proxy-ssl-ciphers"
                                          | String
                                          | doc "type: string. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#backend-certificate-authentication"
                                          | optional,
                                        "nginx.ingress.kubernetes.io/proxy-ssl-name"
                                          | String
                                          | doc "type: string. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#backend-certificate-authentication"
                                          | optional,
                                        "nginx.ingress.kubernetes.io/proxy-ssl-protocols"
                                          | String
                                          | doc "type: string. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#backend-certificate-authentication"
                                          | optional,
                                        "nginx.ingress.kubernetes.io/proxy-ssl-secret"
                                          | String
                                          | doc "type: string. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#backend-certificate-authentication"
                                          | optional,
                                        "nginx.ingress.kubernetes.io/proxy-ssl-server-name"
                                          | String
                                          | doc "type: string. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#backend-certificate-authentication"
                                          | optional,
                                        "nginx.ingress.kubernetes.io/proxy-ssl-verify"
                                          | String
                                          | doc "type: string. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#backend-certificate-authentication"
                                          | optional,
                                        "nginx.ingress.kubernetes.io/proxy-ssl-verify-depth"
                                          | Number
                                          | doc "type: number. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#backend-certificate-authentication"
                                          | optional,
                                        "nginx.ingress.kubernetes.io/rewrite-target"
                                          | String
                                          | doc "type: URI. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#rewrite"
                                          | optional,
                                        "nginx.ingress.kubernetes.io/satisfy"
                                          | String
                                          | doc "type: string. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#satisfy"
                                          | optional,
                                        "nginx.ingress.kubernetes.io/server-alias"
                                          | String
                                          | doc "type: string. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#server-alias"
                                          | optional,
                                        "nginx.ingress.kubernetes.io/server-snippet"
                                          | String
                                          | doc "type: string. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#server-snippet"
                                          | optional,
                                        "nginx.ingress.kubernetes.io/service-upstream"
                                          | String
                                          | doc "type: \"true\" or \"false\". see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#service-upstream"
                                          | optional,
                                        "nginx.ingress.kubernetes.io/session-cookie-change-on-failure"
                                          | String
                                          | doc "type: \"true\" or \"false\". see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#cookie-affinity"
                                          | optional,
                                        "nginx.ingress.kubernetes.io/session-cookie-conditional-samesite-none"
                                          | String
                                          | doc "type: \"true\" or \"false\". see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#cookie-affinity"
                                          | optional,
                                        "nginx.ingress.kubernetes.io/session-cookie-domain"
                                          | String
                                          | doc "type: string. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#cookie-affinity"
                                          | optional,
                                        "nginx.ingress.kubernetes.io/session-cookie-name"
                                          | String
                                          | doc "type: string. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#cookie-affinity"
                                          | optional,
                                        "nginx.ingress.kubernetes.io/session-cookie-path"
                                          | String
                                          | doc "type: string. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#cookie-affinity"
                                          | optional,
                                        "nginx.ingress.kubernetes.io/session-cookie-samesite"
                                          | String
                                          | doc "type: string. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#cookie-affinity"
                                          | optional,
                                        "nginx.ingress.kubernetes.io/ssl-ciphers"
                                          | String
                                          | doc "type: string. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#ssl-ciphers"
                                          | optional,
                                        "nginx.ingress.kubernetes.io/ssl-passthrough"
                                          | String
                                          | doc "type: \"true\" or \"false\". see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#ssl-passthrough"
                                          | optional,
                                        "nginx.ingress.kubernetes.io/ssl-prefer-server-ciphers"
                                          | String
                                          | doc "type: \"true\" or \"false\". see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#ssl-ciphers"
                                          | optional,
                                        "nginx.ingress.kubernetes.io/ssl-redirect"
                                          | String
                                          | doc "type: \"true\" or \"false\". see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#server-side-https-enforcement-through-redirect"
                                          | optional,
                                        "nginx.ingress.kubernetes.io/stream-snippet"
                                          | String
                                          | doc "type: string. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#stream-snippet"
                                          | optional,
                                        "nginx.ingress.kubernetes.io/temporal-redirect"
                                          | String
                                          | doc "type: string. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#temporal-redirect"
                                          | optional,
                                        "nginx.ingress.kubernetes.io/upstream-hash-by"
                                          | String
                                          | doc "type: string. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#custom-nginx-upstream-hashing"
                                          | optional,
                                        "nginx.ingress.kubernetes.io/upstream-vhost"
                                          | String
                                          | doc "type: string. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#custom-nginx-upstream-vhost"
                                          | optional,
                                        "nginx.ingress.kubernetes.io/use-regex"
                                          | String
                                          | doc "type: bool. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#use-regex"
                                          | optional,
                                        "nginx.ingress.kubernetes.io/whitelist-source-range"
                                          | String
                                          | doc "type: CIDR. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#whitelist-source-range"
                                          | optional,
                                        "nginx.ingress.kubernetes.io/x-forwarded-prefix"
                                          | String
                                          | doc "type: string. see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#x-forwarded-prefix-header"
                                          | optional,
                                      }
                                      | doc "NGINX ingress annotations, see https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/"
                                      | optional,
                                    enabled
                                      | Bool
                                      | doc "Ingress enable. default to true"
                                      | optional,
                                    path
                                      | String
                                      | doc "URL path to map the ingress to"
                                      | optional,
                                    paths
                                      | Array String
                                      | doc "List of URL paths to map the ingress to"
                                      | optional,
                                    rewriteTarget
                                      | String
                                      | doc "Redirect path on the service"
                                      | optional,
                                  },
                              livenessProbe =
                                std.contract.any_of
                                    [
                                      js2n.Null,
                                      Bool,
                                      { _ | Dyn },
                                      Array Dyn,
                                      Number,
                                      String
                                    ],
                              probesPath = String,
                              probesPort =
                                std.contract.any_of [ Number, String ],
                              readinessProbe =
                                std.contract.any_of
                                    [
                                      js2n.Null,
                                      Bool,
                                      { _ | Dyn },
                                      Array Dyn,
                                      Number,
                                      String
                                    ],
                              redirectFrom = Array String,
                              replicas = std.number.Integer,
                              resources =
                                {
                                    limits
                                      | {
                                        _ | std.contract.any_of
                                          [ Number, String ]
                                      }
                                      | doc "Limits describes the maximum amount of compute resources allowed. More info: https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/"
                                      | optional,
                                    requests
                                      | {
                                        _ | std.contract.any_of
                                          [
                                            js2n.Null,
                                            Bool,
                                            { _ | Dyn },
                                            Array Dyn,
                                            Number,
                                            String
                                          ]
                                      }
                                      | doc "Requests describes the minimum amount of compute resources required. If Requests is omitted for a container, it defaults to Limits if that is explicitly specified, otherwise to an implementation-defined value. More info: https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/"
                                      | optional,
                                    ..
                                  },
                              securityContext =
                                {
                                    fsGroup
                                      | std.number.Integer
                                      | doc m%"
                                        A special supplemental group that applies to all containers in a pod. Some volume types allow the Kubelet to change the ownership of that volume to be owned by the pod:
                                        
                                        1. The owning GID will be the FSGroup 2. The setgid bit is set (new files created in the volume will be owned by FSGroup) 3. The permission bits are OR'd with rw-rw----
                                        
                                        If unset, the Kubelet will not modify the ownership and permissions of any volume. Note that this field cannot be set when spec.os.name is windows.
                                      "%
                                      | optional,
                                    fsGroupChangePolicy
                                      | String
                                      | doc "fsGroupChangePolicy defines behavior of changing ownership and permission of the volume before being exposed inside Pod. This field will only apply to volume types which support fsGroup based ownership(and permissions). It will have no effect on ephemeral volume types such as: secret, configmaps and emptydir. Valid values are \"OnRootMismatch\" and \"Always\". If not specified, \"Always\" is used. Note that this field cannot be set when spec.os.name is windows."
                                      | optional,
                                    runAsGroup
                                      | std.number.Integer
                                      | doc "The GID to run the entrypoint of the container process. Uses runtime default if unset. May also be set in SecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence for that container. Note that this field cannot be set when spec.os.name is windows."
                                      | optional,
                                    runAsNonRoot
                                      | Bool
                                      | doc "Indicates that the container must run as a non-root user. If true, the Kubelet will validate the image at runtime to ensure that it does not run as UID 0 (root) and fail to start the container if it does. If unset or false, no such validation will be performed. May also be set in SecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence."
                                      | optional,
                                    runAsUser
                                      | std.number.Integer
                                      | doc "The UID to run the entrypoint of the container process. Defaults to user specified in image metadata if unspecified. May also be set in SecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence for that container. Note that this field cannot be set when spec.os.name is windows."
                                      | optional,
                                    seLinuxOptions
                                      | {
                                        level
                                          | String
                                          | doc "Level is SELinux level label that applies to the container."
                                          | optional,
                                        role
                                          | String
                                          | doc "Role is a SELinux role label that applies to the container."
                                          | optional,
                                        type
                                          | String
                                          | doc "Type is a SELinux type label that applies to the container."
                                          | optional,
                                        user
                                          | String
                                          | doc "User is a SELinux user label that applies to the container."
                                          | optional,
                                        ..
                                      }
                                      | doc "The SELinux context to be applied to all containers. If unspecified, the container runtime will allocate a random SELinux context for each container.  May also be set in SecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence for that container. Note that this field cannot be set when spec.os.name is windows."
                                      | optional,
                                    seccompProfile
                                      | refs."properties.jobs.properties.runs.additionalProperties.properties.seccompProfile"
                                      | doc "The seccomp options to use by the containers in this pod. Note that this field cannot be set when spec.os.name is windows."
                                      | optional,
                                    supplementalGroups
                                      | Array std.number.Integer
                                      | doc "A list of groups applied to the first process run in each container, in addition to the container's primary GID.  If unspecified, no groups will be added to any container. Note that this field cannot be set when spec.os.name is windows."
                                      | optional,
                                    sysctls
                                      | Array
                                        {
                                          name
                                            | String
                                            | doc "Name of a property to set",
                                          value
                                            | String
                                            | doc "Value of a property to set",
                                          ..
                                        }
                                      | doc "Sysctls hold a list of namespaced sysctls used for the pod. Pods with unsupported sysctls (by the container runtime) might fail to launch. Note that this field cannot be set when spec.os.name is windows."
                                      | optional,
                                    windowsOptions
                                      | {
                                        gmsaCredentialSpec
                                          | String
                                          | doc "GMSACredentialSpec is where the GMSA admission webhook (https://github.com/kubernetes-sigs/windows-gmsa) inlines the contents of the GMSA credential spec named by the GMSACredentialSpecName field."
                                          | optional,
                                        gmsaCredentialSpecName
                                          | String
                                          | doc "GMSACredentialSpecName is the name of the GMSA credential spec to use."
                                          | optional,
                                        hostProcess
                                          | Bool
                                          | doc "HostProcess determines if a container should be run as a 'Host Process' container. This field is alpha-level and will only be honored by components that enable the WindowsHostProcessContainers feature flag. Setting this field without the feature flag will result in errors when validating the Pod. All of a Pod's containers must have the same effective HostProcess value (it is not allowed to have a mix of HostProcess containers and non-HostProcess containers).  In addition, if HostProcess is true then HostNetwork must also be set to true."
                                          | optional,
                                        runAsUserName
                                          | String
                                          | doc "The UserName in Windows to run the entrypoint of the container process. Defaults to the user specified in image metadata if unspecified. May also be set in PodSecurityContext. If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence."
                                          | optional,
                                        ..
                                      }
                                      | doc "The Windows specific settings applied to all containers. If unspecified, the options within a container's SecurityContext will be used. If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence. Note that this field cannot be set when spec.os.name is linux."
                                      | optional,
                                    ..
                                  },
                              startupProbe =
                                {
                                    exec
                                      | {
                                        command
                                          | Array String
                                          | doc "Command is the command line to execute inside the container, the working directory for the command  is root ('/') in the container's filesystem. The command is simply exec'd, it is not run inside a shell, so traditional shell instructions ('|', etc) won't work. To use a shell, you need to explicitly call out to that shell. Exit status of 0 is treated as live/healthy and non-zero is unhealthy."
                                          | optional,
                                        ..
                                      }
                                      | doc "Exec specifies the action to take."
                                      | optional,
                                    failureThreshold
                                      | std.number.Integer
                                      | doc "Minimum consecutive failures for the probe to be considered failed after having succeeded. Defaults to 3. Minimum value is 1."
                                      | optional,
                                    grpc
                                      | {
                                        port
                                          | std.number.Integer
                                          | doc "Port number of the gRPC service. Number must be in the range 1 to 65535.",
                                        service
                                          | String
                                          | doc m%"
                                            Service is the name of the service to place in the gRPC HealthCheckRequest (see https://github.com/grpc/grpc/blob/master/doc/health-checking.md).
                                            
                                            If this is not specified, the default behavior is defined by gRPC.
                                          "%
                                          | optional,
                                        ..
                                      }
                                      | doc "GRPC specifies an action involving a GRPC port. This is a beta field and requires enabling GRPCContainerProbe feature gate."
                                      | optional,
                                    httpGet
                                      | {
                                        host
                                          | String
                                          | doc "Host name to connect to, defaults to the pod IP. You probably want to set \"Host\" in httpHeaders instead."
                                          | optional,
                                        httpHeaders
                                          | Array
                                            {
                                              name
                                                | String
                                                | doc "The header field name",
                                              value
                                                | String
                                                | doc "The header field value",
                                              ..
                                            }
                                          | doc "Custom headers to set in the request. HTTP allows repeated headers."
                                          | optional,
                                        path
                                          | String
                                          | doc "Path to access on the HTTP server."
                                          | optional,
                                        port
                                          | std.contract.any_of
                                            [ String, std.number.Integer ]
                                          | doc "Name or number of the port to access on the container. Number must be in the range 1 to 65535. Name must be an IANA_SVC_NAME.",
                                        scheme
                                          | String
                                          | doc m%"
                                            Scheme to use for connecting to the host. Defaults to HTTP.
                                            
                                            
                                          "%
                                          | optional,
                                        ..
                                      }
                                      | doc "HTTPGet specifies the http request to perform."
                                      | optional,
                                    initialDelaySeconds
                                      | std.number.Integer
                                      | doc "Number of seconds after the container has started before liveness probes are initiated. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes"
                                      | optional,
                                    periodSeconds
                                      | std.number.Integer
                                      | doc "How often (in seconds) to perform the probe. Default to 10 seconds. Minimum value is 1."
                                      | optional,
                                    successThreshold
                                      | std.number.Integer
                                      | doc "Minimum consecutive successes for the probe to be considered successful after having failed. Defaults to 1. Must be 1 for liveness and startup. Minimum value is 1."
                                      | optional,
                                    tcpSocket
                                      | {
                                        host
                                          | String
                                          | doc "Optional: Host name to connect to, defaults to the pod IP."
                                          | optional,
                                        port
                                          | std.contract.any_of
                                            [
                                              js2n.Null,
                                              Bool,
                                              { _ | Dyn },
                                              Array Dyn,
                                              Number,
                                              String
                                            ]
                                          | doc "Number or name of the port to access on the container. Number must be in the range 1 to 65535. Name must be an IANA_SVC_NAME.",
                                        ..
                                      }
                                      | doc "TCPSocket specifies an action involving a TCP port."
                                      | optional,
                                    terminationGracePeriodSeconds
                                      | std.number.Integer
                                      | doc "Optional duration in seconds the pod needs to terminate gracefully upon probe failure. The grace period is the duration in seconds after the processes running in the pod are sent a termination signal and the time when the processes are forcibly halted with a kill signal. Set this value longer than the expected cleanup time for your process. If this value is nil, the pod's terminationGracePeriodSeconds will be used. Otherwise, this value overrides the value provided by the pod spec. Value must be non-negative integer. The value zero indicates stop immediately via the kill signal (no opportunity to shut down). This is a beta field and requires enabling ProbeTerminationGracePeriod feature gate. Minimum value is 1. spec.terminationGracePeriodSeconds is used if unset."
                                      | optional,
                                    timeoutSeconds
                                      | std.number.Integer
                                      | doc "Number of seconds after which the probe times out. Defaults to 1 second. Minimum value is 1. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes"
                                      | optional,
                                    ..
                                  },
                              strategyType = String,
                              vars = {  .. },
                              volumeMounts =
                                Array
                                    {
                                      mountPath
                                        | String
                                        | doc "Path within the container at which the volume should be mounted.  Must not contain ':'.",
                                      mountPropagation
                                        | String
                                        | doc "mountPropagation determines how mounts are propagated from the host to container and the other way around. When not set, MountPropagationNone is used. This field is beta in 1.10."
                                        | optional,
                                      name
                                        | String
                                        | doc "This must match the Name of a Volume.",
                                      readOnly
                                        | Bool
                                        | doc "Mounted read-only if true, read-write otherwise (false or unspecified). Defaults to false."
                                        | optional,
                                      subPath
                                        | String
                                        | doc "Path within the volume from which the container's volume should be mounted. Defaults to \"\" (volume's root)."
                                        | optional,
                                      subPathExpr
                                        | String
                                        | doc "Expanded path within the volume from which the container's volume should be mounted. Behaves similarly to SubPath but environment variable references $(VAR_NAME) are expanded using the container's environment. Defaults to \"\" (volume's root). SubPathExpr and SubPath are mutually exclusive."
                                        | optional,
                                      ..
                                    },
                              volumes =
                                Array
                                    {
                                      awsElasticBlockStore
                                        | {
                                          fsType
                                            | String
                                            | doc "fsType is the filesystem type of the volume that you want to mount. Tip: Ensure that the filesystem type is supported by the host operating system. Examples: \"ext4\", \"xfs\", \"ntfs\". Implicitly inferred to be \"ext4\" if unspecified. More info: https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore"
                                            | optional,
                                          partition
                                            | std.number.Integer
                                            | doc "partition is the partition in the volume that you want to mount. If omitted, the default is to mount by volume name. Examples: For volume /dev/sda1, you specify the partition as \"1\". Similarly, the volume partition for /dev/sda is \"0\" (or you can leave the property empty)."
                                            | optional,
                                          readOnly
                                            | Bool
                                            | doc "readOnly value true will force the readOnly setting in VolumeMounts. More info: https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore"
                                            | optional,
                                          volumeID
                                            | String
                                            | doc "volumeID is unique ID of the persistent disk resource in AWS (Amazon EBS volume). More info: https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore",
                                          ..
                                        }
                                        | doc "awsElasticBlockStore represents an AWS Disk resource that is attached to a kubelet's host machine and then exposed to the pod. More info: https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore"
                                        | optional,
                                      azureDisk
                                        | {
                                          cachingMode
                                            | String
                                            | doc "cachingMode is the Host Caching mode: None, Read Only, Read Write."
                                            | optional,
                                          diskName
                                            | String
                                            | doc "diskName is the Name of the data disk in the blob storage",
                                          diskURI
                                            | String
                                            | doc "diskURI is the URI of data disk in the blob storage",
                                          fsType
                                            | String
                                            | doc "fsType is Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. \"ext4\", \"xfs\", \"ntfs\". Implicitly inferred to be \"ext4\" if unspecified."
                                            | optional,
                                          kind
                                            | String
                                            | doc "kind expected values are Shared: multiple blob disks per storage account  Dedicated: single blob disk per storage account  Managed: azure managed data disk (only in managed availability set). defaults to shared"
                                            | optional,
                                          readOnly
                                            | Bool
                                            | doc "readOnly Defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts."
                                            | optional,
                                          ..
                                        }
                                        | doc "azureDisk represents an Azure Data Disk mount on the host and bind mount to the pod."
                                        | optional,
                                      azureFile
                                        | {
                                          readOnly
                                            | Bool
                                            | doc "readOnly defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts."
                                            | optional,
                                          secretName
                                            | String
                                            | doc "secretName is the  name of secret that contains Azure Storage Account Name and Key",
                                          shareName
                                            | String
                                            | doc "shareName is the azure share Name",
                                          ..
                                        }
                                        | doc "azureFile represents an Azure File Service mount on the host and bind mount to the pod."
                                        | optional,
                                      cephfs
                                        | {
                                          monitors
                                            | Array String
                                            | doc "monitors is Required: Monitors is a collection of Ceph monitors More info: https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it",
                                          path
                                            | String
                                            | doc "path is Optional: Used as the mounted root, rather than the full Ceph tree, default is /"
                                            | optional,
                                          readOnly
                                            | Bool
                                            | doc "readOnly is Optional: Defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts. More info: https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it"
                                            | optional,
                                          secretFile
                                            | String
                                            | doc "secretFile is Optional: SecretFile is the path to key ring for User, default is /etc/ceph/user.secret More info: https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it"
                                            | optional,
                                          secretRef
                                            | std.contract.any_of
                                              [
                                                js2n.Null,
                                                Bool,
                                                { _ | Dyn },
                                                Array Dyn,
                                                Number,
                                                String
                                              ]
                                            | doc "secretRef is Optional: SecretRef is reference to the authentication secret for User, default is empty. More info: https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it"
                                            | optional,
                                          user
                                            | String
                                            | doc "user is optional: User is the rados user name, default is admin More info: https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it"
                                            | optional,
                                          ..
                                        }
                                        | doc "cephFS represents a Ceph FS mount on the host that shares a pod's lifetime"
                                        | optional,
                                      cinder
                                        | {
                                          fsType
                                            | String
                                            | doc "fsType is the filesystem type to mount. Must be a filesystem type supported by the host operating system. Examples: \"ext4\", \"xfs\", \"ntfs\". Implicitly inferred to be \"ext4\" if unspecified. More info: https://examples.k8s.io/mysql-cinder-pd/README.md"
                                            | optional,
                                          readOnly
                                            | Bool
                                            | doc "readOnly defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts. More info: https://examples.k8s.io/mysql-cinder-pd/README.md"
                                            | optional,
                                          secretRef
                                            | std.contract.any_of
                                              [
                                                js2n.Null,
                                                Bool,
                                                { _ | Dyn },
                                                Array Dyn,
                                                Number,
                                                String
                                              ]
                                            | doc "secretRef is optional: points to a secret object containing parameters used to connect to OpenStack."
                                            | optional,
                                          volumeID
                                            | String
                                            | doc "volumeID used to identify the volume in cinder. More info: https://examples.k8s.io/mysql-cinder-pd/README.md",
                                          ..
                                        }
                                        | doc "cinder represents a cinder volume attached and mounted on kubelets host machine. More info: https://examples.k8s.io/mysql-cinder-pd/README.md"
                                        | optional,
                                      configMap
                                        | {
                                          defaultMode
                                            | std.number.Integer
                                            | doc "defaultMode is optional: mode bits used to set permissions on created files by default. Must be an octal value between 0000 and 0777 or a decimal value between 0 and 511. YAML accepts both octal and decimal values, JSON requires decimal values for mode bits. Defaults to 0644. Directories within the path are not affected by this setting. This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set."
                                            | optional,
                                          items
                                            | Array (
                                              std.contract.any_of
                                                [
                                                  js2n.Null,
                                                  Bool,
                                                  { _ | Dyn },
                                                  Array Dyn,
                                                  Number,
                                                  String
                                                ]
                                            )
                                            | doc "items if unspecified, each key-value pair in the Data field of the referenced ConfigMap will be projected into the volume as a file whose name is the key and content is the value. If specified, the listed keys will be projected into the specified paths, and unlisted keys will not be present. If a key is specified which is not present in the ConfigMap, the volume setup will error unless it is marked optional. Paths must be relative and may not contain the '..' path or start with '..'."
                                            | optional,
                                          name
                                            | String
                                            | doc "Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names"
                                            | optional,
                                          "optional"
                                            | Bool
                                            | doc "optional specify whether the ConfigMap or its keys must be defined"
                                            | optional,
                                          ..
                                        }
                                        | doc "configMap represents a configMap that should populate this volume"
                                        | optional,
                                      csi
                                        | {
                                          driver
                                            | String
                                            | doc "driver is the name of the CSI driver that handles this volume. Consult with your admin for the correct name as registered in the cluster.",
                                          fsType
                                            | String
                                            | doc "fsType to mount. Ex. \"ext4\", \"xfs\", \"ntfs\". If not provided, the empty value is passed to the associated CSI driver which will determine the default filesystem to apply."
                                            | optional,
                                          nodePublishSecretRef
                                            | std.contract.any_of
                                              [
                                                js2n.Null,
                                                Bool,
                                                { _ | Dyn },
                                                Array Dyn,
                                                Number,
                                                String
                                              ]
                                            | doc "nodePublishSecretRef is a reference to the secret object containing sensitive information to pass to the CSI driver to complete the CSI NodePublishVolume and NodeUnpublishVolume calls. This field is optional, and  may be empty if no secret is required. If the secret object contains more than one secret, all secret references are passed."
                                            | optional,
                                          readOnly
                                            | Bool
                                            | doc "readOnly specifies a read-only configuration for the volume. Defaults to false (read/write)."
                                            | optional,
                                          volumeAttributes
                                            | { _ | String }
                                            | doc "volumeAttributes stores driver-specific properties that are passed to the CSI driver. Consult your driver's documentation for supported values."
                                            | optional,
                                          ..
                                        }
                                        | doc "csi (Container Storage Interface) represents ephemeral storage that is handled by certain external CSI drivers (Beta feature)."
                                        | optional,
                                      downwardAPI
                                        | {
                                          defaultMode
                                            | std.number.Integer
                                            | doc "Optional: mode bits to use on created files by default. Must be a Optional: mode bits used to set permissions on created files by default. Must be an octal value between 0000 and 0777 or a decimal value between 0 and 511. YAML accepts both octal and decimal values, JSON requires decimal values for mode bits. Defaults to 0644. Directories within the path are not affected by this setting. This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set."
                                            | optional,
                                          items
                                            | Array
                                              {
                                                fieldRef
                                                  | std.contract.any_of
                                                    [
                                                      js2n.Null,
                                                      Bool,
                                                      { _ | Dyn },
                                                      Array Dyn,
                                                      Number,
                                                      String
                                                    ]
                                                  | doc "Required: Selects a field of the pod: only annotations, labels, name and namespace are supported."
                                                  | optional,
                                                mode
                                                  | std.number.Integer
                                                  | doc "Optional: mode bits used to set permissions on this file, must be an octal value between 0000 and 0777 or a decimal value between 0 and 511. YAML accepts both octal and decimal values, JSON requires decimal values for mode bits. If not specified, the volume defaultMode will be used. This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set."
                                                  | optional,
                                                path
                                                  | String
                                                  | doc "Required: Path is  the relative path name of the file to be created. Must not be absolute or contain the '..' path. Must be utf-8 encoded. The first item of the relative path must not start with '..'",
                                                resourceFieldRef
                                                  | std.contract.any_of
                                                    [
                                                      js2n.Null,
                                                      Bool,
                                                      { _ | Dyn },
                                                      Array Dyn,
                                                      Number,
                                                      String
                                                    ]
                                                  | doc "Selects a resource of the container: only resources limits and requests (limits.cpu, limits.memory, requests.cpu and requests.memory) are currently supported."
                                                  | optional,
                                                ..
                                              }
                                            | doc "Items is a list of downward API volume file"
                                            | optional,
                                          ..
                                        }
                                        | doc "downwardAPI represents downward API about the pod that should populate this volume"
                                        | optional,
                                      emptyDir
                                        | {
                                          medium
                                            | String
                                            | doc "medium represents what type of storage medium should back this directory. The default is \"\" which means to use the node's default medium. Must be an empty string (default) or Memory. More info: https://kubernetes.io/docs/concepts/storage/volumes#emptydir"
                                            | optional,
                                          sizeLimit
                                            | std.contract.any_of
                                              [
                                                js2n.Null,
                                                Bool,
                                                { _ | Dyn },
                                                Array Dyn,
                                                Number,
                                                String
                                              ]
                                            | doc "sizeLimit is the total amount of local storage required for this EmptyDir volume. The size limit is also applicable for memory medium. The maximum usage on memory medium EmptyDir would be the minimum value between the SizeLimit specified here and the sum of memory limits of all containers in a pod. The default is nil which means that the limit is undefined. More info: http://kubernetes.io/docs/user-guide/volumes#emptydir"
                                            | optional,
                                          ..
                                        }
                                        | doc "emptyDir represents a temporary directory that shares a pod's lifetime. More info: https://kubernetes.io/docs/concepts/storage/volumes#emptydir"
                                        | optional,
                                      ephemeral
                                        | {
                                          volumeClaimTemplate
                                            | {
                                              metadata
                                                | {
                                                  annotations
                                                    | { _ | String }
                                                    | doc "Annotations is an unstructured key value map stored with a resource that may be set by external tools to store and retrieve arbitrary metadata. They are not queryable and should be preserved when modifying objects. More info: http://kubernetes.io/docs/user-guide/annotations"
                                                    | optional,
                                                  clusterName
                                                    | String
                                                    | doc m%"
                                                      Deprecated: ClusterName is a legacy field that was always cleared by the system and never used; it will be removed completely in 1.25.
                                                      
                                                      The name in the go struct is changed to help clients detect accidental use.
                                                    "%
                                                    | optional,
                                                  creationTimestamp
                                                    | String
                                                    | doc m%"
                                                      CreationTimestamp is a timestamp representing the server time when this object was created. It is not guaranteed to be set in happens-before order across separate operations. Clients may not set this value. It is represented in RFC3339 form and is in UTC.
                                                      
                                                      Populated by the system. Read-only. Null for lists. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
                                                    "%
                                                    | optional,
                                                  deletionGracePeriodSeconds
                                                    | std.number.Integer
                                                    | doc "Number of seconds allowed for this object to gracefully terminate before it will be removed from the system. Only set when deletionTimestamp is also set. May only be shortened. Read-only."
                                                    | optional,
                                                  deletionTimestamp
                                                    | std.contract.any_of
                                                      [
                                                        js2n.Null,
                                                        Bool,
                                                        { _ | Dyn },
                                                        Array Dyn,
                                                        Number,
                                                        String
                                                      ]
                                                    | doc m%"
                                                      DeletionTimestamp is RFC 3339 date and time at which this resource will be deleted. This field is set by the server when a graceful deletion is requested by the user, and is not directly settable by a client. The resource is expected to be deleted (no longer visible from resource lists, and not reachable by name) after the time in this field, once the finalizers list is empty. As long as the finalizers list contains items, deletion is blocked. Once the deletionTimestamp is set, this value may not be unset or be set further into the future, although it may be shortened or the resource may be deleted prior to this time. For example, a user may request that a pod is deleted in 30 seconds. The Kubelet will react by sending a graceful termination signal to the containers in the pod. After that 30 seconds, the Kubelet will send a hard termination signal (SIGKILL) to the container and after cleanup, remove the pod from the API. In the presence of network partitions, this object may still exist after this timestamp, until an administrator or automated process can determine the resource is fully terminated. If not set, graceful deletion of the object has not been requested.
                                                      
                                                      Populated by the system when a graceful deletion is requested. Read-only. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
                                                    "%
                                                    | optional,
                                                  finalizers
                                                    | Array String
                                                    | doc "Must be empty before the object is deleted from the registry. Each entry is an identifier for the responsible component that will remove the entry from the list. If the deletionTimestamp of the object is non-nil, entries in this list can only be removed. Finalizers may be processed and removed in any order.  Order is NOT enforced because it introduces significant risk of stuck finalizers. finalizers is a shared field, any actor with permission can reorder it. If the finalizer list is processed in order, then this can lead to a situation in which the component responsible for the first finalizer in the list is waiting for a signal (field value, external system, or other) produced by a component responsible for a finalizer later in the list, resulting in a deadlock. Without enforced ordering finalizers are free to order amongst themselves and are not vulnerable to ordering changes in the list."
                                                    | optional,
                                                  generateName
                                                    | String
                                                    | doc m%"
                                                      GenerateName is an optional prefix, used by the server, to generate a unique name ONLY IF the Name field has not been provided. If this field is used, the name returned to the client will be different than the name passed. This value will also be combined with a unique suffix. The provided value has the same validation rules as the Name field, and may be truncated by the length of the suffix required to make the value unique on the server.
                                                      
                                                      If this field is specified and the generated name exists, the server will return a 409.
                                                      
                                                      Applied only if Name is not specified. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#idempotency
                                                    "%
                                                    | optional,
                                                  generation
                                                    | std.number.Integer
                                                    | doc "A sequence number representing a specific generation of the desired state. Populated by the system. Read-only."
                                                    | optional,
                                                  labels
                                                    | { _ | String }
                                                    | doc "Map of string keys and values that can be used to organize and categorize (scope and select) objects. May match selectors of replication controllers and services. More info: http://kubernetes.io/docs/user-guide/labels"
                                                    | optional,
                                                  managedFields
                                                    | Array
                                                      {
                                                        apiVersion
                                                          | String
                                                          | doc "APIVersion defines the version of this resource that this field set applies to. The format is \"group/version\" just like the top-level APIVersion field. It is necessary to track the version of a field set because it cannot be automatically converted."
                                                          | optional,
                                                        fieldsType
                                                          | String
                                                          | doc "FieldsType is the discriminator for the different fields format and version. There is currently only one possible value: \"FieldsV1\""
                                                          | optional,
                                                        fieldsV1
                                                          | { _ | Dyn }
                                                          | doc "FieldsV1 holds the first JSON version format as described in the \"FieldsV1\" type."
                                                          | optional,
                                                        manager
                                                          | String
                                                          | doc "Manager is an identifier of the workflow managing these fields."
                                                          | optional,
                                                        operation
                                                          | String
                                                          | doc "Operation is the type of operation which lead to this ManagedFieldsEntry being created. The only valid values for this field are 'Apply' and 'Update'."
                                                          | optional,
                                                        subresource
                                                          | String
                                                          | doc "Subresource is the name of the subresource used to update that object, or empty string if the object was updated through the main resource. The value of this field is used to distinguish between managers, even if they share the same name. For example, a status update will be distinct from a regular update using the same manager name. Note that the APIVersion field is not related to the Subresource field and it always corresponds to the version of the main resource."
                                                          | optional,
                                                        time
                                                          | std.contract.any_of
                                                            [
                                                              js2n.Null,
                                                              Bool,
                                                              { _ | Dyn },
                                                              Array Dyn,
                                                              Number,
                                                              String
                                                            ]
                                                          | doc "Time is the timestamp of when the ManagedFields entry was added. The timestamp will also be updated if a field is added, the manager changes any of the owned fields value or removes a field. The timestamp does not update when a field is removed from the entry because another manager took it over."
                                                          | optional,
                                                        ..
                                                      }
                                                    | doc "ManagedFields maps workflow-id and version to the set of fields that are managed by that workflow. This is mostly for internal housekeeping, and users typically shouldn't need to set or understand this field. A workflow can be the user's name, a controller's name, or the name of a specific apply path like \"ci-cd\". The set of fields is always in the version that the workflow used when modifying the object."
                                                    | optional,
                                                  name
                                                    | String
                                                    | doc "Name must be unique within a namespace. Is required when creating resources, although some resources may allow a client to request the generation of an appropriate name automatically. Name is primarily intended for creation idempotence and configuration definition. Cannot be updated. More info: http://kubernetes.io/docs/user-guide/identifiers#names"
                                                    | optional,
                                                  namespace
                                                    | String
                                                    | doc m%"
                                                      Namespace defines the space within which each name must be unique. An empty namespace is equivalent to the "default" namespace, but "default" is the canonical representation. Not all objects are required to be scoped to a namespace - the value of this field for those objects will be empty.
                                                      
                                                      Must be a DNS_LABEL. Cannot be updated. More info: http://kubernetes.io/docs/user-guide/namespaces
                                                    "%
                                                    | optional,
                                                  ownerReferences
                                                    | Array
                                                      {
                                                        apiVersion
                                                          | String
                                                          | doc "API version of the referent.",
                                                        blockOwnerDeletion
                                                          | Bool
                                                          | doc "If true, AND if the owner has the \"foregroundDeletion\" finalizer, then the owner cannot be deleted from the key-value store until this reference is removed. See https://kubernetes.io/docs/concepts/architecture/garbage-collection/#foreground-deletion for how the garbage collector interacts with this field and enforces the foreground deletion. Defaults to false. To set this field, a user needs \"delete\" permission of the owner, otherwise 422 (Unprocessable Entity) will be returned."
                                                          | optional,
                                                        controller
                                                          | Bool
                                                          | doc "If true, this reference points to the managing controller."
                                                          | optional,
                                                        kind
                                                          | String
                                                          | doc "Kind of the referent. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds",
                                                        name
                                                          | String
                                                          | doc "Name of the referent. More info: http://kubernetes.io/docs/user-guide/identifiers#names",
                                                        uid
                                                          | String
                                                          | doc "UID of the referent. More info: http://kubernetes.io/docs/user-guide/identifiers#uids",
                                                        ..
                                                      }
                                                    | doc "List of objects depended by this object. If ALL objects in the list have been deleted, this object will be garbage collected. If this object is managed by a controller, then an entry in this list will point to this controller, with the controller field set to true. There cannot be more than one managing controller."
                                                    | optional,
                                                  resourceVersion
                                                    | String
                                                    | doc m%"
                                                      An opaque value that represents the internal version of this object that can be used by clients to determine when objects have changed. May be used for optimistic concurrency, change detection, and the watch operation on a resource or set of resources. Clients must treat these values as opaque and passed unmodified back to the server. They may only be valid for a particular resource or set of resources.
                                                      
                                                      Populated by the system. Read-only. Value must be treated as opaque by clients and . More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#concurrency-control-and-consistency
                                                    "%
                                                    | optional,
                                                  selfLink
                                                    | String
                                                    | doc "Deprecated: selfLink is a legacy read-only field that is no longer populated by the system."
                                                    | optional,
                                                  uid
                                                    | String
                                                    | doc m%"
                                                      UID is the unique in time and space value for this object. It is typically generated by the server on successful creation of a resource and is not allowed to change on PUT operations.
                                                      
                                                      Populated by the system. Read-only. More info: http://kubernetes.io/docs/user-guide/identifiers#uids
                                                    "%
                                                    | optional,
                                                  ..
                                                }
                                                | doc "May contain labels and annotations that will be copied into the PVC when creating it. No other fields are allowed and will be rejected during validation."
                                                | optional,
                                              spec
                                                | {
                                                  accessModes
                                                    | Array String
                                                    | doc "accessModes contains the desired access modes the volume should have. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes-1"
                                                    | optional,
                                                  dataSource
                                                    | {
                                                      apiGroup
                                                        | String
                                                        | doc "APIGroup is the group for the resource being referenced. If APIGroup is not specified, the specified Kind must be in the core API group. For any other third-party types, APIGroup is required."
                                                        | optional,
                                                      kind
                                                        | String
                                                        | doc "Kind is the type of resource being referenced",
                                                      name
                                                        | String
                                                        | doc "Name is the name of resource being referenced",
                                                      ..
                                                    }
                                                    | doc "dataSource field can be used to specify either: * An existing VolumeSnapshot object (snapshot.storage.k8s.io/VolumeSnapshot) * An existing PVC (PersistentVolumeClaim) If the provisioner or an external controller can support the specified data source, it will create a new volume based on the contents of the specified data source. If the AnyVolumeDataSource feature gate is enabled, this field will always have the same contents as the DataSourceRef field."
                                                    | optional,
                                                  dataSourceRef
                                                    | std.contract.any_of
                                                      [
                                                        js2n.Null,
                                                        Bool,
                                                        { _ | Dyn },
                                                        Array Dyn,
                                                        Number,
                                                        String
                                                      ]
                                                    | doc m%"
                                                      dataSourceRef specifies the object from which to populate the volume with data, if a non-empty volume is desired. This may be any local object from a non-empty API group (non core object) or a PersistentVolumeClaim object. When this field is specified, volume binding will only succeed if the type of the specified object matches some installed volume populator or dynamic provisioner. This field will replace the functionality of the DataSource field and as such if both fields are non-empty, they must have the same value. For backwards compatibility, both fields (DataSource and DataSourceRef) will be set to the same value automatically if one of them is empty and the other is non-empty. There are two important differences between DataSource and DataSourceRef: * While DataSource only allows two specific types of objects, DataSourceRef
                                                        allows any non-core object, as well as PersistentVolumeClaim objects.
                                                      * While DataSource ignores disallowed values (dropping them), DataSourceRef
                                                        preserves all values, and generates an error if a disallowed value is
                                                        specified.
                                                      (Beta) Using this field requires the AnyVolumeDataSource feature gate to be enabled.
                                                    "%
                                                    | optional,
                                                  resources
                                                    | std.contract.any_of
                                                      [
                                                        js2n.Null,
                                                        Bool,
                                                        { _ | Dyn },
                                                        Array Dyn,
                                                        Number,
                                                        String
                                                      ]
                                                    | doc "resources represents the minimum resources the volume should have. If RecoverVolumeExpansionFailure feature is enabled users are allowed to specify resource requirements that are lower than previous value but must still be higher than capacity recorded in the status field of the claim. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#resources"
                                                    | optional,
                                                  selector
                                                    | {
                                                      matchExpressions
                                                        | Array
                                                          {
                                                            key
                                                              | String
                                                              | doc "key is the label key that the selector applies to.",
                                                            operator
                                                              | String
                                                              | doc "operator represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists and DoesNotExist.",
                                                            values
                                                              | Array String
                                                              | doc "values is an array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch."
                                                              | optional,
                                                            ..
                                                          }
                                                        | doc "matchExpressions is a list of label selector requirements. The requirements are ANDed."
                                                        | optional,
                                                      matchLabels
                                                        | { _ | String }
                                                        | doc "matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is \"key\", the operator is \"In\", and the values array contains only \"value\". The requirements are ANDed."
                                                        | optional,
                                                      ..
                                                    }
                                                    | doc "selector is a label query over volumes to consider for binding."
                                                    | optional,
                                                  storageClassName
                                                    | String
                                                    | doc "storageClassName is the name of the StorageClass required by the claim. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#class-1"
                                                    | optional,
                                                  volumeMode
                                                    | String
                                                    | doc "volumeMode defines what type of volume is required by the claim. Value of Filesystem is implied when not included in claim spec."
                                                    | optional,
                                                  volumeName
                                                    | String
                                                    | doc "volumeName is the binding reference to the PersistentVolume backing this claim."
                                                    | optional,
                                                  ..
                                                }
                                                | doc "The specification for the PersistentVolumeClaim. The entire content is copied unchanged into the PVC that gets created from this template. The same fields as in a PersistentVolumeClaim are also valid here.",
                                              ..
                                            }
                                            | doc m%"
                                              Will be used to create a stand-alone PVC to provision the volume. The pod in which this EphemeralVolumeSource is embedded will be the owner of the PVC, i.e. the PVC will be deleted together with the pod.  The name of the PVC will be `<pod name>-<volume name>` where `<volume name>` is the name from the `PodSpec.Volumes` array entry. Pod validation will reject the pod if the concatenated name is not valid for a PVC (for example, too long).
                                              
                                              An existing PVC with that name that is not owned by the pod will *not* be used for the pod to avoid using an unrelated volume by mistake. Starting the pod is then blocked until the unrelated PVC is removed. If such a pre-created PVC is meant to be used by the pod, the PVC has to updated with an owner reference to the pod once the pod exists. Normally this should not be necessary, but it may be useful when manually reconstructing a broken cluster.
                                              
                                              This field is read-only and no changes will be made by Kubernetes to the PVC after it has been created.
                                              
                                              Required, must not be nil.
                                            "%
                                            | optional,
                                          ..
                                        }
                                        | doc m%"
                                          ephemeral represents a volume that is handled by a cluster storage driver. The volume's lifecycle is tied to the pod that defines it - it will be created before the pod starts, and deleted when the pod is removed.
                                          
                                          Use this if: a) the volume is only needed while the pod runs, b) features of normal volumes like restoring from snapshot or capacity
                                             tracking are needed,
                                          c) the storage driver is specified through a storage class, and d) the storage driver supports dynamic volume provisioning through
                                             a PersistentVolumeClaim (see EphemeralVolumeSource for more
                                             information on the connection between this volume type
                                             and PersistentVolumeClaim).
                                          
                                          Use PersistentVolumeClaim or one of the vendor-specific APIs for volumes that persist for longer than the lifecycle of an individual pod.
                                          
                                          Use CSI for light-weight local ephemeral volumes if the CSI driver is meant to be used that way - see the documentation of the driver for more information.
                                          
                                          A pod can use both types of ephemeral volumes and persistent volumes at the same time.
                                        "%
                                        | optional,
                                      fc
                                        | {
                                          fsType
                                            | String
                                            | doc "fsType is the filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. \"ext4\", \"xfs\", \"ntfs\". Implicitly inferred to be \"ext4\" if unspecified."
                                            | optional,
                                          lun
                                            | std.number.Integer
                                            | doc "lun is Optional: FC target lun number"
                                            | optional,
                                          readOnly
                                            | Bool
                                            | doc "readOnly is Optional: Defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts."
                                            | optional,
                                          targetWWNs
                                            | Array String
                                            | doc "targetWWNs is Optional: FC target worldwide names (WWNs)"
                                            | optional,
                                          wwids
                                            | Array String
                                            | doc "wwids Optional: FC volume world wide identifiers (wwids) Either wwids or combination of targetWWNs and lun must be set, but not both simultaneously."
                                            | optional,
                                          ..
                                        }
                                        | doc "fc represents a Fibre Channel resource that is attached to a kubelet's host machine and then exposed to the pod."
                                        | optional,
                                      flexVolume
                                        | {
                                          driver
                                            | String
                                            | doc "driver is the name of the driver to use for this volume.",
                                          fsType
                                            | String
                                            | doc "fsType is the filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. \"ext4\", \"xfs\", \"ntfs\". The default filesystem depends on FlexVolume script."
                                            | optional,
                                          options
                                            | { _ | String }
                                            | doc "options is Optional: this field holds extra command options if any."
                                            | optional,
                                          readOnly
                                            | Bool
                                            | doc "readOnly is Optional: defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts."
                                            | optional,
                                          secretRef
                                            | std.contract.any_of
                                              [
                                                js2n.Null,
                                                Bool,
                                                { _ | Dyn },
                                                Array Dyn,
                                                Number,
                                                String
                                              ]
                                            | doc "secretRef is Optional: secretRef is reference to the secret object containing sensitive information to pass to the plugin scripts. This may be empty if no secret object is specified. If the secret object contains more than one secret, all secrets are passed to the plugin scripts."
                                            | optional,
                                          ..
                                        }
                                        | doc "flexVolume represents a generic volume resource that is provisioned/attached using an exec based plugin."
                                        | optional,
                                      flocker
                                        | {
                                          datasetName
                                            | String
                                            | doc "datasetName is Name of the dataset stored as metadata -> name on the dataset for Flocker should be considered as deprecated"
                                            | optional,
                                          datasetUUID
                                            | String
                                            | doc "datasetUUID is the UUID of the dataset. This is unique identifier of a Flocker dataset"
                                            | optional,
                                          ..
                                        }
                                        | doc "flocker represents a Flocker volume attached to a kubelet's host machine. This depends on the Flocker control service being running"
                                        | optional,
                                      gcePersistentDisk
                                        | {
                                          fsType
                                            | String
                                            | doc "fsType is filesystem type of the volume that you want to mount. Tip: Ensure that the filesystem type is supported by the host operating system. Examples: \"ext4\", \"xfs\", \"ntfs\". Implicitly inferred to be \"ext4\" if unspecified. More info: https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk"
                                            | optional,
                                          partition
                                            | std.number.Integer
                                            | doc "partition is the partition in the volume that you want to mount. If omitted, the default is to mount by volume name. Examples: For volume /dev/sda1, you specify the partition as \"1\". Similarly, the volume partition for /dev/sda is \"0\" (or you can leave the property empty). More info: https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk"
                                            | optional,
                                          pdName
                                            | String
                                            | doc "pdName is unique name of the PD resource in GCE. Used to identify the disk in GCE. More info: https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk",
                                          readOnly
                                            | Bool
                                            | doc "readOnly here will force the ReadOnly setting in VolumeMounts. Defaults to false. More info: https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk"
                                            | optional,
                                          ..
                                        }
                                        | doc "gcePersistentDisk represents a GCE Disk resource that is attached to a kubelet's host machine and then exposed to the pod. More info: https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk"
                                        | optional,
                                      gitRepo
                                        | {
                                          directory
                                            | String
                                            | doc "directory is the target directory name. Must not contain or start with '..'.  If '.' is supplied, the volume directory will be the git repository.  Otherwise, if specified, the volume will contain the git repository in the subdirectory with the given name."
                                            | optional,
                                          repository
                                            | String
                                            | doc "repository is the URL",
                                          revision
                                            | String
                                            | doc "revision is the commit hash for the specified revision."
                                            | optional,
                                          ..
                                        }
                                        | doc "gitRepo represents a git repository at a particular revision. DEPRECATED: GitRepo is deprecated. To provision a container with a git repo, mount an EmptyDir into an InitContainer that clones the repo using git, then mount the EmptyDir into the Pod's container."
                                        | optional,
                                      glusterfs
                                        | {
                                          endpoints
                                            | String
                                            | doc "endpoints is the endpoint name that details Glusterfs topology. More info: https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod",
                                          path
                                            | String
                                            | doc "path is the Glusterfs volume path. More info: https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod",
                                          readOnly
                                            | Bool
                                            | doc "readOnly here will force the Glusterfs volume to be mounted with read-only permissions. Defaults to false. More info: https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod"
                                            | optional,
                                          ..
                                        }
                                        | doc "glusterfs represents a Glusterfs mount on the host that shares a pod's lifetime. More info: https://examples.k8s.io/volumes/glusterfs/README.md"
                                        | optional,
                                      hostPath
                                        | {
                                          path
                                            | String
                                            | doc "path of the directory on the host. If the path is a symlink, it will follow the link to the real path. More info: https://kubernetes.io/docs/concepts/storage/volumes#hostpath",
                                          type
                                            | String
                                            | doc "type for HostPath Volume Defaults to \"\" More info: https://kubernetes.io/docs/concepts/storage/volumes#hostpath"
                                            | optional,
                                          ..
                                        }
                                        | doc "hostPath represents a pre-existing file or directory on the host machine that is directly exposed to the container. This is generally used for system agents or other privileged things that are allowed to see the host machine. Most containers will NOT need this. More info: https://kubernetes.io/docs/concepts/storage/volumes#hostpath"
                                        | optional,
                                      iscsi
                                        | {
                                          chapAuthDiscovery
                                            | Bool
                                            | doc "chapAuthDiscovery defines whether support iSCSI Discovery CHAP authentication"
                                            | optional,
                                          chapAuthSession
                                            | Bool
                                            | doc "chapAuthSession defines whether support iSCSI Session CHAP authentication"
                                            | optional,
                                          fsType
                                            | String
                                            | doc "fsType is the filesystem type of the volume that you want to mount. Tip: Ensure that the filesystem type is supported by the host operating system. Examples: \"ext4\", \"xfs\", \"ntfs\". Implicitly inferred to be \"ext4\" if unspecified. More info: https://kubernetes.io/docs/concepts/storage/volumes#iscsi"
                                            | optional,
                                          initiatorName
                                            | String
                                            | doc "initiatorName is the custom iSCSI Initiator Name. If initiatorName is specified with iscsiInterface simultaneously, new iSCSI interface <target portal>:<volume name> will be created for the connection."
                                            | optional,
                                          iqn
                                            | String
                                            | doc "iqn is the target iSCSI Qualified Name.",
                                          iscsiInterface
                                            | String
                                            | doc "iscsiInterface is the interface Name that uses an iSCSI transport. Defaults to 'default' (tcp)."
                                            | optional,
                                          lun
                                            | std.number.Integer
                                            | doc "lun represents iSCSI Target Lun number.",
                                          portals
                                            | Array String
                                            | doc "portals is the iSCSI Target Portal List. The portal is either an IP or ip_addr:port if the port is other than default (typically TCP ports 860 and 3260)."
                                            | optional,
                                          readOnly
                                            | Bool
                                            | doc "readOnly here will force the ReadOnly setting in VolumeMounts. Defaults to false."
                                            | optional,
                                          secretRef
                                            | std.contract.any_of
                                              [
                                                js2n.Null,
                                                Bool,
                                                { _ | Dyn },
                                                Array Dyn,
                                                Number,
                                                String
                                              ]
                                            | doc "secretRef is the CHAP Secret for iSCSI target and initiator authentication"
                                            | optional,
                                          targetPortal
                                            | String
                                            | doc "targetPortal is iSCSI Target Portal. The Portal is either an IP or ip_addr:port if the port is other than default (typically TCP ports 860 and 3260).",
                                          ..
                                        }
                                        | doc "iscsi represents an ISCSI Disk resource that is attached to a kubelet's host machine and then exposed to the pod. More info: https://examples.k8s.io/volumes/iscsi/README.md"
                                        | optional,
                                      name
                                        | String
                                        | doc "name of the volume. Must be a DNS_LABEL and unique within the pod. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names",
                                      nfs
                                        | {
                                          path
                                            | String
                                            | doc "path that is exported by the NFS server. More info: https://kubernetes.io/docs/concepts/storage/volumes#nfs",
                                          readOnly
                                            | Bool
                                            | doc "readOnly here will force the NFS export to be mounted with read-only permissions. Defaults to false. More info: https://kubernetes.io/docs/concepts/storage/volumes#nfs"
                                            | optional,
                                          server
                                            | String
                                            | doc "server is the hostname or IP address of the NFS server. More info: https://kubernetes.io/docs/concepts/storage/volumes#nfs",
                                          ..
                                        }
                                        | doc "nfs represents an NFS mount on the host that shares a pod's lifetime More info: https://kubernetes.io/docs/concepts/storage/volumes#nfs"
                                        | optional,
                                      persistentVolumeClaim
                                        | {
                                          claimName
                                            | String
                                            | doc "claimName is the name of a PersistentVolumeClaim in the same namespace as the pod using this volume. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#persistentvolumeclaims",
                                          readOnly
                                            | Bool
                                            | doc "readOnly Will force the ReadOnly setting in VolumeMounts. Default false."
                                            | optional,
                                          ..
                                        }
                                        | doc "persistentVolumeClaimVolumeSource represents a reference to a PersistentVolumeClaim in the same namespace. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#persistentvolumeclaims"
                                        | optional,
                                      photonPersistentDisk
                                        | {
                                          fsType
                                            | String
                                            | doc "fsType is the filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. \"ext4\", \"xfs\", \"ntfs\". Implicitly inferred to be \"ext4\" if unspecified."
                                            | optional,
                                          pdID
                                            | String
                                            | doc "pdID is the ID that identifies Photon Controller persistent disk",
                                          ..
                                        }
                                        | doc "photonPersistentDisk represents a PhotonController persistent disk attached and mounted on kubelets host machine"
                                        | optional,
                                      portworxVolume
                                        | {
                                          fsType
                                            | String
                                            | doc "fSType represents the filesystem type to mount Must be a filesystem type supported by the host operating system. Ex. \"ext4\", \"xfs\". Implicitly inferred to be \"ext4\" if unspecified."
                                            | optional,
                                          readOnly
                                            | Bool
                                            | doc "readOnly defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts."
                                            | optional,
                                          volumeID
                                            | String
                                            | doc "volumeID uniquely identifies a Portworx volume",
                                          ..
                                        }
                                        | doc "portworxVolume represents a portworx volume attached and mounted on kubelets host machine"
                                        | optional,
                                      projected
                                        | {
                                          defaultMode
                                            | std.number.Integer
                                            | doc "defaultMode are the mode bits used to set permissions on created files by default. Must be an octal value between 0000 and 0777 or a decimal value between 0 and 511. YAML accepts both octal and decimal values, JSON requires decimal values for mode bits. Directories within the path are not affected by this setting. This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set."
                                            | optional,
                                          sources
                                            | Array
                                              {
                                                configMap
                                                  | {
                                                    items
                                                      | Array (
                                                        std.contract.any_of
                                                          [
                                                            js2n.Null,
                                                            Bool,
                                                            { _ | Dyn },
                                                            Array Dyn,
                                                            Number,
                                                            String
                                                          ]
                                                      )
                                                      | doc "items if unspecified, each key-value pair in the Data field of the referenced ConfigMap will be projected into the volume as a file whose name is the key and content is the value. If specified, the listed keys will be projected into the specified paths, and unlisted keys will not be present. If a key is specified which is not present in the ConfigMap, the volume setup will error unless it is marked optional. Paths must be relative and may not contain the '..' path or start with '..'."
                                                      | optional,
                                                    name
                                                      | String
                                                      | doc "Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names"
                                                      | optional,
                                                    "optional"
                                                      | Bool
                                                      | doc "optional specify whether the ConfigMap or its keys must be defined"
                                                      | optional,
                                                    ..
                                                  }
                                                  | doc "configMap information about the configMap data to project"
                                                  | optional,
                                                downwardAPI
                                                  | {
                                                    items
                                                      | Array (
                                                        std.contract.any_of
                                                          [
                                                            js2n.Null,
                                                            Bool,
                                                            { _ | Dyn },
                                                            Array Dyn,
                                                            Number,
                                                            String
                                                          ]
                                                      )
                                                      | doc "Items is a list of DownwardAPIVolume file"
                                                      | optional,
                                                    ..
                                                  }
                                                  | doc "downwardAPI information about the downwardAPI data to project"
                                                  | optional,
                                                secret
                                                  | {
                                                    items
                                                      | Array (
                                                        std.contract.any_of
                                                          [
                                                            js2n.Null,
                                                            Bool,
                                                            { _ | Dyn },
                                                            Array Dyn,
                                                            Number,
                                                            String
                                                          ]
                                                      )
                                                      | doc "items if unspecified, each key-value pair in the Data field of the referenced Secret will be projected into the volume as a file whose name is the key and content is the value. If specified, the listed keys will be projected into the specified paths, and unlisted keys will not be present. If a key is specified which is not present in the Secret, the volume setup will error unless it is marked optional. Paths must be relative and may not contain the '..' path or start with '..'."
                                                      | optional,
                                                    name
                                                      | String
                                                      | doc "Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names"
                                                      | optional,
                                                    "optional"
                                                      | Bool
                                                      | doc "optional field specify whether the Secret or its key must be defined"
                                                      | optional,
                                                    ..
                                                  }
                                                  | doc "secret information about the secret data to project"
                                                  | optional,
                                                serviceAccountToken
                                                  | {
                                                    audience
                                                      | String
                                                      | doc "audience is the intended audience of the token. A recipient of a token must identify itself with an identifier specified in the audience of the token, and otherwise should reject the token. The audience defaults to the identifier of the apiserver."
                                                      | optional,
                                                    expirationSeconds
                                                      | std.number.Integer
                                                      | doc "expirationSeconds is the requested duration of validity of the service account token. As the token approaches expiration, the kubelet volume plugin will proactively rotate the service account token. The kubelet will start trying to rotate the token if the token is older than 80 percent of its time to live or if the token is older than 24 hours.Defaults to 1 hour and must be at least 10 minutes."
                                                      | optional,
                                                    path
                                                      | String
                                                      | doc "path is the path relative to the mount point of the file to project the token into.",
                                                    ..
                                                  }
                                                  | doc "serviceAccountToken is information about the serviceAccountToken data to project"
                                                  | optional,
                                                ..
                                              }
                                            | doc "sources is the list of volume projections"
                                            | optional,
                                          ..
                                        }
                                        | doc "projected items for all in one resources secrets, configmaps, and downward API"
                                        | optional,
                                      quobyte
                                        | {
                                          group
                                            | String
                                            | doc "group to map volume access to Default is no group"
                                            | optional,
                                          readOnly
                                            | Bool
                                            | doc "readOnly here will force the Quobyte volume to be mounted with read-only permissions. Defaults to false."
                                            | optional,
                                          registry
                                            | String
                                            | doc "registry represents a single or multiple Quobyte Registry services specified as a string as host:port pair (multiple entries are separated with commas) which acts as the central registry for volumes",
                                          tenant
                                            | String
                                            | doc "tenant owning the given Quobyte volume in the Backend Used with dynamically provisioned Quobyte volumes, value is set by the plugin"
                                            | optional,
                                          user
                                            | String
                                            | doc "user to map volume access to Defaults to serivceaccount user"
                                            | optional,
                                          volume
                                            | String
                                            | doc "volume is a string that references an already created Quobyte volume by name.",
                                          ..
                                        }
                                        | doc "quobyte represents a Quobyte mount on the host that shares a pod's lifetime"
                                        | optional,
                                      rbd
                                        | {
                                          fsType
                                            | String
                                            | doc "fsType is the filesystem type of the volume that you want to mount. Tip: Ensure that the filesystem type is supported by the host operating system. Examples: \"ext4\", \"xfs\", \"ntfs\". Implicitly inferred to be \"ext4\" if unspecified. More info: https://kubernetes.io/docs/concepts/storage/volumes#rbd"
                                            | optional,
                                          image
                                            | String
                                            | doc "image is the rados image name. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it",
                                          keyring
                                            | String
                                            | doc "keyring is the path to key ring for RBDUser. Default is /etc/ceph/keyring. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it"
                                            | optional,
                                          monitors
                                            | Array String
                                            | doc "monitors is a collection of Ceph monitors. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it",
                                          pool
                                            | String
                                            | doc "pool is the rados pool name. Default is rbd. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it"
                                            | optional,
                                          readOnly
                                            | Bool
                                            | doc "readOnly here will force the ReadOnly setting in VolumeMounts. Defaults to false. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it"
                                            | optional,
                                          secretRef
                                            | {
                                              name
                                                | String
                                                | doc "Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names"
                                                | optional,
                                              ..
                                            }
                                            | doc "secretRef is name of the authentication secret for RBDUser. If provided overrides keyring. Default is nil. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it"
                                            | optional,
                                          user
                                            | String
                                            | doc "user is the rados user name. Default is admin. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it"
                                            | optional,
                                          ..
                                        }
                                        | doc "rbd represents a Rados Block Device mount on the host that shares a pod's lifetime. More info: https://examples.k8s.io/volumes/rbd/README.md"
                                        | optional,
                                      scaleIO
                                        | {
                                          fsType
                                            | String
                                            | doc "fsType is the filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. \"ext4\", \"xfs\", \"ntfs\". Default is \"xfs\"."
                                            | optional,
                                          gateway
                                            | String
                                            | doc "gateway is the host address of the ScaleIO API Gateway.",
                                          protectionDomain
                                            | String
                                            | doc "protectionDomain is the name of the ScaleIO Protection Domain for the configured storage."
                                            | optional,
                                          readOnly
                                            | Bool
                                            | doc "readOnly Defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts."
                                            | optional,
                                          secretRef
                                            | std.contract.any_of
                                              [
                                                js2n.Null,
                                                Bool,
                                                { _ | Dyn },
                                                Array Dyn,
                                                Number,
                                                String
                                              ]
                                            | doc "secretRef references to the secret for ScaleIO user and other sensitive information. If this is not provided, Login operation will fail.",
                                          sslEnabled
                                            | Bool
                                            | doc "sslEnabled Flag enable/disable SSL communication with Gateway, default false"
                                            | optional,
                                          storageMode
                                            | String
                                            | doc "storageMode indicates whether the storage for a volume should be ThickProvisioned or ThinProvisioned. Default is ThinProvisioned."
                                            | optional,
                                          storagePool
                                            | String
                                            | doc "storagePool is the ScaleIO Storage Pool associated with the protection domain."
                                            | optional,
                                          system
                                            | String
                                            | doc "system is the name of the storage system as configured in ScaleIO.",
                                          volumeName
                                            | String
                                            | doc "volumeName is the name of a volume already created in the ScaleIO system that is associated with this volume source."
                                            | optional,
                                          ..
                                        }
                                        | doc "scaleIO represents a ScaleIO persistent volume attached and mounted on Kubernetes nodes."
                                        | optional,
                                      secret
                                        | {
                                          defaultMode
                                            | std.number.Integer
                                            | doc "defaultMode is Optional: mode bits used to set permissions on created files by default. Must be an octal value between 0000 and 0777 or a decimal value between 0 and 511. YAML accepts both octal and decimal values, JSON requires decimal values for mode bits. Defaults to 0644. Directories within the path are not affected by this setting. This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set."
                                            | optional,
                                          items
                                            | Array
                                              {
                                                key
                                                  | String
                                                  | doc "key is the key to project.",
                                                mode
                                                  | std.number.Integer
                                                  | doc "mode is Optional: mode bits used to set permissions on this file. Must be an octal value between 0000 and 0777 or a decimal value between 0 and 511. YAML accepts both octal and decimal values, JSON requires decimal values for mode bits. If not specified, the volume defaultMode will be used. This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set."
                                                  | optional,
                                                path
                                                  | String
                                                  | doc "path is the relative path of the file to map the key to. May not be an absolute path. May not contain the path element '..'. May not start with the string '..'.",
                                                ..
                                              }
                                            | doc "items If unspecified, each key-value pair in the Data field of the referenced Secret will be projected into the volume as a file whose name is the key and content is the value. If specified, the listed keys will be projected into the specified paths, and unlisted keys will not be present. If a key is specified which is not present in the Secret, the volume setup will error unless it is marked optional. Paths must be relative and may not contain the '..' path or start with '..'."
                                            | optional,
                                          "optional"
                                            | Bool
                                            | doc "optional field specify whether the Secret or its keys must be defined"
                                            | optional,
                                          secretName
                                            | String
                                            | doc "secretName is the name of the secret in the pod's namespace to use. More info: https://kubernetes.io/docs/concepts/storage/volumes#secret"
                                            | optional,
                                          ..
                                        }
                                        | doc "secret represents a secret that should populate this volume. More info: https://kubernetes.io/docs/concepts/storage/volumes#secret"
                                        | optional,
                                      storageos
                                        | {
                                          fsType
                                            | String
                                            | doc "fsType is the filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. \"ext4\", \"xfs\", \"ntfs\". Implicitly inferred to be \"ext4\" if unspecified."
                                            | optional,
                                          readOnly
                                            | Bool
                                            | doc "readOnly defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts."
                                            | optional,
                                          secretRef
                                            | std.contract.any_of
                                              [
                                                js2n.Null,
                                                Bool,
                                                { _ | Dyn },
                                                Array Dyn,
                                                Number,
                                                String
                                              ]
                                            | doc "secretRef specifies the secret to use for obtaining the StorageOS API credentials.  If not specified, default values will be attempted."
                                            | optional,
                                          volumeName
                                            | String
                                            | doc "volumeName is the human-readable name of the StorageOS volume.  Volume names are only unique within a namespace."
                                            | optional,
                                          volumeNamespace
                                            | String
                                            | doc "volumeNamespace specifies the scope of the volume within StorageOS.  If no namespace is specified then the Pod's namespace will be used.  This allows the Kubernetes name scoping to be mirrored within StorageOS for tighter integration. Set VolumeName to any name to override the default behaviour. Set to \"default\" if you are not using namespaces within StorageOS. Namespaces that do not pre-exist within StorageOS will be created."
                                            | optional,
                                          ..
                                        }
                                        | doc "storageOS represents a StorageOS volume attached and mounted on Kubernetes nodes."
                                        | optional,
                                      vsphereVolume
                                        | {
                                          fsType
                                            | String
                                            | doc "fsType is filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. \"ext4\", \"xfs\", \"ntfs\". Implicitly inferred to be \"ext4\" if unspecified."
                                            | optional,
                                          storagePolicyID
                                            | String
                                            | doc "storagePolicyID is the storage Policy Based Management (SPBM) profile ID associated with the StoragePolicyName."
                                            | optional,
                                          storagePolicyName
                                            | String
                                            | doc "storagePolicyName is the storage Policy Based Management (SPBM) profile name."
                                            | optional,
                                          volumePath
                                            | String
                                            | doc "volumePath is the path that identifies vSphere volume vmdk",
                                          ..
                                        }
                                        | doc "vsphereVolume represents a vSphere volume attached and mounted on kubelets host machine"
                                        | optional,
                                      ..
                                    },
                              "~chart" = js2n.Always,
                              "~forceRestart" = Bool,
                              "~needs" = js2n.Always,
                            },
                        required = {},
                      }) js2n.Always,
                  js2n.IfThenElse
                    (std.contract.any_of
                      [
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Record
                          {
                            additional = 'Some Dyn,
                            patterns = {},
                            properties = { "~chart" = js2n.Const "pg", },
                            required = { "~chart" = true, },
                          },
                        Array Dyn
                      ])
                    {
                      backup
                        | {
                          enabled
                            | Bool
                            | doc "Enable database backups. \\n\\nEnabled by default on preprod and prod environments"
                            | optional,
                          name
                            | String
                            | doc "to override the backup destination path (in case we need a new destination for a new cluster)"
                            | optional,
                          ..
                        }
                        | optional,
                      cnpg-cluster
                        | {
                          annotations | { _ | Dyn } | optional,
                          backup
                            | {
                              barmanObjectStore
                                | js2n.Nullable ({ _ | Dyn })
                                | doc "See: https://cloudnative-pg.io/documentation/1.20/backup_recovery/"
                                | optional,
                              enabled | Bool | optional,
                              immediate | Bool | optional,
                              retentionPolicy
                                | String
                                | doc m%"
                                  The retention policy is expressed in the form of XXu where XX is a positive integer and
                                  u is in [dwm] - days, weeks, months.
                                "%
                                | optional,
                              schedule
                                | String
                                | doc "this cron format has the seconds on the left"
                                | optional,
                              sqlDumpRetentionDays | String | optional,
                              sqlDumpSchedule | String | optional,
                              ..
                            }
                            | optional,
                          clusterExtraSpec | { _ | Dyn } | optional,
                          dbName | String | optional,
                          dbOwner | String | optional,
                          dbSecretName | js2n.Nullable String | optional,
                          extensions
                            | Array (
                              std.contract.Sequence
                                [
                                  std.enum.TagOrString,
                                  [|
                                    'postgis_tiger_geocoder-3,
                                    'postgis_sfcgal-3,
                                    'postgis_tiger_geocoder,
                                    'address_standardizer_data_us-3,
                                    'address_standardizer,
                                    'postgis,
                                    'postgis_raster,
                                    'postgis_raster-3,
                                    'address_standardizer-3,
                                    'postgis_topology-3,
                                    'postgis_topology,
                                    'address_standardizer_data_us,
                                    'postgis_sfcgal,
                                    'postgis-3,
                                    'pgrouting,
                                    'pgaudit,
                                    'xml2,
                                    'bloom,
                                    'moddatetime,
                                    'btree_gist,
                                    'pg_visibility,
                                    'tablefunc,
                                    'tcn,
                                    'btree_gin,
                                    'intagg,
                                    'pg_prewarm,
                                    'tsm_system_time,
                                    'refint,
                                    'dict_xsyn,
                                    'isn,
                                    'plpgsql,
                                    'pgstattuple,
                                    'pg_buffercache,
                                    'autoinc,
                                    'unaccent,
                                    'old_snapshot,
                                    'earthdistance,
                                    'ltree,
                                    'pgrowlocks,
                                    'pg_surgery,
                                    'pg_freespacemap,
                                    'fuzzystrmatch,
                                    'tsm_system_rows,
                                    'amcheck,
                                    'cube,
                                    'pg_trgm,
                                    'pageinspect,
                                    'intarray,
                                    'pg_stat_statements,
                                    'postgres_fdw,
                                    'seg,
                                    'insert_username,
                                    'sslinfo,
                                    'hstore,
                                    'citext,
                                    'lo,
                                    'pgcrypto,
                                    'adminpack,
                                    'uuid-ossp,
                                    'dblink,
                                    'file_fdw,
                                    'dict_int,
                                    'pg_partman
                                  |]
                                ]
                            )
                            | optional,
                          externalClusters | Array Dyn | optional,
                          extraAffinity | { _ | Dyn } | optional,
                          fullnameOverride | String | optional,
                          image
                            | {
                              pullPolicy | String | optional,
                              repository | String | optional,
                              tag | String | optional,
                              ..
                            }
                            | optional,
                          imagePullSecrets | Array Dyn | optional,
                          instances | Number | optional,
                          logLevel | String | optional,
                          maxSyncReplicas | Number | optional,
                          minSyncReplicas | Number | optional,
                          monitoring
                            | { enablePodMonitor | Bool | optional, .. }
                            | optional,
                          nameOverride | String | optional,
                          nodeSelector | { _ | Dyn } | optional,
                          persistence
                            | {
                              pvcTemplate | { _ | Dyn } | optional,
                              resizeInUseVolumes
                                | js2n.Nullable Bool
                                | optional,
                              size | String | optional,
                              storageClass
                                | String
                                | doc m%"
                                  Applied after evaluating the PVC template, if available.
                                  If not specified, generated PVCs will be satisfied by the default storage class
                                "%
                                | optional,
                              ..
                            }
                            | optional,
                          pg_basebackup
                            | {
                              enabled | Bool | optional,
                              source | js2n.Nullable String | optional,
                              ..
                            }
                            | optional,
                          pg_hba | Array Dyn | optional,
                          poolers | { _ | Dyn } | optional,
                          postInitApplicationSQL | Array String | optional,
                          postInitApplicationSQLRefs
                            | js2n.Nullable ({ _ | Dyn })
                            | doc m%"
                              Points references to ConfigMaps or Secrets which contain SQL files, the general implementation order to these references is from all Secrets to all ConfigMaps, and inside Secrets or ConfigMaps, the implementation order is same as the order of each array (by default empty
                              See https://cloudnative-pg.io/documentation/current/api_reference/#postinitapplicationsqlrefs
                            "%
                            | optional,
                          postgresqlParameters
                            | {
                              DateStyle
                                | String
                                | doc m%"
                                  Sets the display format for date and time values.
                                  
                                  Should be set according to the format in which you expect to receive date information.
                                  
                                  see https://postgresqlco.nf/doc/en/param/DateStyle/
                                "%
                                | optional,
                              IntervalStyle
                                | std.enum.TagOrString
                                | [|
                                  'iso_8601,
                                  'sql_standard,
                                  'postgres_verbose,
                                  'postgres
                                |]
                                | doc m%"
                                  Sets the display format for interval values.
                                  
                                  This is just in case your applications are expecting something specific in how INTERVAL strings are output.
                                  
                                  see https://postgresqlco.nf/doc/en/param/IntervalStyle/
                                "%
                                | optional,
                              TimeZone
                                | String
                                | doc m%"
                                  Sets the time zone for displaying and interpreting time stamps.
                                  
                                  To avoid a lot of confusion, make sure this is set to your local timeszone.
                                  If the server covers multiple time zones, then this should be set on a ROLE or connection basis.
                                  
                                  see https://postgresqlco.nf/doc/en/param/TimeZone/
                                "%
                                | optional,
                              allow_in_place_tablespaces
                                | String
                                | doc m%"
                                  Allows tablespaces directly inside pg_tblspc, for testing.
                                  
                                  see https://postgresqlco.nf/doc/en/param/allow_in_place_tablespaces/
                                "%
                                | optional,
                              allow_system_table_mods
                                | String
                                | doc m%"
                                  Allows modifications of the structure of system tables.
                                  
                                  Only available in single-user mode; this setting is for initdb and may be used in the future for upgrade-in-place.
                                  
                                  see https://postgresqlco.nf/doc/en/param/allow_system_table_mods/
                                "%
                                | optional,
                              application_name
                                | String
                                | doc m%"
                                  Sets the application name to be reported in statistics and logs.
                                  
                                  Set this to a reasonable default for most user sessions; if in the middle of working over your application to support application names, this might be "unknown".
                                  
                                  see https://postgresqlco.nf/doc/en/param/application_name/
                                "%
                                | optional,
                              archive_cleanup_command
                                | String
                                | doc m%"
                                  Sets the shell command that will be executed at every restart point.
                                  
                                  see https://postgresqlco.nf/doc/en/param/archive_cleanup_command/
                                "%
                                | optional,
                              archive_command
                                | String
                                | doc m%"
                                  Sets the shell command that will be called to archive a WAL file.
                                  
                                  All of the Archiving settings are part of a Point In Time Recovery or Warm Standby configuration.
                                  Please see the Backup and Restore section for more information.
                                  
                                  see https://postgresqlco.nf/doc/en/param/archive_command/
                                "%
                                | optional,
                              archive_mode
                                | std.enum.TagOrString
                                | [| 'off, 'on, 'always |]
                                | doc m%"
                                  Allows archiving of WAL files using archive_command.
                                  
                                  Requires a restart to change, so if you want to turn archiving on and off, set this to 'on' and change archive_command instead.
                                  Even better, set archive_command to a script which can be disabled by trigger or ENV variable.
                                  
                                  see https://postgresqlco.nf/doc/en/param/archive_mode/
                                "%
                                | optional,
                              archive_timeout
                                | String
                                | doc m%"
                                  Forces a switch to the next WAL file if a new file has not been started within N seconds.
                                  
                                  Minimum: 0
                                  
                                  Maximum: 1073741823
                                  
                                  Dependant on your tradeoff between disk space and letting the standby get behind.
                                  
                                  see https://postgresqlco.nf/doc/en/param/archive_timeout/
                                "%
                                | optional,
                              array_nulls
                                | String
                                | doc m%"
                                  Enable input of NULL elements in arrays.
                                  
                                  Provided for compatibility with 7.4 behavior.
                                  
                                  see https://postgresqlco.nf/doc/en/param/array_nulls/
                                "%
                                | optional,
                              authentication_timeout
                                | String
                                | doc m%"
                                  Sets the maximum allowed time to complete client authentication.
                                  
                                  Minimum: 1
                                  
                                  Maximum: 600
                                  
                                  For production databases, it's important that this value be synchronized with the timeout on the application server side.
                                  Most web applications will want a shorter timeout, like 20s.
                                  
                                  see https://postgresqlco.nf/doc/en/param/authentication_timeout/
                                "%
                                | optional,
                              autovacuum
                                | String
                                | doc m%"
                                  Starts the autovacuum subprocess.
                                  
                                  Starts the daemon which cleans up your tables and indexes, preventing bloat and poor response times. The only reason to set it to "off" is for databases which regularly do large batch operations like ETL.
                                  Note that you can adjust the frequency or stop autovacuum on individual tables by adding rows to the pg_autovacuum system table.
                                  
                                  see https://postgresqlco.nf/doc/en/param/autovacuum/
                                "%
                                | optional,
                              autovacuum_analyze_scale_factor
                                | String
                                | doc m%"
                                  Number of tuple inserts, updates, or deletes prior to analyze as a fraction of reltuples.
                                  
                                  Minimum: 0
                                  
                                  Maximum: 100
                                  
                                  This setting should be optimal for most databases.
                                  However, very large tables (1m rows or more) in which rows are added in a skewed fashion may need to be autoanalyzed at a lower percentage, such as 5% or even 1%.
                                  
                                  see https://postgresqlco.nf/doc/en/param/autovacuum_analyze_scale_factor/
                                "%
                                | optional,
                              autovacuum_analyze_threshold
                                | String
                                | doc m%"
                                  Minimum number of tuple inserts, updates, or deletes prior to analyze.
                                  
                                  Minimum: 0
                                  
                                  Maximum: 2147483647
                                  
                                  see https://postgresqlco.nf/doc/en/param/autovacuum_analyze_threshold/
                                "%
                                | optional,
                              autovacuum_freeze_max_age
                                | String
                                | doc m%"
                                  Age at which to autovacuum a table to prevent transaction ID wraparound.
                                  
                                  Minimum: 100000
                                  
                                  Maximum: 2000000000
                                  
                                  Triggers autovacuum automatically if a table is about to suffer from XID rollover. The setting is very conservative, and should probably be increased to 500million, but not higher.
                                  
                                  see https://postgresqlco.nf/doc/en/param/autovacuum_freeze_max_age/
                                "%
                                | optional,
                              autovacuum_max_workers
                                | String
                                | doc m%"
                                  Sets the maximum number of simultaneously running autovacuum worker processes.
                                  
                                  Minimum: 1
                                  
                                  Maximum: 262143
                                  
                                  If you have an installation with many tables (100's to 1000's) or with some tables which autovacuum takes hours to process, you may want to add additional autovacuum workers so that multiple tables can be vacuumed at once.
                                  Be conservative, though, as each autovacuum worker will utilize a separate CPU core, memory and I/O.
                                  
                                  see https://postgresqlco.nf/doc/en/param/autovacuum_max_workers/
                                "%
                                | optional,
                              autovacuum_multixact_freeze_max_age
                                | String
                                | doc m%"
                                  Multixact age at which to autovacuum a table to prevent multixact wraparound.
                                  
                                  Minimum: 10000
                                  
                                  Maximum: 2000000000
                                  
                                  Triggers autovacuum automatically when the oldest "multixact" (a kind of lock transaction) is more than this old.
                                  Do not raise past 1billion.
                                  
                                  see https://postgresqlco.nf/doc/en/param/autovacuum_multixact_freeze_max_age/
                                "%
                                | optional,
                              autovacuum_naptime
                                | String
                                | doc m%"
                                  Time to sleep between autovacuum runs.
                                  
                                  Minimum: 1
                                  
                                  Maximum: 2147483
                                  
                                  Decrease this to 30s or 15s if you have a large number (100's) of tables, or if you otherwise see from pg_stat_user_tables that autovacuum is not keeping up.
                                  
                                  see https://postgresqlco.nf/doc/en/param/autovacuum_naptime/
                                "%
                                | optional,
                              autovacuum_vacuum_cost_delay
                                | String
                                | doc m%"
                                  Vacuum cost delay in milliseconds, for autovacuum.
                                  
                                  Minimum: -1
                                  
                                  Maximum: 100
                                  
                                  If autovacuum is having too much of a performance impact on running queries, you might want to increase this setting to 50ms.
                                  However, this will also cause individual vacuum tasks to take longer.
                                  
                                  see https://postgresqlco.nf/doc/en/param/autovacuum_vacuum_cost_delay/
                                "%
                                | optional,
                              autovacuum_vacuum_cost_limit
                                | String
                                | doc m%"
                                  Vacuum cost amount available before napping, for autovacuum.
                                  
                                  Minimum: -1
                                  
                                  Maximum: 10000
                                  
                                  see https://postgresqlco.nf/doc/en/param/autovacuum_vacuum_cost_limit/
                                "%
                                | optional,
                              autovacuum_vacuum_insert_scale_factor
                                | String
                                | doc m%"
                                  Number of tuple inserts prior to vacuum as a fraction of reltuples.
                                  
                                  Minimum: 0
                                  
                                  Maximum: 100
                                  
                                  see https://postgresqlco.nf/doc/en/param/autovacuum_vacuum_insert_scale_factor/
                                "%
                                | optional,
                              autovacuum_vacuum_insert_threshold
                                | String
                                | doc m%"
                                  Minimum number of tuple inserts prior to vacuum, or -1 to disable insert vacuums.
                                  
                                  Minimum: -1
                                  
                                  Maximum: 2147483647
                                  
                                  see https://postgresqlco.nf/doc/en/param/autovacuum_vacuum_insert_threshold/
                                "%
                                | optional,
                              autovacuum_vacuum_scale_factor
                                | String
                                | doc m%"
                                  Number of tuple updates or deletes prior to vacuum as a fraction of reltuples.
                                  
                                  Minimum: 0
                                  
                                  Maximum: 100
                                  
                                  see https://postgresqlco.nf/doc/en/param/autovacuum_vacuum_scale_factor/
                                "%
                                | optional,
                              autovacuum_vacuum_threshold
                                | String
                                | doc m%"
                                  Minimum number of tuple updates or deletes prior to vacuum.
                                  
                                  Minimum: 0
                                  
                                  Maximum: 2147483647
                                  
                                  see https://postgresqlco.nf/doc/en/param/autovacuum_vacuum_threshold/
                                "%
                                | optional,
                              autovacuum_work_mem
                                | String
                                | doc m%"
                                  Sets the maximum memory to be used by each autovacuum worker process.
                                  
                                  Minimum: -1
                                  
                                  Maximum: 2147483647
                                  
                                  Set a limit on this which is based on the number of autovac workers you expect to have running.
                                  
                                  see https://postgresqlco.nf/doc/en/param/autovacuum_work_mem/
                                "%
                                | optional,
                              backend_flush_after
                                | String
                                | doc m%"
                                  Number of pages after which previously performed writes are flushed to disk.
                                  
                                  Minimum: 0
                                  
                                  Maximum: 256
                                  
                                  Unless you have time to tune memory flushing behavior and test for improvements/regressions
                                  
                                  see https://postgresqlco.nf/doc/en/param/backend_flush_after/
                                "%
                                | optional,
                              backslash_quote
                                | std.enum.TagOrString
                                | [| 'off, 'on, 'safe_encoding |]
                                | doc m%"
                                  Sets whether "'" is allowed in string literals.
                                  
                                  If you have cleaned up your application code, you can set this to 'off' to help lock down the database.
                                  Older PHP applications will require the insecure setting of 'on'.
                                  
                                  see https://postgresqlco.nf/doc/en/param/backslash_quote/
                                "%
                                | optional,
                              backtrace_functions
                                | String
                                | doc m%"
                                  Log backtrace for errors in these functions.
                                  
                                  see https://postgresqlco.nf/doc/en/param/backtrace_functions/
                                "%
                                | optional,
                              bgwriter_delay
                                | String
                                | doc m%"
                                  Background writer sleep time between rounds.
                                  
                                  Minimum: 10
                                  
                                  Maximum: 10000
                                  
                                  Thanks to bgwriter autotuning, it should no longer be necessary for most users to touch the bgwriter settings.
                                  Only modify these if you have a demonstrated issue shown by checkpoint spikes and monitoring pg_stat_bgwriter.  Laptop PostgreSQL users may want to increase bgwriter_delay to 60s to decrease I/O activity, since it is no longer possible to turn the bgwriter off.
                                  
                                  see https://postgresqlco.nf/doc/en/param/bgwriter_delay/
                                "%
                                | optional,
                              bgwriter_flush_after
                                | String
                                | doc m%"
                                  Number of pages after which previously performed writes are flushed to disk.
                                  
                                  Minimum: 0
                                  
                                  Maximum: 256
                                  
                                  Unless you have time to tune memory flushing behavior and test for improvements/regressions
                                  
                                  see https://postgresqlco.nf/doc/en/param/bgwriter_flush_after/
                                "%
                                | optional,
                              bgwriter_lru_maxpages
                                | String
                                | doc m%"
                                  Background writer maximum number of LRU pages to flush per round.
                                  
                                  Minimum: 0
                                  
                                  Maximum: 1073741823
                                  
                                  see https://postgresqlco.nf/doc/en/param/bgwriter_lru_maxpages/
                                "%
                                | optional,
                              bgwriter_lru_multiplier
                                | String
                                | doc m%"
                                  Multiple of the average buffer usage to free per round.
                                  
                                  Minimum: 0
                                  
                                  Maximum: 10
                                  
                                  see https://postgresqlco.nf/doc/en/param/bgwriter_lru_multiplier/
                                "%
                                | optional,
                              block_size
                                | String
                                | doc m%"
                                  Shows the size of a disk block.
                                  
                                  Minimum: 8192
                                  
                                  Maximum: 8192
                                  
                                  Informational: lets you know of non-standard installation or compile options.
                                  
                                  see https://postgresqlco.nf/doc/en/param/block_size/
                                "%
                                | optional,
                              bonjour
                                | String
                                | doc m%"
                                  Enables advertising the server via Bonjour.
                                  
                                  Set to "on" if you've compiled in Bonjour support and have an application which works by autodiscovery of Postgres.
                                  Otherwise, leave off.
                                  
                                  see https://postgresqlco.nf/doc/en/param/bonjour/
                                "%
                                | optional,
                              bonjour_name
                                | String
                                | doc m%"
                                  Sets the Bonjour service name.
                                  
                                  Bonjour support must be compiled in and activated on the host machine to be live.
                                  You'll want alternate names if you have several instances of PostgreSQL on the same machine.
                                  
                                  see https://postgresqlco.nf/doc/en/param/bonjour_name/
                                "%
                                | optional,
                              bytea_output
                                | std.enum.TagOrString
                                | [| 'hex, 'escape |]
                                | doc m%"
                                  Sets the output format for bytea.
                                  
                                  see https://postgresqlco.nf/doc/en/param/bytea_output/
                                "%
                                | optional,
                              check_function_bodies
                                | String
                                | doc m%"
                                  Check routine bodies during CREATE FUNCTION and CREATE PROCEDURE.
                                  
                                  You only really want to turn this off to resolve circular dependancies, and that can be done on a per-session basis.
                                  In general, checking for syntax errors in PL/pgSQL functions is a very good idea.
                                  
                                  see https://postgresqlco.nf/doc/en/param/check_function_bodies/
                                "%
                                | optional,
                              checkpoint_completion_target
                                | String
                                | doc m%"
                                  Time spent flushing dirty buffers during checkpoint, as fraction of checkpoint interval.
                                  
                                  Minimum: 0
                                  
                                  Maximum: 1
                                  
                                  Defines the fraction of one checkpoint_interval over which to spread checkpoints. The default value works for most users.
                                  
                                  see https://postgresqlco.nf/doc/en/param/checkpoint_completion_target/
                                "%
                                | optional,
                              checkpoint_flush_after
                                | String
                                | doc m%"
                                  Number of pages after which previously performed writes are flushed to disk.
                                  
                                  Minimum: 0
                                  
                                  Maximum: 256
                                  
                                  Unless you have time to tune memory flushing behavior and test for improvements/regressions
                                  
                                  see https://postgresqlco.nf/doc/en/param/checkpoint_flush_after/
                                "%
                                | optional,
                              checkpoint_timeout
                                | String
                                | doc m%"
                                  Sets the maximum time between automatic WAL checkpoints.
                                  
                                  Minimum: 30
                                  
                                  Maximum: 86400
                                  
                                  If you do really large ETL batches, you may want to increase this setting to the maximum length of a batch run.
                                  
                                  see https://postgresqlco.nf/doc/en/param/checkpoint_timeout/
                                "%
                                | optional,
                              checkpoint_warning
                                | String
                                | doc m%"
                                  Enables warnings if checkpoint segments are filled more frequently than this.
                                  
                                  Minimum: 0
                                  
                                  Maximum: 2147483647
                                  
                                  see https://postgresqlco.nf/doc/en/param/checkpoint_warning/
                                "%
                                | optional,
                              client_connection_check_interval
                                | String
                                | doc m%"
                                  Sets the time interval between checks for disconnection while running queries.
                                  
                                  Minimum: 0
                                  
                                  Maximum: 2147483647
                                  
                                  see https://postgresqlco.nf/doc/en/param/client_connection_check_interval/
                                "%
                                | optional,
                              client_encoding
                                | String
                                | doc m%"
                                  Sets the client's character set encoding.
                                  
                                  Should match server_encoding unless you have a really good reason why not.
                                  
                                  see https://postgresqlco.nf/doc/en/param/client_encoding/
                                "%
                                | optional,
                              client_min_messages
                                | std.enum.TagOrString
                                | [|
                                  'error,
                                  'warning,
                                  'notice,
                                  'log,
                                  'debug1,
                                  'debug2,
                                  'debug3,
                                  'debug4,
                                  'debug5
                                |]
                                | doc m%"
                                  Sets the message levels that are sent to the client.
                                  
                                  Unless doing interactive debugging, then you want it set to DEBUG1-5.
                                  If you have a client application which is confused by some of PostgreSQL's WARNINGs then you may want to set this to ERROR.
                                  
                                  see https://postgresqlco.nf/doc/en/param/client_min_messages/
                                "%
                                | optional,
                              cluster_name
                                | String
                                | doc m%"
                                  Sets the name of the cluster, which is included in the process title.
                                  
                                  Should be "postgres-1" or something else identifiable as this specific postmaster.
                                  
                                  see https://postgresqlco.nf/doc/en/param/cluster_name/
                                "%
                                | optional,
                              commit_delay
                                | String
                                | doc m%"
                                  Sets the delay in microseconds between transaction commit and flushing WAL to disk.
                                  
                                  Minimum: 0
                                  
                                  Maximum: 100000
                                  
                                  A primitive form of group commit without asynchronicity.
                                  Performance testing of this is very mixed; only set to non-zero if you have time to test the specific performance impact on your workload.  Reasonable values are 200 to 1000.
                                  
                                  see https://postgresqlco.nf/doc/en/param/commit_delay/
                                "%
                                | optional,
                              commit_siblings
                                | String
                                | doc m%"
                                  Sets the minimum concurrent open transactions before performing commit_delay.
                                  
                                  Minimum: 0
                                  
                                  Maximum: 1000
                                  
                                  See commit_delay.
                                  Reasonable values are 3 to 8
                                  
                                  see https://postgresqlco.nf/doc/en/param/commit_siblings/
                                "%
                                | optional,
                              compute_query_id
                                | std.enum.TagOrString
                                | [| 'off, 'on, 'regress, 'auto |]
                                | doc m%"
                                  Compute query identifiers.
                                  
                                  see https://postgresqlco.nf/doc/en/param/compute_query_id/
                                "%
                                | optional,
                              config_file
                                | String
                                | doc m%"
                                  Sets the server's main configuration file.
                                  
                                  Can only be changed via command-line switch for obvious reasons.
                                  Useful primarily for testing different configuration options, or for automated restart with different configuration options.
                                  
                                  see https://postgresqlco.nf/doc/en/param/config_file/
                                "%
                                | optional,
                              constraint_exclusion
                                | std.enum.TagOrString
                                | [| 'off, 'on, 'partition |]
                                | doc m%"
                                  Enables the planner to use constraints to optimize queries.
                                  
                                  Default of "partition" is fine for most users.
                                  Setting it to "on" can allow optimization of UNION queries as well, but deserves testing before production deployment.
                                  
                                  see https://postgresqlco.nf/doc/en/param/constraint_exclusion/
                                "%
                                | optional,
                              cpu_index_tuple_cost
                                | String
                                | doc m%"
                                  Sets the planner's estimate of the cost of processing each index entry during an index scan.
                                  
                                  Minimum: 0
                                  
                                  Maximum: 1.79769e+308
                                  
                                  Decrease this slightly to make your database favor indexes slightly more.
                                  
                                  see https://postgresqlco.nf/doc/en/param/cpu_index_tuple_cost/
                                "%
                                | optional,
                              cpu_operator_cost
                                | String
                                | doc m%"
                                  Sets the planner's estimate of the cost of processing each operator or function call.
                                  
                                  Minimum: 0
                                  
                                  Maximum: 1.79769e+308
                                  
                                  Decrease this slightly to make your database favor indexes slightly more.
                                  
                                  see https://postgresqlco.nf/doc/en/param/cpu_operator_cost/
                                "%
                                | optional,
                              cpu_tuple_cost
                                | String
                                | doc m%"
                                  Sets the planner's estimate of the cost of processing each tuple (row).
                                  
                                  Minimum: 0
                                  
                                  Maximum: 1.79769e+308
                                  
                                  see https://postgresqlco.nf/doc/en/param/cpu_tuple_cost/
                                "%
                                | optional,
                              cursor_tuple_fraction
                                | String
                                | doc m%"
                                  Sets the planner's estimate of the fraction of a cursor's rows that will be retrieved.
                                  
                                  Minimum: 0
                                  
                                  Maximum: 1
                                  
                                  Increase this to 0.9 if most of the time you're using cursors to step through all of the rows of a query result.
                                  
                                  see https://postgresqlco.nf/doc/en/param/cursor_tuple_fraction/
                                "%
                                | optional,
                              data_checksums
                                | String
                                | doc m%"
                                  Shows whether data checksums are turned on for this cluster.
                                  
                                  This has to be set at initdb time, and does create a significant amount of extra I/O.
                                  However, it will save you from a corrupt database down the line, so if you're not performance-constrained, always use it.
                                  
                                  see https://postgresqlco.nf/doc/en/param/data_checksums/
                                "%
                                | optional,
                              data_directory
                                | String
                                | doc m%"
                                  Sets the server's data directory.
                                  
                                  Supports the ability to distribute files according to sysadmin or operating system defined schemes, or for launching multiple restart instances using the same binaries.
                                  Most of the time, it's better to use configuration options to define these locations so that all PostgreSQL binaries default to the correct paths.
                                  
                                  see https://postgresqlco.nf/doc/en/param/data_directory/
                                "%
                                | optional,
                              data_directory_mode
                                | String
                                | doc m%"
                                  Shows the mode of the data directory.
                                  
                                  Minimum: 0
                                  
                                  Maximum: 511
                                  
                                  see https://postgresqlco.nf/doc/en/param/data_directory_mode/
                                "%
                                | optional,
                              data_sync_retry
                                | String
                                | doc m%"
                                  Whether to continue running after a failure to sync data files.
                                  
                                  see https://postgresqlco.nf/doc/en/param/data_sync_retry/
                                "%
                                | optional,
                              db_user_namespace
                                | String
                                | doc m%"
                                  Enables per-database user names.
                                  
                                  This setting is a hack to work around the lack of per-database users in PostgreSQL.
                                  Unless you desperately need it, avoid this setting as it will eventually be replaced by something more maintainable.
                                  
                                  see https://postgresqlco.nf/doc/en/param/db_user_namespace/
                                "%
                                | optional,
                              deadlock_timeout
                                | String
                                | doc m%"
                                  Sets the time to wait on a lock before checking for deadlock.
                                  
                                  Minimum: 1
                                  
                                  Maximum: 2147483647
                                  
                                  Default is fine, except when you are troubleshooting/monitoring locks.
                                  In that case, you may want to lower it to as little as 50ms.
                                  
                                  see https://postgresqlco.nf/doc/en/param/deadlock_timeout/
                                "%
                                | optional,
                              debug_assertions
                                | String
                                | doc m%"
                                  Shows whether the running server has assertion checks enabled.
                                  
                                  Used for debugging PostgreSQL code problems; not for production use.
                                  Requires compile options.
                                  
                                  see https://postgresqlco.nf/doc/en/param/debug_assertions/
                                "%
                                | optional,
                              debug_discard_caches
                                | String
                                | doc m%"
                                  Aggressively flush system caches for debugging purposes.
                                  
                                  Minimum: 0
                                  
                                  Maximum: 0
                                  
                                  see https://postgresqlco.nf/doc/en/param/debug_discard_caches/
                                "%
                                | optional,
                              debug_pretty_print
                                | String
                                | doc m%"
                                  Indents parse and plan tree displays.
                                  
                                  For debugging a testing machine.
                                  Do not set in production.
                                  
                                  see https://postgresqlco.nf/doc/en/param/debug_pretty_print/
                                "%
                                | optional,
                              debug_print_parse
                                | String
                                | doc m%"
                                  Logs each query's parse tree.
                                  
                                  For debugging a testing machine.
                                  Do not set in production.
                                  
                                  see https://postgresqlco.nf/doc/en/param/debug_print_parse/
                                "%
                                | optional,
                              debug_print_plan
                                | String
                                | doc m%"
                                  Logs each query's execution plan.
                                  
                                  For debugging a testing machine.
                                  Do not set in production.
                                  
                                  see https://postgresqlco.nf/doc/en/param/debug_print_plan/
                                "%
                                | optional,
                              debug_print_rewritten
                                | String
                                | doc m%"
                                  Logs each query's rewritten parse tree.
                                  
                                  For debugging a testing machine.
                                  Do not set in production.
                                  
                                  see https://postgresqlco.nf/doc/en/param/debug_print_rewritten/
                                "%
                                | optional,
                              default_statistics_target
                                | String
                                | doc m%"
                                  Sets the default statistics target.
                                  
                                  Minimum: 1
                                  
                                  Maximum: 10000
                                  
                                  Most applications can use the default of 100.
                                    For very small/simple databases, decrease to 10 or 50.  Data warehousing applications generally need to use 500 to 1000.  Otherwise, increase statistics targets on a per-column basis.
                                  
                                  see https://postgresqlco.nf/doc/en/param/default_statistics_target/
                                "%
                                | optional,
                              default_table_access_method
                                | String
                                | doc m%"
                                  Sets the default table access method for new tables.
                                  
                                  see https://postgresqlco.nf/doc/en/param/default_table_access_method/
                                "%
                                | optional,
                              default_tablespace
                                | String
                                | doc m%"
                                  Sets the default tablespace to create tables and indexes in.
                                  
                                  Change this if you want a different tablespace for user-created tables.
                                  Generally, better set on a ROLE or session basis.
                                  
                                  see https://postgresqlco.nf/doc/en/param/default_tablespace/
                                "%
                                | optional,
                              default_text_search_config
                                | String
                                | doc m%"
                                  Sets default text search configuration.
                                  
                                  Set to the most common language used by the users, so that they don't have to pass the language parameter when calling TSearch functions.
                                  
                                  see https://postgresqlco.nf/doc/en/param/default_text_search_config/
                                "%
                                | optional,
                              default_toast_compression
                                | std.enum.TagOrString
                                | [| 'lz4, 'pglz |]
                                | doc m%"
                                  Sets the default compression method for compressible values.
                                  
                                  see https://postgresqlco.nf/doc/en/param/default_toast_compression/
                                "%
                                | optional,
                              default_transaction_deferrable
                                | String
                                | doc m%"
                                  Sets the default deferrable status of new transactions.
                                  
                                  If you use serializable transactions by default, it may be also useful to set this in order to decrease the overhead of long-running transactions.
                                  
                                  see https://postgresqlco.nf/doc/en/param/default_transaction_deferrable/
                                "%
                                | optional,
                              default_transaction_isolation
                                | std.enum.TagOrString
                                | [|
                                  '"\"read uncommitted\"",
                                  '"\"read committed\"",
                                  '"\"repeatable read\"",
                                  'serializable
                                |]
                                | doc m%"
                                  Sets the transaction isolation level of each new transaction.
                                  
                                  Relates to transaction_isolation.
                                  Better set on a session or transaction basis as transaction_isolation in order to support specific types of transaction conflict resolution.
                                  
                                  see https://postgresqlco.nf/doc/en/param/default_transaction_isolation/
                                "%
                                | optional,
                              default_transaction_read_only
                                | String
                                | doc m%"
                                  Sets the default read-only status of new transactions.
                                  
                                  This setting is mainly useful for preventing yourself from accidentally changing data.
                                  It is not really a security setting, as anyone can revoke it on their own session.  Better set on a session or ROLE level.  Will show up as TRUE if you are on a replication standby.
                                  
                                  see https://postgresqlco.nf/doc/en/param/default_transaction_read_only/
                                "%
                                | optional,
                              dynamic_library_path
                                | String
                                | doc m%"
                                  Sets the path for dynamically loadable modules.
                                  
                                  Primarily useful if you've written lots of custom C libraries for your installation and want to organize them into custom directories.
                                  
                                  see https://postgresqlco.nf/doc/en/param/dynamic_library_path/
                                "%
                                | optional,
                              dynamic_shared_memory_type
                                | std.enum.TagOrString
                                | [| 'mmap, 'sysv, 'posix |]
                                | doc m%"
                                  Selects the dynamic shared memory implementation used.
                                  
                                  see https://postgresqlco.nf/doc/en/param/dynamic_shared_memory_type/
                                "%
                                | optional,
                              effective_cache_size
                                | String
                                | doc m%"
                                  Sets the planner's assumption about the total size of the data caches.
                                  
                                  Minimum: 1
                                  
                                  Maximum: 2147483647
                                  
                                  Tells the PostgreSQL query planner how much RAM is estimated to be available for caching data, in both shared_buffers and in the filesystem cache. This setting just helps the planner make good cost estimates; it does not actually allocate the memory.
                                  
                                  see https://postgresqlco.nf/doc/en/param/effective_cache_size/
                                "%
                                | optional,
                              effective_io_concurrency
                                | String
                                | doc m%"
                                  Number of simultaneous requests that can be handled efficiently by the disk subsystem.
                                  
                                  Minimum: 0
                                  
                                  Maximum: 1000
                                  
                                  Set to the number of disks in your RAID array or number of I/O channels.
                                  Available only for platforms with posix_fadvise support (i.e. Linux).  Currently only affects the execution of parallel bitmapscan, but might affect other I/O operations in future versions.
                                  
                                  see https://postgresqlco.nf/doc/en/param/effective_io_concurrency/
                                "%
                                | optional,
                              enable_async_append
                                | String
                                | doc m%"
                                  Enables the planner's use of async append plans.
                                  
                                  see https://postgresqlco.nf/doc/en/param/enable_async_append/
                                "%
                                | optional,
                              enable_bitmapscan
                                | String
                                | doc m%"
                                  Enables the planner's use of bitmap-scan plans.
                                  
                                  For interactive session use only when troubleshooting queries.
                                  
                                  see https://postgresqlco.nf/doc/en/param/enable_bitmapscan/
                                "%
                                | optional,
                              enable_gathermerge
                                | String
                                | doc m%"
                                  Enables the planner's use of gather merge plans.
                                  
                                  see https://postgresqlco.nf/doc/en/param/enable_gathermerge/
                                "%
                                | optional,
                              enable_hashagg
                                | String
                                | doc m%"
                                  Enables the planner's use of hashed aggregation plans.
                                  
                                  For interactive session use only when troubleshooting queries.
                                  
                                  see https://postgresqlco.nf/doc/en/param/enable_hashagg/
                                "%
                                | optional,
                              enable_hashjoin
                                | String
                                | doc m%"
                                  Enables the planner's use of hash join plans.
                                  
                                  For interactive session use only when troubleshooting queries.
                                  
                                  see https://postgresqlco.nf/doc/en/param/enable_hashjoin/
                                "%
                                | optional,
                              enable_incremental_sort
                                | String
                                | doc m%"
                                  Enables the planner's use of incremental sort steps.
                                  
                                  see https://postgresqlco.nf/doc/en/param/enable_incremental_sort/
                                "%
                                | optional,
                              enable_indexonlyscan
                                | String
                                | doc m%"
                                  Enables the planner's use of index-only-scan plans.
                                  
                                  see https://postgresqlco.nf/doc/en/param/enable_indexonlyscan/
                                "%
                                | optional,
                              enable_indexscan
                                | String
                                | doc m%"
                                  Enables the planner's use of index-scan plans.
                                  
                                  For interactive session use only when troubleshooting queries.
                                  
                                  see https://postgresqlco.nf/doc/en/param/enable_indexscan/
                                "%
                                | optional,
                              enable_material
                                | String
                                | doc m%"
                                  Enables the planner's use of materialization.
                                  
                                  For interactive session use only when troubleshooting queries.
                                  
                                  see https://postgresqlco.nf/doc/en/param/enable_material/
                                "%
                                | optional,
                              enable_memoize
                                | String
                                | doc m%"
                                  Enables the planner's use of memoization.
                                  
                                  see https://postgresqlco.nf/doc/en/param/enable_memoize/
                                "%
                                | optional,
                              enable_mergejoin
                                | String
                                | doc m%"
                                  Enables the planner's use of merge join plans.
                                  
                                  For interactive session use only when troubleshooting queries.
                                  
                                  see https://postgresqlco.nf/doc/en/param/enable_mergejoin/
                                "%
                                | optional,
                              enable_nestloop
                                | String
                                | doc m%"
                                  Enables the planner's use of nested-loop join plans.
                                  
                                  For interactive session use only when troubleshooting queries.
                                  
                                  see https://postgresqlco.nf/doc/en/param/enable_nestloop/
                                "%
                                | optional,
                              enable_parallel_append
                                | String
                                | doc m%"
                                  Enables the planner's use of parallel append plans.
                                  
                                  see https://postgresqlco.nf/doc/en/param/enable_parallel_append/
                                "%
                                | optional,
                              enable_parallel_hash
                                | String
                                | doc m%"
                                  Enables the planner's use of parallel hash plans.
                                  
                                  see https://postgresqlco.nf/doc/en/param/enable_parallel_hash/
                                "%
                                | optional,
                              enable_partition_pruning
                                | String
                                | doc m%"
                                  Enables plan-time and execution-time partition pruning.
                                  
                                  see https://postgresqlco.nf/doc/en/param/enable_partition_pruning/
                                "%
                                | optional,
                              enable_partitionwise_aggregate
                                | String
                                | doc m%"
                                  Enables partitionwise aggregation and grouping.
                                  
                                  see https://postgresqlco.nf/doc/en/param/enable_partitionwise_aggregate/
                                "%
                                | optional,
                              enable_partitionwise_join
                                | String
                                | doc m%"
                                  Enables partitionwise join.
                                  
                                  see https://postgresqlco.nf/doc/en/param/enable_partitionwise_join/
                                "%
                                | optional,
                              enable_seqscan
                                | String
                                | doc m%"
                                  Enables the planner's use of sequential-scan plans.
                                  
                                  For interactive session use only when troubleshooting queries.
                                  
                                  see https://postgresqlco.nf/doc/en/param/enable_seqscan/
                                "%
                                | optional,
                              enable_sort
                                | String
                                | doc m%"
                                  Enables the planner's use of explicit sort steps.
                                  
                                  For interactive session use only when troubleshooting queries.
                                  
                                  see https://postgresqlco.nf/doc/en/param/enable_sort/
                                "%
                                | optional,
                              enable_tidscan
                                | String
                                | doc m%"
                                  Enables the planner's use of TID scan plans.
                                  
                                  For interactive session use only when troubleshooting queries.
                                  
                                  see https://postgresqlco.nf/doc/en/param/enable_tidscan/
                                "%
                                | optional,
                              escape_string_warning
                                | String
                                | doc m%"
                                  Warn about backslash escapes in ordinary string literals.
                                  
                                  Useful for providing warnings for interpreted-language applications which may be engaging in unsafe string escape behavior.
                                  Unless you are currently porting or upgrading such an application, though, these warnings are not useful and should be turned off.
                                  
                                  see https://postgresqlco.nf/doc/en/param/escape_string_warning/
                                "%
                                | optional,
                              event_source
                                | String
                                | doc m%"
                                  Sets the application name used to identify PostgreSQL messages in the event log.
                                  
                                  Should be "postgres-1" or something else identifiable as this specific postmaster.
                                  
                                  see https://postgresqlco.nf/doc/en/param/event_source/
                                "%
                                | optional,
                              exit_on_error
                                | String
                                | doc m%"
                                  Terminate session on any error.
                                  
                                  see https://postgresqlco.nf/doc/en/param/exit_on_error/
                                "%
                                | optional,
                              extension_destdir
                                | String
                                | doc m%"
                                  Path to prepend for extension loading
                                  
                                  see https://postgresqlco.nf/doc/en/param/extension_destdir/
                                "%
                                | optional,
                              external_pid_file
                                | String
                                | doc m%"
                                  Writes the postmaster PID to the specified file.
                                  
                                  Creates an extra copy of the process ID.
                                  Used for server administration tools which need a copy of the process ID in a specific directory.
                                  
                                  see https://postgresqlco.nf/doc/en/param/external_pid_file/
                                "%
                                | optional,
                              extra_float_digits
                                | String
                                | doc m%"
                                  Sets the number of digits displayed for floating-point values.
                                  
                                  Minimum: -15
                                  
                                  Maximum: 3
                                  
                                  Only significant for applications which do a lot of float calculations, like scientific databases.
                                  
                                  see https://postgresqlco.nf/doc/en/param/extra_float_digits/
                                "%
                                | optional,
                              force_parallel_mode
                                | std.enum.TagOrString
                                | [| 'regress, 'on, 'off |]
                                | doc m%"
                                  Forces use of parallel query facilities.
                                  
                                  see https://postgresqlco.nf/doc/en/param/force_parallel_mode/
                                "%
                                | optional,
                              from_collapse_limit
                                | String
                                | doc m%"
                                  Sets the FROM-list size beyond which subqueries are not collapsed.
                                  
                                  Minimum: 1
                                  
                                  Maximum: 2147483647
                                  
                                  While it's probably true that newer CPUs could support higher collapse_limits, there's not much incremental benefit to just raising either collapse_limit to 10 or 11.
                                  
                                  see https://postgresqlco.nf/doc/en/param/from_collapse_limit/
                                "%
                                | optional,
                              fsync
                                | String
                                | doc m%"
                                  Forces synchronization of updates to disk.
                                  
                                  Never turn off unless your data is entirely disposable.
                                  Setting fsync=off is the equivalent of saying " don't care about my data, I can recreate the database from scratch if I have to...  If synch activity is a performance concern, see synchronous_commit.
                                  
                                  see https://postgresqlco.nf/doc/en/param/fsync/
                                "%
                                | optional,
                              full_page_writes
                                | String
                                | doc m%"
                                  Writes full pages to WAL when first modified after a checkpoint.
                                  
                                  This is PostgreSQL's triple-check on transaction log integrity.
                                  Leave it on unless you have enough in-depth knowledge of your filesystem and hardware to be certain that torn page writes of log segments are completely prevented.  Solaris/ZFS users claim to be able to turn this off, but that has not been destruction-tested.
                                  
                                  see https://postgresqlco.nf/doc/en/param/full_page_writes/
                                "%
                                | optional,
                              geqo
                                | String
                                | doc m%"
                                  Enables genetic query optimization.
                                  
                                  see https://postgresqlco.nf/doc/en/param/geqo/
                                "%
                                | optional,
                              geqo_effort
                                | String
                                | doc m%"
                                  GEQO: effort is used to set the default for other GEQO parameters.
                                  
                                  Minimum: 1
                                  
                                  Maximum: 10
                                  
                                  see https://postgresqlco.nf/doc/en/param/geqo_effort/
                                "%
                                | optional,
                              geqo_generations
                                | String
                                | doc m%"
                                  GEQO: number of iterations of the algorithm.
                                  
                                  Minimum: 0
                                  
                                  Maximum: 2147483647
                                  
                                  see https://postgresqlco.nf/doc/en/param/geqo_generations/
                                "%
                                | optional,
                              geqo_pool_size
                                | String
                                | doc m%"
                                  GEQO: number of individuals in the population.
                                  
                                  Minimum: 0
                                  
                                  Maximum: 2147483647
                                  
                                  see https://postgresqlco.nf/doc/en/param/geqo_pool_size/
                                "%
                                | optional,
                              geqo_seed
                                | String
                                | doc m%"
                                  GEQO: seed for random path selection.
                                  
                                  Minimum: 0
                                  
                                  Maximum: 1
                                  
                                  If you set this manually, you can force repeatable execution paths for GEQO queries.
                                  
                                  see https://postgresqlco.nf/doc/en/param/geqo_seed/
                                "%
                                | optional,
                              geqo_selection_bias
                                | String
                                | doc m%"
                                  GEQO: selective pressure within the population.
                                  
                                  Minimum: 1.5
                                  
                                  Maximum: 2
                                  
                                  see https://postgresqlco.nf/doc/en/param/geqo_selection_bias/
                                "%
                                | optional,
                              geqo_threshold
                                | String
                                | doc m%"
                                  Sets the threshold of FROM items beyond which GEQO is used.
                                  
                                  Minimum: 2
                                  
                                  Maximum: 2147483647
                                  
                                  With new, faster processors it's tempting to raise the geqo_threshold a little, such as to 16 or 18.
                                  Increasing more than that is unwise as query planning time goes up geometrically.
                                  
                                  see https://postgresqlco.nf/doc/en/param/geqo_threshold/
                                "%
                                | optional,
                              gin_fuzzy_search_limit
                                | String
                                | doc m%"
                                  Sets the maximum allowed result for exact search by GIN.
                                  
                                  Minimum: 0
                                  
                                  Maximum: 2147483647
                                  
                                  If you're going to use GIN queries in a web application, it's generally useful to set a limit on how many rows can be returned from the index just for response times.
                                  However, the maximum number needs to depend on your application; what do users see as an acceptable expression of "many"?
                                  
                                  see https://postgresqlco.nf/doc/en/param/gin_fuzzy_search_limit/
                                "%
                                | optional,
                              gin_pending_list_limit
                                | String
                                | doc m%"
                                  Sets the maximum size of the pending list for GIN index.
                                  
                                  Minimum: 64
                                  
                                  Maximum: 2147483647
                                  
                                  Unless you have a lot of GIN indexed data and have time to test the performance of fastupdate.
                                  Even then, it's probably better to set it on individual indexes.
                                  
                                  see https://postgresqlco.nf/doc/en/param/gin_pending_list_limit/
                                "%
                                | optional,
                              hash_mem_multiplier
                                | String
                                | doc m%"
                                  Multiple of work_mem to use for hash tables.
                                  
                                  Minimum: 1
                                  
                                  Maximum: 1000
                                  
                                  see https://postgresqlco.nf/doc/en/param/hash_mem_multiplier/
                                "%
                                | optional,
                              hba_file
                                | String
                                | doc m%"
                                  Sets the server's "hba" configuration file.
                                  
                                  Allows you to move the pg_hba file to a sysadmin-specified location.
                                  
                                  see https://postgresqlco.nf/doc/en/param/hba_file/
                                "%
                                | optional,
                              hot_standby
                                | String
                                | doc m%"
                                  Allows connections and queries during recovery.
                                  
                                  Set to "on", unless you want to specifically prohibit people from running queries on a standby server.
                                  
                                  see https://postgresqlco.nf/doc/en/param/hot_standby/
                                "%
                                | optional,
                              hot_standby_feedback
                                | String
                                | doc m%"
                                  Allows feedback from a hot standby to the primary that will avoid query conflicts.
                                  
                                  Helps avoid query cancel on the replicas in most cases.
                                  Turn it off for a replica which does long-running reports and is allowed to lag.
                                  
                                  see https://postgresqlco.nf/doc/en/param/hot_standby_feedback/
                                "%
                                | optional,
                              huge_page_size
                                | String
                                | doc m%"
                                  The size of huge page that should be requested.
                                  
                                  Minimum: 0
                                  
                                  Maximum: 2147483647
                                  
                                  see https://postgresqlco.nf/doc/en/param/huge_page_size/
                                "%
                                | optional,
                              huge_pages
                                | std.enum.TagOrString
                                | [| 'try, 'on, 'off |]
                                | doc m%"
                                  Use of huge pages on Linux or Windows.
                                  
                                  However, for small systems (< 2GB of RAM) may be beneficial to set to "off".
                                  
                                  see https://postgresqlco.nf/doc/en/param/huge_pages/
                                "%
                                | optional,
                              ident_file
                                | String
                                | doc m%"
                                  Sets the server's "ident" configuration file.
                                  
                                  Allows you to move the pg_ident file to a sysadmin-specified location.
                                  
                                  see https://postgresqlco.nf/doc/en/param/ident_file/
                                "%
                                | optional,
                              idle_in_transaction_session_timeout
                                | String
                                | doc m%"
                                  Sets the maximum allowed idle time between queries, when in a transaction.
                                  
                                  Minimum: 0
                                  
                                  Maximum: 2147483647
                                  
                                  Set to 1 hour maximum, or as low as 1 minute if you know your query load well.
                                  Idle transactions are bad news.
                                  
                                  see https://postgresqlco.nf/doc/en/param/idle_in_transaction_session_timeout/
                                "%
                                | optional,
                              idle_session_timeout
                                | String
                                | doc m%"
                                  Sets the maximum allowed idle time between queries, when not in a transaction.
                                  
                                  Minimum: 0
                                  
                                  Maximum: 2147483647
                                  
                                  see https://postgresqlco.nf/doc/en/param/idle_session_timeout/
                                "%
                                | optional,
                              ignore_checksum_failure
                                | String
                                | doc m%"
                                  Continues processing after a checksum failure.
                                  
                                  For rescuing a corrupt DB
                                  
                                  see https://postgresqlco.nf/doc/en/param/ignore_checksum_failure/
                                "%
                                | optional,
                              ignore_invalid_pages
                                | String
                                | doc m%"
                                  Continues recovery after an invalid pages failure.
                                  
                                  see https://postgresqlco.nf/doc/en/param/ignore_invalid_pages/
                                "%
                                | optional,
                              ignore_system_indexes
                                | String
                                | doc m%"
                                  Disables reading from system indexes.
                                  
                                  Useful for salvaging data from a corrupted database.
                                  
                                  see https://postgresqlco.nf/doc/en/param/ignore_system_indexes/
                                "%
                                | optional,
                              in_hot_standby
                                | String
                                | doc m%"
                                  Shows whether hot standby is currently active.
                                  
                                  see https://postgresqlco.nf/doc/en/param/in_hot_standby/
                                "%
                                | optional,
                              integer_datetimes
                                | String
                                | doc m%"
                                  Shows whether datetimes are integer based.
                                  
                                  Informational: lets you know of non-standard installation or compile options.
                                  
                                  see https://postgresqlco.nf/doc/en/param/integer_datetimes/
                                "%
                                | optional,
                              jit
                                | String
                                | doc m%"
                                  Allow JIT compilation.
                                  
                                  see https://postgresqlco.nf/doc/en/param/jit/
                                "%
                                | optional,
                              jit_above_cost
                                | String
                                | doc m%"
                                  Perform JIT compilation if query is more expensive.
                                  
                                  Minimum: -1
                                  
                                  Maximum: 1.79769e+308
                                  
                                  see https://postgresqlco.nf/doc/en/param/jit_above_cost/
                                "%
                                | optional,
                              jit_debugging_support
                                | String
                                | doc m%"
                                  Register JIT-compiled functions with debugger.
                                  
                                  see https://postgresqlco.nf/doc/en/param/jit_debugging_support/
                                "%
                                | optional,
                              jit_dump_bitcode
                                | String
                                | doc m%"
                                  Write out LLVM bitcode to facilitate JIT debugging.
                                  
                                  see https://postgresqlco.nf/doc/en/param/jit_dump_bitcode/
                                "%
                                | optional,
                              jit_expressions
                                | String
                                | doc m%"
                                  Allow JIT compilation of expressions.
                                  
                                  see https://postgresqlco.nf/doc/en/param/jit_expressions/
                                "%
                                | optional,
                              jit_inline_above_cost
                                | String
                                | doc m%"
                                  Perform JIT inlining if query is more expensive.
                                  
                                  Minimum: -1
                                  
                                  Maximum: 1.79769e+308
                                  
                                  see https://postgresqlco.nf/doc/en/param/jit_inline_above_cost/
                                "%
                                | optional,
                              jit_optimize_above_cost
                                | String
                                | doc m%"
                                  Optimize JIT-compiled functions if query is more expensive.
                                  
                                  Minimum: -1
                                  
                                  Maximum: 1.79769e+308
                                  
                                  see https://postgresqlco.nf/doc/en/param/jit_optimize_above_cost/
                                "%
                                | optional,
                              jit_profiling_support
                                | String
                                | doc m%"
                                  Register JIT-compiled functions with perf profiler.
                                  
                                  see https://postgresqlco.nf/doc/en/param/jit_profiling_support/
                                "%
                                | optional,
                              jit_provider
                                | String
                                | doc m%"
                                  JIT provider to use.
                                  
                                  see https://postgresqlco.nf/doc/en/param/jit_provider/
                                "%
                                | optional,
                              jit_tuple_deforming
                                | String
                                | doc m%"
                                  Allow JIT compilation of tuple deforming.
                                  
                                  see https://postgresqlco.nf/doc/en/param/jit_tuple_deforming/
                                "%
                                | optional,
                              join_collapse_limit
                                | String
                                | doc m%"
                                  Sets the FROM-list size beyond which JOIN constructs are not flattened.
                                  
                                  Minimum: 1
                                  
                                  Maximum: 2147483647
                                  
                                  If for some reason you wanted to explicitly declare the join order for all of your queries, you could set this to 1.
                                  That is not recommended, though.
                                  
                                  see https://postgresqlco.nf/doc/en/param/join_collapse_limit/
                                "%
                                | optional,
                              krb_caseins_users
                                | String
                                | doc m%"
                                  Sets whether Kerberos and GSSAPI user names should be treated as case-insensitive.
                                  
                                  Speak with your sysadmin or network security about how to set the various kerberos settings to match your local kerberos setup.
                                  Kerberos support must be compiled in to PostgreSQL, and set in pg_hba.conf.
                                  
                                  see https://postgresqlco.nf/doc/en/param/krb_caseins_users/
                                "%
                                | optional,
                              krb_server_keyfile
                                | String
                                | doc m%"
                                  Sets the location of the Kerberos server key file.
                                  
                                  see https://postgresqlco.nf/doc/en/param/krb_server_keyfile/
                                "%
                                | optional,
                              lc_collate
                                | String
                                | doc m%"
                                  Shows the collation order locale.
                                  
                                  Set at initdb time.
                                  Displayed for information only.
                                  
                                  see https://postgresqlco.nf/doc/en/param/lc_collate/
                                "%
                                | optional,
                              lc_ctype
                                | String
                                | doc m%"
                                  Shows the character classification and case conversion locale.
                                  
                                  Set at initdb time.
                                  Displayed for information only.
                                  
                                  see https://postgresqlco.nf/doc/en/param/lc_ctype/
                                "%
                                | optional,
                              lc_messages
                                | String
                                | doc m%"
                                  Sets the language in which messages are displayed.
                                  
                                  see https://postgresqlco.nf/doc/en/param/lc_messages/
                                "%
                                | optional,
                              lc_monetary
                                | String
                                | doc m%"
                                  Sets the locale for formatting monetary amounts.
                                  
                                  see https://postgresqlco.nf/doc/en/param/lc_monetary/
                                "%
                                | optional,
                              lc_numeric
                                | String
                                | doc m%"
                                  Sets the locale for formatting numbers.
                                  
                                  see https://postgresqlco.nf/doc/en/param/lc_numeric/
                                "%
                                | optional,
                              lc_time
                                | String
                                | doc m%"
                                  Sets the locale for formatting date and time values.
                                  
                                  see https://postgresqlco.nf/doc/en/param/lc_time/
                                "%
                                | optional,
                              listen_addresses
                                | String
                                | doc m%"
                                  Sets the host name or IP address(es) to listen to.
                                  
                                  Set your listen_address as restrictively as possible; '*' should only be used for development machines
                                  
                                  see https://postgresqlco.nf/doc/en/param/listen_addresses/
                                "%
                                | optional,
                              lo_compat_privileges
                                | String
                                | doc m%"
                                  Enables backward compatibility mode for privilege checks on large objects.
                                  
                                  see https://postgresqlco.nf/doc/en/param/lo_compat_privileges/
                                "%
                                | optional,
                              local_preload_libraries
                                | String
                                | doc m%"
                                  Lists unprivileged shared libraries to preload into each backend.
                                  
                                  This is largely a convenience setting, automatically loading libraries listed without needing an explicit load command.
                                  Has no effect on performance.
                                  
                                  see https://postgresqlco.nf/doc/en/param/local_preload_libraries/
                                "%
                                | optional,
                              lock_timeout
                                | String
                                | doc m%"
                                  Sets the maximum allowed duration of any wait for a lock.
                                  
                                  Minimum: 0
                                  
                                  Maximum: 2147483647
                                  
                                  ... but consider setting this per application or per query for any explicit locking attempts.
                                  
                                  see https://postgresqlco.nf/doc/en/param/lock_timeout/
                                "%
                                | optional,
                              log_autovacuum_min_duration
                                | String
                                | doc m%"
                                  Sets the minimum execution time above which autovacuum actions will be logged.
                                  
                                  Minimum: -1
                                  
                                  Maximum: 2147483647
                                  
                                  Logs all autovacuum actions which take more than the specified time.
                                  Useful for figuring out if autovacuum is bogging down your system or blocking.
                                  
                                  see https://postgresqlco.nf/doc/en/param/log_autovacuum_min_duration/
                                "%
                                | optional,
                              log_checkpoints
                                | String
                                | doc m%"
                                  Logs each checkpoint.
                                  
                                  When doing performance analysis, it's often a good idea to turn on most of the logging options and log them to a CSVlog.
                                  
                                  
                                  see https://postgresqlco.nf/doc/en/param/log_checkpoints/
                                "%
                                | optional,
                              log_connections
                                | String
                                | doc m%"
                                  Logs each successful connection.
                                  
                                  Useful for performance analysis.
                                  
                                  see https://postgresqlco.nf/doc/en/param/log_connections/
                                "%
                                | optional,
                              log_destination
                                | String
                                | doc m%"
                                  Sets the destination for server log output.
                                  
                                  Your choice of log destination depends on your system administration plans and the status of your server.
                                  "syslog" or "eventlog" (Windows) are good choices for most development servers, because they can support centralized log monitors.  For development and testing, however, "csvlog" is probably the most useful, as it allows you to run queries against the log contents.
                                  
                                  see https://postgresqlco.nf/doc/en/param/log_destination/
                                "%
                                | optional,
                              log_directory
                                | String
                                | doc m%"
                                  Sets the destination directory for log files.
                                  
                                  If you are having PostgreSQL keep its own activity logs on a production server, it's probably a good idea to locate them on separate storage from the database and transaction log.
                                  
                                  see https://postgresqlco.nf/doc/en/param/log_directory/
                                "%
                                | optional,
                              log_disconnections
                                | String
                                | doc m%"
                                  Logs end of a session, including duration.
                                  
                                  Useful for performance analysis.
                                  
                                  see https://postgresqlco.nf/doc/en/param/log_disconnections/
                                "%
                                | optional,
                              log_duration
                                | String
                                | doc m%"
                                  Logs the duration of each completed SQL statement.
                                  
                                  Useful for performance analysis.
                                  
                                  see https://postgresqlco.nf/doc/en/param/log_duration/
                                "%
                                | optional,
                              log_error_verbosity
                                | std.enum.TagOrString
                                | [| 'verbose, '"default", 'terse |]
                                | doc m%"
                                  Sets the verbosity of logged messages.
                                  
                                  Unless doing intensive debugging.
                                  Alternately, set to TERSE if managing log volume is becoming a problem.
                                  
                                  see https://postgresqlco.nf/doc/en/param/log_error_verbosity/
                                "%
                                | optional,
                              log_executor_stats
                                | String
                                | doc m%"
                                  Writes executor performance statistics to the server log.
                                  
                                  Used for profiling the query executor.
                                  
                                  see https://postgresqlco.nf/doc/en/param/log_executor_stats/
                                "%
                                | optional,
                              log_file_mode
                                | String
                                | doc m%"
                                  Sets the file permissions for log files.
                                  
                                  Minimum: 0
                                  
                                  Maximum: 511
                                  
                                  ... unless you need to share the log with Postgres' unix group, in which case set it to 660.
                                  
                                  see https://postgresqlco.nf/doc/en/param/log_file_mode/
                                "%
                                | optional,
                              log_filename
                                | String
                                | doc m%"
                                  Sets the file name pattern for log files.
                                  
                                  If you want your logs to rotate automatically without needing a cron job to delete old logs, try naming them after the days of the week or the month so they overwrite automatically (i.e. 'postgresql-%a' or 'postgresql-%d').
                                  This also helps with log analysis.
                                  
                                  see https://postgresqlco.nf/doc/en/param/log_filename/
                                "%
                                | optional,
                              log_hostname
                                | String
                                | doc m%"
                                  Logs the host name in the connection logs.
                                  
                                  As this setting requires resolution of each connecting hostname, it's pretty much always too expensive to have on, even when troubleshooting.
                                  
                                  see https://postgresqlco.nf/doc/en/param/log_hostname/
                                "%
                                | optional,
                              log_line_prefix
                                | String
                                | doc m%%"
                                  Controls information prefixed to each log line.
                                  
                                  Primarily useful for providing extra information when logging to syslog or eventlog.
                                  Try "%h:%d:%u:%c  %t" for this.
                                  
                                  see https://postgresqlco.nf/doc/en/param/log_line_prefix/
                                "%%
                                | optional,
                              log_lock_waits
                                | String
                                | doc m%"
                                  Logs long lock waits.
                                  
                                  Useful for performance analysis.
                                  
                                  see https://postgresqlco.nf/doc/en/param/log_lock_waits/
                                "%
                                | optional,
                              log_min_duration_sample
                                | String
                                | doc m%"
                                  Sets the minimum execution time above which a sample of statements will be logged. Sampling is determined by log_statement_sample_rate.
                                  
                                  Minimum: -1
                                  
                                  Maximum: 2147483647
                                  
                                  see https://postgresqlco.nf/doc/en/param/log_min_duration_sample/
                                "%
                                | optional,
                              log_min_duration_statement
                                | String
                                | doc m%"
                                  Sets the minimum execution time above which all statements will be logged.
                                  
                                  Minimum: -1
                                  
                                  Maximum: 2147483647
                                  
                                  Possibly the most generally useful log setting for troubleshooting performance, especially on a production server.
                                  Records only long-running queries for analysis; since these are often your "problem" queries, these are the most useful ones to know about.  Used for pg_fouine.
                                  
                                  see https://postgresqlco.nf/doc/en/param/log_min_duration_statement/
                                "%
                                | optional,
                              log_min_error_statement
                                | std.enum.TagOrString
                                | [|
                                  'panic,
                                  'fatal,
                                  'log,
                                  'error,
                                  'warning,
                                  'notice,
                                  'info,
                                  'debug1,
                                  'debug2,
                                  'debug3,
                                  'debug4,
                                  'debug5
                                |]
                                | doc m%"
                                  Causes all statements generating error at or above this level to be logged.
                                  
                                  Logs SQL statements which error.
                                  If you have an application which routinely generates errors and can't fix it, then raise the level to FATAL or PANIC.
                                  
                                  see https://postgresqlco.nf/doc/en/param/log_min_error_statement/
                                "%
                                | optional,
                              log_min_messages
                                | std.enum.TagOrString
                                | [|
                                  'panic,
                                  'fatal,
                                  'log,
                                  'error,
                                  'warning,
                                  'notice,
                                  'info,
                                  'debug1,
                                  'debug2,
                                  'debug3,
                                  'debug4,
                                  'debug5
                                |]
                                | doc m%"
                                  Sets the message levels that are logged.
                                  
                                  Unless doing serious troubleshooting.
                                  If you want to output parses and plans, set to DEBUG1.
                                  
                                  see https://postgresqlco.nf/doc/en/param/log_min_messages/
                                "%
                                | optional,
                              log_parameter_max_length
                                | String
                                | doc m%"
                                  When logging statements, limit logged parameter values to first N bytes.
                                  
                                  Minimum: -1
                                  
                                  Maximum: 1073741823
                                  
                                  see https://postgresqlco.nf/doc/en/param/log_parameter_max_length/
                                "%
                                | optional,
                              log_parameter_max_length_on_error
                                | String
                                | doc m%"
                                  When reporting an error, limit logged parameter values to first N bytes.
                                  
                                  Minimum: -1
                                  
                                  Maximum: 1073741823
                                  
                                  see https://postgresqlco.nf/doc/en/param/log_parameter_max_length_on_error/
                                "%
                                | optional,
                              log_parser_stats
                                | String
                                | doc m%"
                                  Writes parser performance statistics to the server log.
                                  
                                  Used for profiling the query parser.
                                  
                                  see https://postgresqlco.nf/doc/en/param/log_parser_stats/
                                "%
                                | optional,
                              log_planner_stats
                                | String
                                | doc m%"
                                  Writes planner performance statistics to the server log.
                                  
                                  Used for profiling the query planner.
                                  
                                  see https://postgresqlco.nf/doc/en/param/log_planner_stats/
                                "%
                                | optional,
                              log_recovery_conflict_waits
                                | String
                                | doc m%"
                                  Logs standby recovery conflict waits.
                                  
                                  see https://postgresqlco.nf/doc/en/param/log_recovery_conflict_waits/
                                "%
                                | optional,
                              log_replication_commands
                                | String
                                | doc m%"
                                  Logs each replication command.
                                  
                                  ... assuming you're monitoring replication status, which you should.
                                  
                                  see https://postgresqlco.nf/doc/en/param/log_replication_commands/
                                "%
                                | optional,
                              log_rotation_age
                                | String
                                | doc m%"
                                  Automatic log file rotation will occur after N minutes.
                                  
                                  Minimum: 0
                                  
                                  Maximum: 35791394
                                  
                                  1d is generally good for production.
                                  Set to 1h to rotate logs hourly when doing performance analysis.
                                  
                                  see https://postgresqlco.nf/doc/en/param/log_rotation_age/
                                "%
                                | optional,
                              log_rotation_size
                                | String
                                | doc m%"
                                  Automatic log file rotation will occur after N kilobytes.
                                  
                                  Minimum: 0
                                  
                                  Maximum: 2097151
                                  
                                  Default is quite small if you have any extra logging turned on at all.
                                  Increase to avoid the creation of additional log segments with hard-to-predict names.
                                  
                                  see https://postgresqlco.nf/doc/en/param/log_rotation_size/
                                "%
                                | optional,
                              log_statement
                                | std.enum.TagOrString
                                | [| 'all, 'mod, 'ddl, 'none |]
                                | doc m%"
                                  Sets the type of statements logged.
                                  
                                  For exhaustive performance analysis on test systems, set to 'all'.
                                  Most production setups will just want to use 'ddl' to make sure to record database-altering actions, but very secure setups may want to use 'mod' or even 'all'.  Can produce a lot of log volume.
                                  
                                  see https://postgresqlco.nf/doc/en/param/log_statement/
                                "%
                                | optional,
                              log_statement_sample_rate
                                | String
                                | doc m%"
                                  Fraction of statements exceeding log_min_duration_sample to be logged.
                                  
                                  Minimum: 0
                                  
                                  Maximum: 1
                                  
                                  see https://postgresqlco.nf/doc/en/param/log_statement_sample_rate/
                                "%
                                | optional,
                              log_statement_stats
                                | String
                                | doc m%"
                                  Writes cumulative performance statistics to the server log.
                                  
                                  Used for full query path profiling.
                                  Exclusive of the other three options.
                                  
                                  see https://postgresqlco.nf/doc/en/param/log_statement_stats/
                                "%
                                | optional,
                              log_temp_files
                                | String
                                | doc m%"
                                  Log the use of temporary files larger than this number of kilobytes.
                                  
                                  Minimum: -1
                                  
                                  Maximum: 2147483647
                                  
                                  This logger is used for troubleshooting sorts and other activities which are spilling to disk.
                                  If you use it at all, it's probably good to set it a something low like 1kB so that you know each query that spilled to disk, since any disk spill at all causes a dramatic slowdown in the query.  Can be used to see if you need more work_mem, temp_mem or maintenance_work_mem.
                                  
                                  see https://postgresqlco.nf/doc/en/param/log_temp_files/
                                "%
                                | optional,
                              log_timezone
                                | String
                                | doc m%"
                                  Sets the time zone to use in log messages.
                                  
                                  To avoid confusion, it's often useful to log to the timezone where the DBA or sysadmin lives.
                                  
                                  see https://postgresqlco.nf/doc/en/param/log_timezone/
                                "%
                                | optional,
                              log_transaction_sample_rate
                                | String
                                | doc m%"
                                  Sets the fraction of transactions from which to log all statements.
                                  
                                  Minimum: 0
                                  
                                  Maximum: 1
                                  
                                  see https://postgresqlco.nf/doc/en/param/log_transaction_sample_rate/
                                "%
                                | optional,
                              log_truncate_on_rotation
                                | String
                                | doc m%"
                                  Truncate existing log files of same name during log rotation.
                                  
                                  Set to "on" for production with a reusable logfile name to limit log accumulation if you don't have a sysadmin script to do so.
                                  
                                  see https://postgresqlco.nf/doc/en/param/log_truncate_on_rotation/
                                "%
                                | optional,
                              logging_collector
                                | String
                                | doc m%"
                                  Start a subprocess to capture stderr output and/or csvlogs into log files.
                                  
                                  Only relevant for "csvlog" and "stderr".
                                  
                                  see https://postgresqlco.nf/doc/en/param/logging_collector/
                                "%
                                | optional,
                              logical_decoding_work_mem
                                | String
                                | doc m%"
                                  Sets the maximum memory to be used for logical decoding.
                                  
                                  Minimum: 64
                                  
                                  Maximum: 2147483647
                                  
                                  see https://postgresqlco.nf/doc/en/param/logical_decoding_work_mem/
                                "%
                                | optional,
                              maintenance_io_concurrency
                                | String
                                | doc m%"
                                  A variant of effective_io_concurrency that is used for maintenance work.
                                  
                                  Minimum: 0
                                  
                                  Maximum: 1000
                                  
                                  see https://postgresqlco.nf/doc/en/param/maintenance_io_concurrency/
                                "%
                                | optional,
                              maintenance_work_mem
                                | String
                                | doc m%"
                                  Sets the maximum memory to be used for maintenance operations.
                                  
                                  Minimum: 1024
                                  
                                  Maximum: 2147483647
                                  
                                  Sets the limit for the amount that autovacuum, manual vacuum, bulk index build and other maintenance routines are permitted to use.
                                  Setting it to a moderately high value will increase the efficiency of vacuum and other operations.  Applications which perform large ETL operations may need to allocate up to 1/4 of RAM to support large bulk vacuums.  Note that each autovacuum worker may use this much, so if using multiple autovacuum workers you may want to decrease this value so that they can't claim over 1/8 or 1/4 of available RAM.
                                  
                                  see https://postgresqlco.nf/doc/en/param/maintenance_work_mem/
                                "%
                                | optional,
                              max_connections
                                | String
                                | doc m%"
                                  Sets the maximum number of concurrent connections.
                                  
                                  Minimum: 1
                                  
                                  Maximum: 262143
                                  
                                  Should be set to the maximum number of connections which you expect to need at peak load.
                                  Note that each connection uses shared_buffer memory, as well as additional non-shared memory, so be careful not to run the system out of memory.  In general, if you need more than 200 connections, you should probably be making more use of connection pooling.
                                  
                                  see https://postgresqlco.nf/doc/en/param/max_connections/
                                "%
                                | optional,
                              max_files_per_process
                                | String
                                | doc m%"
                                  Sets the maximum number of simultaneously open files for each server process.
                                  
                                  Minimum: 64
                                  
                                  Maximum: 2147483647
                                  
                                  If you have a large database with many partitioned tables, you may want to increase this.
                                  Note that you will probably have to increase ulimits for the postgres user or system as well.
                                  
                                  see https://postgresqlco.nf/doc/en/param/max_files_per_process/
                                "%
                                | optional,
                              max_function_args
                                | String
                                | doc m%"
                                  Shows the maximum number of function arguments.
                                  
                                  Minimum: 100
                                  
                                  Maximum: 100
                                  
                                  Informational: lets you know of non-standard installation or compile options.
                                  
                                  see https://postgresqlco.nf/doc/en/param/max_function_args/
                                "%
                                | optional,
                              max_identifier_length
                                | String
                                | doc m%"
                                  Shows the maximum identifier length.
                                  
                                  Minimum: 63
                                  
                                  Maximum: 63
                                  
                                  Informational: lets you know of non-standard installation or compile options.
                                  
                                  see https://postgresqlco.nf/doc/en/param/max_identifier_length/
                                "%
                                | optional,
                              max_index_keys
                                | String
                                | doc m%"
                                  Shows the maximum number of index keys.
                                  
                                  Minimum: 32
                                  
                                  Maximum: 32
                                  
                                  Informational: lets you know of non-standard installation or compile options.
                                  
                                  see https://postgresqlco.nf/doc/en/param/max_index_keys/
                                "%
                                | optional,
                              max_locks_per_transaction
                                | String
                                | doc m%"
                                  Sets the maximum number of locks per transaction.
                                  
                                  Minimum: 10
                                  
                                  Maximum: 2147483647
                                  
                                  Some databases with very complex schema or with many long-running tranactions need a higher amount.
                                  This is rare though.
                                  
                                  see https://postgresqlco.nf/doc/en/param/max_locks_per_transaction/
                                "%
                                | optional,
                              max_logical_replication_workers
                                | String
                                | doc m%"
                                  Maximum number of logical replication worker processes.
                                  
                                  Minimum: 0
                                  
                                  Maximum: 262143
                                  
                                  ... unless logical replication is falling behind and the replica isn't handling other traffic
                                  
                                  see https://postgresqlco.nf/doc/en/param/max_logical_replication_workers/
                                "%
                                | optional,
                              max_parallel_maintenance_workers
                                | String
                                | doc m%"
                                  Sets the maximum number of parallel processes per maintenance operation.
                                  
                                  Minimum: 0
                                  
                                  Maximum: 1024
                                  
                                  see https://postgresqlco.nf/doc/en/param/max_parallel_maintenance_workers/
                                "%
                                | optional,
                              max_parallel_workers
                                | String
                                | doc m%"
                                  Sets the maximum number of parallel workers that can be active at one time.
                                  
                                  Minimum: 0
                                  
                                  Maximum: 1024
                                  
                                  ...
                                  if you think you can benefit from parallel query, and even cores/1 for DW systems.
                                  
                                  see https://postgresqlco.nf/doc/en/param/max_parallel_workers/
                                "%
                                | optional,
                              max_parallel_workers_per_gather
                                | String
                                | doc m%"
                                  Sets the maximum number of parallel processes per executor node.
                                  
                                  Minimum: 0
                                  
                                  Maximum: 1024
                                  
                                  Increase if you plan to use parallel query to 4 or 8, depending on cores/concurrent sessions. 
                                  
                                  see https://postgresqlco.nf/doc/en/param/max_parallel_workers_per_gather/
                                "%
                                | optional,
                              max_pred_locks_per_page
                                | String
                                | doc m%"
                                  Sets the maximum number of predicate-locked tuples per page.
                                  
                                  Minimum: 0
                                  
                                  Maximum: 2147483647
                                  
                                  see https://postgresqlco.nf/doc/en/param/max_pred_locks_per_page/
                                "%
                                | optional,
                              max_pred_locks_per_relation
                                | String
                                | doc m%"
                                  Sets the maximum number of predicate-locked pages and tuples per relation.
                                  
                                  Minimum: -2147483648
                                  
                                  Maximum: 2147483647
                                  
                                  see https://postgresqlco.nf/doc/en/param/max_pred_locks_per_relation/
                                "%
                                | optional,
                              max_pred_locks_per_transaction
                                | String
                                | doc m%"
                                  Sets the maximum number of predicate locks per transaction.
                                  
                                  Minimum: 10
                                  
                                  Maximum: 2147483647
                                  
                                  Raise if you have a lot of tables and are seeing some transactions fail, but modestly as a larger transaction table is expensive.
                                  
                                  see https://postgresqlco.nf/doc/en/param/max_pred_locks_per_transaction/
                                "%
                                | optional,
                              max_prepared_transactions
                                | String
                                | doc m%"
                                  Sets the maximum number of simultaneously prepared transactions.
                                  
                                  Minimum: 0
                                  
                                  Maximum: 262143
                                  
                                  Most applications do not use XA prepared transactions, so should set this parameter to 0.
                                  If you do require prepared transactions, you should set this equal to max_connections to avoid blocking.  May require increasing kernel memory parameters.
                                  
                                  see https://postgresqlco.nf/doc/en/param/max_prepared_transactions/
                                "%
                                | optional,
                              max_replication_slots
                                | String
                                | doc m%"
                                  Sets the maximum number of simultaneously defined replication slots.
                                  
                                  Minimum: 0
                                  
                                  Maximum: 262143
                                  
                                  Set to twice as many replicas as you ever expect to have.
                                  
                                  see https://postgresqlco.nf/doc/en/param/max_replication_slots/
                                "%
                                | optional,
                              max_slot_wal_keep_size
                                | String
                                | doc m%"
                                  Sets the maximum WAL size that can be reserved by replication slots.
                                  
                                  Minimum: -1
                                  
                                  Maximum: 2147483647
                                  
                                  see https://postgresqlco.nf/doc/en/param/max_slot_wal_keep_size/
                                "%
                                | optional,
                              max_stack_depth
                                | String
                                | doc m%"
                                  Sets the maximum stack depth, in kilobytes.
                                  
                                  Minimum: 100
                                  
                                  Maximum: 2147483647
                                  
                                  Increase this if you have experienced the relevant error.
                                  
                                  see https://postgresqlco.nf/doc/en/param/max_stack_depth/
                                "%
                                | optional,
                              max_standby_archive_delay
                                | String
                                | doc m%"
                                  Sets the maximum delay before canceling queries when a hot standby server is processing archived WAL data.
                                  
                                  Minimum: -1
                                  
                                  Maximum: 2147483647
                                  
                                  If you are replicating primarily for failover, set this to a very low value (like 0) in order to keep the standby as up to date as possible.
                                  If this standby is running queries as its primary role, set to the length of time of the longest-running query you want to allow.
                                  
                                  see https://postgresqlco.nf/doc/en/param/max_standby_archive_delay/
                                "%
                                | optional,
                              max_standby_streaming_delay
                                | String
                                | doc m%"
                                  Sets the maximum delay before canceling queries when a hot standby server is processing streamed WAL data.
                                  
                                  Minimum: -1
                                  
                                  Maximum: 2147483647
                                  
                                  If you are replicating primarily for failover, set this to a very low value (like 0) in order to keep the standby as up to date as possible.
                                  If this standby is running queries as its primary role, set to the length of time of the longest-running query you want to allow.
                                  
                                  see https://postgresqlco.nf/doc/en/param/max_standby_streaming_delay/
                                "%
                                | optional,
                              max_sync_workers_per_subscription
                                | String
                                | doc m%"
                                  Maximum number of table synchronization workers per subscription.
                                  
                                  Minimum: 0
                                  
                                  Maximum: 262143
                                  
                                  Consider raising to cores/2 when initially synchronizing logical replication for a new replica.
                                  
                                  see https://postgresqlco.nf/doc/en/param/max_sync_workers_per_subscription/
                                "%
                                | optional,
                              max_wal_senders
                                | String
                                | doc m%"
                                  Sets the maximum number of simultaneously running WAL sender processes.
                                  
                                  Minimum: 0
                                  
                                  Maximum: 262143
                                  
                                  If you are replicating, you want to set this to the maximum number of standby servers you might possibly have.
                                  Performance impact when set above zero, but no additional penalty for setting it higher.
                                  
                                  see https://postgresqlco.nf/doc/en/param/max_wal_senders/
                                "%
                                | optional,
                              max_wal_size
                                | String
                                | doc m%"
                                  Sets the WAL size that triggers a checkpoint.
                                  
                                  Minimum: 2
                                  
                                  Maximum: 2147483647
                                  
                                  ... except for databases that write more than 1GB/hour of data, in which case increase the size of the log so that it's at least an hour worth of logs
                                  
                                  see https://postgresqlco.nf/doc/en/param/max_wal_size/
                                "%
                                | optional,
                              max_worker_processes
                                | String
                                | doc m%"
                                  Maximum number of concurrent worker processes.
                                  
                                  Minimum: 0
                                  
                                  Maximum: 262143
                                  
                                  Increase to max_parallel_workers + other workers, such as workers for logical replication and custom background workers.
                                  Not more than your number of cores, though.
                                  
                                  see https://postgresqlco.nf/doc/en/param/max_worker_processes/
                                "%
                                | optional,
                              min_dynamic_shared_memory
                                | String
                                | doc m%"
                                  Amount of dynamic shared memory reserved at startup.
                                  
                                  Minimum: 0
                                  
                                  Maximum: 2147483647
                                  
                                  see https://postgresqlco.nf/doc/en/param/min_dynamic_shared_memory/
                                "%
                                | optional,
                              min_parallel_index_scan_size
                                | String
                                | doc m%"
                                  Sets the minimum amount of index data for a parallel scan.
                                  
                                  Minimum: 0
                                  
                                  Maximum: 715827882
                                  
                                  see https://postgresqlco.nf/doc/en/param/min_parallel_index_scan_size/
                                "%
                                | optional,
                              min_parallel_table_scan_size
                                | String
                                | doc m%"
                                  Sets the minimum amount of table data for a parallel scan.
                                  
                                  Minimum: 0
                                  
                                  Maximum: 715827882
                                  
                                  ... , unless doing IoT or a read-only database.
                                  Raise to 100MB or so if your traffic on the database is very bursty, to prevent the WAL from shrinking too much.
                                  
                                  see https://postgresqlco.nf/doc/en/param/min_parallel_table_scan_size/
                                "%
                                | optional,
                              min_wal_size
                                | String
                                | doc m%"
                                  Sets the minimum size to shrink the WAL to.
                                  
                                  Minimum: 2
                                  
                                  Maximum: 2147483647
                                  
                                  see https://postgresqlco.nf/doc/en/param/min_wal_size/
                                "%
                                | optional,
                              old_snapshot_threshold
                                | String
                                | doc m%"
                                  Time before a snapshot is too old to read pages changed after the snapshot was taken.
                                  
                                  Minimum: -1
                                  
                                  Maximum: 86400
                                  
                                  ... or the length of the longest transaction you expect to run + 1 hour.
                                  
                                  see https://postgresqlco.nf/doc/en/param/old_snapshot_threshold/
                                "%
                                | optional,
                              parallel_leader_participation
                                | String
                                | doc m%"
                                  Controls whether Gather and Gather Merge also run subplans.
                                  
                                  see https://postgresqlco.nf/doc/en/param/parallel_leader_participation/
                                "%
                                | optional,
                              parallel_setup_cost
                                | String
                                | doc m%"
                                  Sets the planner's estimate of the cost of starting up worker processes for parallel query.
                                  
                                  Minimum: 0
                                  
                                  Maximum: 1.79769e+308
                                  
                                  see https://postgresqlco.nf/doc/en/param/parallel_setup_cost/
                                "%
                                | optional,
                              parallel_tuple_cost
                                | String
                                | doc m%"
                                  Sets the planner's estimate of the cost of passing each tuple (row) from worker to leader backend.
                                  
                                  Minimum: 0
                                  
                                  Maximum: 1.79769e+308
                                  
                                  see https://postgresqlco.nf/doc/en/param/parallel_tuple_cost/
                                "%
                                | optional,
                              password_encryption
                                | std.enum.TagOrString
                                | [| 'scram-sha-256, 'md5 |]
                                | doc m%"
                                  Chooses the algorithm for encrypting passwords.
                                  
                                  There is no good reason for this to be set to "off".
                                  
                                  see https://postgresqlco.nf/doc/en/param/password_encryption/
                                "%
                                | optional,
                              "pg_stat_statements.max"
                                | String
                                | doc m%"
                                  Sets the maximum number of statements tracked by pg_stat_statements.
                                  
                                  Minimum: 100
                                  
                                  Maximum: 1073741823
                                  
                                  see https://postgresqlco.nf/doc/en/param/pg_stat_statements.max/
                                "%
                                | optional,
                              "pg_stat_statements.save"
                                | String
                                | doc m%"
                                  Save pg_stat_statements statistics across server shutdowns.
                                  
                                  see https://postgresqlco.nf/doc/en/param/pg_stat_statements.save/
                                "%
                                | optional,
                              "pg_stat_statements.track"
                                | std.enum.TagOrString
                                | [| 'all, 'top, 'none |]
                                | doc m%"
                                  Selects which statements are tracked by pg_stat_statements.
                                  
                                  see https://postgresqlco.nf/doc/en/param/pg_stat_statements.track/
                                "%
                                | optional,
                              "pg_stat_statements.track_planning"
                                | String
                                | doc m%"
                                  Selects whether planning duration is tracked by pg_stat_statements.
                                  
                                  see https://postgresqlco.nf/doc/en/param/pg_stat_statements.track_planning/
                                "%
                                | optional,
                              "pg_stat_statements.track_utility"
                                | String
                                | doc m%"
                                  Selects whether utility commands are tracked by pg_stat_statements.
                                  
                                  see https://postgresqlco.nf/doc/en/param/pg_stat_statements.track_utility/
                                "%
                                | optional,
                              plan_cache_mode
                                | std.enum.TagOrString
                                | [|
                                  'force_custom_plan,
                                  'force_generic_plan,
                                  'auto
                                |]
                                | doc m%"
                                  Controls the planner's selection of custom or generic plan.
                                  
                                  see https://postgresqlco.nf/doc/en/param/plan_cache_mode/
                                "%
                                | optional,
                              port
                                | String
                                | doc m%"
                                  Sets the TCP port the server listens on.
                                  
                                  Minimum: 1
                                  
                                  Maximum: 65535
                                  
                                  Alternate ports are primarily useful for running several versions, or instances, of PostgreSQL on one machine.
                                  However, if you're using an alternate port to support several versions, it's often better to compile in the port number.
                                  
                                  see https://postgresqlco.nf/doc/en/param/port/
                                "%
                                | optional,
                              post_auth_delay
                                | String
                                | doc m%"
                                  Waits N seconds on connection startup after authentication.
                                  
                                  Minimum: 0
                                  
                                  Maximum: 2147
                                  
                                  Primarily used for attaching debuggers to sessions.
                                  
                                  see https://postgresqlco.nf/doc/en/param/post_auth_delay/
                                "%
                                | optional,
                              pre_auth_delay
                                | String
                                | doc m%"
                                  Waits N seconds on connection startup before authentication.
                                  
                                  Minimum: 0
                                  
                                  Maximum: 60
                                  
                                  Primarily used for attaching debuggers to sessions.
                                  
                                  see https://postgresqlco.nf/doc/en/param/pre_auth_delay/
                                "%
                                | optional,
                              primary_conninfo
                                | String
                                | doc m%"
                                  Sets the connection string to be used to connect to the sending server.
                                  
                                  see https://postgresqlco.nf/doc/en/param/primary_conninfo/
                                "%
                                | optional,
                              primary_slot_name
                                | String
                                | doc m%"
                                  Sets the name of the replication slot to use on the sending server.
                                  
                                  see https://postgresqlco.nf/doc/en/param/primary_slot_name/
                                "%
                                | optional,
                              promote_trigger_file
                                | String
                                | doc m%"
                                  Specifies a file name whose presence ends recovery in the standby.
                                  
                                  see https://postgresqlco.nf/doc/en/param/promote_trigger_file/
                                "%
                                | optional,
                              quote_all_identifiers
                                | String
                                | doc m%"
                                  When generating SQL fragments, quote all identifiers.
                                  
                                  see https://postgresqlco.nf/doc/en/param/quote_all_identifiers/
                                "%
                                | optional,
                              random_page_cost
                                | String
                                | doc m%"
                                  Sets the planner's estimate of the cost of a nonsequentially fetched disk page.
                                  
                                  Minimum: 0
                                  
                                  Maximum: 1.79769e+308
                                  
                                  Sets the ratio of seek to scan time for your database storage.
                                  Should not be altered unless you're using special storage (SSDs, high end SANs, etc.) where seek/scan ratios are actually different.  If you need the database to favor indexes more, tune effective_cache_size and some of the cpu_* costs instead.
                                  
                                  see https://postgresqlco.nf/doc/en/param/random_page_cost/
                                "%
                                | optional,
                              recovery_end_command
                                | String
                                | doc m%"
                                  Sets the shell command that will be executed once at the end of recovery.
                                  
                                  see https://postgresqlco.nf/doc/en/param/recovery_end_command/
                                "%
                                | optional,
                              recovery_init_sync_method
                                | std.enum.TagOrString
                                | [| 'syncfs, 'fsync |]
                                | doc m%"
                                  Sets the method for synchronizing the data directory before crash recovery.
                                  
                                  see https://postgresqlco.nf/doc/en/param/recovery_init_sync_method/
                                "%
                                | optional,
                              recovery_min_apply_delay
                                | String
                                | doc m%"
                                  Sets the minimum delay for applying changes during recovery.
                                  
                                  Minimum: 0
                                  
                                  Maximum: 2147483647
                                  
                                  see https://postgresqlco.nf/doc/en/param/recovery_min_apply_delay/
                                "%
                                | optional,
                              recovery_target
                                | String
                                | doc m%"
                                  Set to "immediate" to end recovery as soon as a consistent state is reached.
                                  
                                  see https://postgresqlco.nf/doc/en/param/recovery_target/
                                "%
                                | optional,
                              recovery_target_action
                                | std.enum.TagOrString
                                | [| 'shutdown, 'promote, 'pause |]
                                | doc m%"
                                  Sets the action to perform upon reaching the recovery target.
                                  
                                  see https://postgresqlco.nf/doc/en/param/recovery_target_action/
                                "%
                                | optional,
                              recovery_target_inclusive
                                | String
                                | doc m%"
                                  Sets whether to include or exclude transaction with recovery target.
                                  
                                  see https://postgresqlco.nf/doc/en/param/recovery_target_inclusive/
                                "%
                                | optional,
                              recovery_target_lsn
                                | String
                                | doc m%"
                                  Sets the LSN of the write-ahead log location up to which recovery will proceed.
                                  
                                  see https://postgresqlco.nf/doc/en/param/recovery_target_lsn/
                                "%
                                | optional,
                              recovery_target_name
                                | String
                                | doc m%"
                                  Sets the named restore point up to which recovery will proceed.
                                  
                                  see https://postgresqlco.nf/doc/en/param/recovery_target_name/
                                "%
                                | optional,
                              recovery_target_time
                                | String
                                | doc m%"
                                  Sets the time stamp up to which recovery will proceed.
                                  
                                  see https://postgresqlco.nf/doc/en/param/recovery_target_time/
                                "%
                                | optional,
                              recovery_target_timeline
                                | String
                                | doc m%"
                                  Specifies the timeline to recover into.
                                  
                                  see https://postgresqlco.nf/doc/en/param/recovery_target_timeline/
                                "%
                                | optional,
                              recovery_target_xid
                                | String
                                | doc m%"
                                  Sets the transaction ID up to which recovery will proceed.
                                  
                                  see https://postgresqlco.nf/doc/en/param/recovery_target_xid/
                                "%
                                | optional,
                              remove_temp_files_after_crash
                                | String
                                | doc m%"
                                  Remove temporary files after backend crash.
                                  
                                  see https://postgresqlco.nf/doc/en/param/remove_temp_files_after_crash/
                                "%
                                | optional,
                              restart_after_crash
                                | String
                                | doc m%"
                                  Reinitialize server after backend crash.
                                  
                                  ...
                                  unless deliberately running postgres in "ephemral" mode
                                  
                                  see https://postgresqlco.nf/doc/en/param/restart_after_crash/
                                "%
                                | optional,
                              restore_command
                                | String
                                | doc m%"
                                  Sets the shell command that will be called to retrieve an archived WAL file.
                                  
                                  see https://postgresqlco.nf/doc/en/param/restore_command/
                                "%
                                | optional,
                              row_security
                                | String
                                | doc m%"
                                  Enable row security.
                                  
                                  ...
                                  except when testing row security policies.
                                  
                                  see https://postgresqlco.nf/doc/en/param/row_security/
                                "%
                                | optional,
                              search_path
                                | String
                                | doc m%"
                                  Sets the schema search order for names that are not schema-qualified.
                                  
                                  Most DBAs either use the default or set search_path on a ROLE or database object basis.
                                  The one reason to set it in postgresql.conf is if you are taking the security step of removing the special "public" schema in order to lock down your database.
                                  
                                  see https://postgresqlco.nf/doc/en/param/search_path/
                                "%
                                | optional,
                              segment_size
                                | String
                                | doc m%"
                                  Shows the number of pages per disk file.
                                  
                                  Minimum: 131072
                                  
                                  Maximum: 131072
                                  
                                  Informational: lets you know of non-standard installation or compile options.
                                  
                                  see https://postgresqlco.nf/doc/en/param/segment_size/
                                "%
                                | optional,
                              seq_page_cost
                                | String
                                | doc m%"
                                  Sets the planner's estimate of the cost of a sequentially fetched disk page.
                                  
                                  Minimum: 0
                                  
                                  Maximum: 1.79769e+308
                                  
                                  The main reason to modify seq_page_cost is to try to get planner costs to more-or-less indicate execution times in milleseconds.
                                  All other costs change relative to this cost automatically.
                                  
                                  see https://postgresqlco.nf/doc/en/param/seq_page_cost/
                                "%
                                | optional,
                              server_encoding
                                | String
                                | doc m%"
                                  Shows the server (database) character set encoding.
                                  
                                  Set at initdb time.
                                  Displayed for information only.
                                  
                                  see https://postgresqlco.nf/doc/en/param/server_encoding/
                                "%
                                | optional,
                              server_version
                                | String
                                | doc m%"
                                  Shows the server version.
                                  
                                  Informational: lets you know of non-standard installation or compile options.
                                  
                                  see https://postgresqlco.nf/doc/en/param/server_version/
                                "%
                                | optional,
                              server_version_num
                                | String
                                | doc m%"
                                  Shows the server version as an integer.
                                  
                                  Minimum: 140009
                                  
                                  Maximum: 140009
                                  
                                  Informational: lets you know of non-standard installation or compile options.
                                  
                                  see https://postgresqlco.nf/doc/en/param/server_version_num/
                                "%
                                | optional,
                              session_preload_libraries
                                | String
                                | doc m%"
                                  Lists shared libraries to preload into each backend.
                                  
                                  Special uses for debugging or for loading application-specific extensions.
                                  
                                  see https://postgresqlco.nf/doc/en/param/session_preload_libraries/
                                "%
                                | optional,
                              session_replication_role
                                | std.enum.TagOrString
                                | [| 'local, 'replica, 'origin |]
                                | doc m%"
                                  Sets the session's behavior for triggers and rewrite rules.
                                  
                                  Only gets changed for databases which are taking part in a replication chain.
                                  In that case, "origin" servers fire replication (and other) triggers, and "replica" do not.  Part of the generic replication hooks which are used by Slony and Bucardo.
                                  
                                  see https://postgresqlco.nf/doc/en/param/session_replication_role/
                                "%
                                | optional,
                              shared_buffers
                                | String
                                | doc m%"
                                  Sets the number of shared memory buffers used by the server.
                                  
                                  Minimum: 16
                                  
                                  Maximum: 1073741823
                                  
                                  A memory quantity defining PostgreSQL's "dedicated" RAM, which is used for connection control, active operations, and more.
                                  However, since PostgreSQL also needs free RAM for file system buffers, sorts and maintenance operations, it is not advisable to set shared_buffers to a majority of RAM.   Note that increasing shared_buffers often requires you to increase some  system kernel parameters, most notably SHMMAX and SHMALL.  See  Operating System Environment: Managing Kernel Resources in the PostgreSQL documentation for more details.  Also note that shared_buffers over 2GB is  only supported on 64-bit systems.
                                  
                                  see https://postgresqlco.nf/doc/en/param/shared_buffers/
                                "%
                                | optional,
                              shared_memory_type
                                | std.enum.TagOrString
                                | [| 'mmap, 'sysv |]
                                | doc m%"
                                  Selects the shared memory implementation used for the main shared memory region.
                                  
                                  see https://postgresqlco.nf/doc/en/param/shared_memory_type/
                                "%
                                | optional,
                              shared_preload_libraries
                                | String
                                | doc m%"
                                  Lists shared libraries to preload into server.
                                  
                                  Primarily used for custom C libraries (data types, stored procedures) which you expect your application to use heavily.
                                  Trades memory overhead for these libraries against load time, so really should only be used for libraries you expect most queries to require.
                                  
                                  see https://postgresqlco.nf/doc/en/param/shared_preload_libraries/
                                "%
                                | optional,
                              ssl
                                | String
                                | doc m%"
                                  Enables SSL connections.
                                  
                                  One of several different settings to turn on SSL connections for PostgreSQL.
                                  SSL is a very good idea for highly secure setups.  In addition, you must compile in SSL support and set SSL connections in pg_hba.conf, as well as configuring SSL itself.
                                  
                                  see https://postgresqlco.nf/doc/en/param/ssl/
                                "%
                                | optional,
                              ssl_ca_file
                                | String
                                | doc m%"
                                  Location of the SSL certificate authority file.
                                  
                                  You should always use SSL connections if you can.
                                  However, this does require setting up SSL.
                                  
                                  see https://postgresqlco.nf/doc/en/param/ssl_ca_file/
                                "%
                                | optional,
                              ssl_cert_file
                                | String
                                | doc m%"
                                  Location of the SSL server certificate file.
                                  
                                  According to your SSL configuration, which maybe provided by your installer.
                                  
                                  see https://postgresqlco.nf/doc/en/param/ssl_cert_file/
                                "%
                                | optional,
                              ssl_ciphers
                                | String
                                | doc m%"
                                  Sets the list of allowed SSL ciphers.
                                  
                                  Allows DBAs to require "str" enough or preset ciphers for SSL connections.
                                  If you have not compiled SSL support, this parameter will not be available.
                                  
                                  see https://postgresqlco.nf/doc/en/param/ssl_ciphers/
                                "%
                                | optional,
                              ssl_crl_dir
                                | String
                                | doc m%"
                                  Location of the SSL certificate revocation list directory.
                                  
                                  see https://postgresqlco.nf/doc/en/param/ssl_crl_dir/
                                "%
                                | optional,
                              ssl_crl_file
                                | String
                                | doc m%"
                                  Location of the SSL certificate revocation list file.
                                  
                                  According to your SSL configuration, which maybe provided by your installer.
                                  
                                  see https://postgresqlco.nf/doc/en/param/ssl_crl_file/
                                "%
                                | optional,
                              ssl_dh_params_file
                                | String
                                | doc m%"
                                  Location of the SSL DH parameters file.
                                  
                                  According to your SSL configuration, which maybe provided by your installer.
                                  
                                  see https://postgresqlco.nf/doc/en/param/ssl_dh_params_file/
                                "%
                                | optional,
                              ssl_ecdh_curve
                                | String
                                | doc m%"
                                  Sets the curve to use for ECDH.
                                  
                                  According to your SSL configuration, which maybe provided by your installer.
                                  
                                  see https://postgresqlco.nf/doc/en/param/ssl_ecdh_curve/
                                "%
                                | optional,
                              ssl_key_file
                                | String
                                | doc m%"
                                  Location of the SSL server private key file.
                                  
                                  According to your SSL configuration, which maybe provided by your installer.
                                  
                                  see https://postgresqlco.nf/doc/en/param/ssl_key_file/
                                "%
                                | optional,
                              ssl_library
                                | String
                                | doc m%"
                                  Shows the name of the SSL library.
                                  
                                  see https://postgresqlco.nf/doc/en/param/ssl_library/
                                "%
                                | optional,
                              ssl_max_protocol_version
                                | std.enum.TagOrString
                                | [|
                                  '"TLSv1.3",
                                  '"TLSv1.2",
                                  '"TLSv1.1",
                                  'TLSv1,
                                  '"\"\""
                                |]
                                | doc m%"
                                  Sets the maximum SSL/TLS protocol version to use.
                                  
                                  see https://postgresqlco.nf/doc/en/param/ssl_max_protocol_version/
                                "%
                                | optional,
                              ssl_min_protocol_version
                                | std.enum.TagOrString
                                | [|
                                  '"TLSv1.3",
                                  '"TLSv1.2",
                                  '"TLSv1.1",
                                  'TLSv1
                                |]
                                | doc m%"
                                  Sets the minimum SSL/TLS protocol version to use.
                                  
                                  see https://postgresqlco.nf/doc/en/param/ssl_min_protocol_version/
                                "%
                                | optional,
                              ssl_passphrase_command
                                | String
                                | doc m%"
                                  Command to obtain passphrases for SSL.
                                  
                                  see https://postgresqlco.nf/doc/en/param/ssl_passphrase_command/
                                "%
                                | optional,
                              ssl_passphrase_command_supports_reload
                                | String
                                | doc m%"
                                  Also use ssl_passphrase_command during server reload.
                                  
                                  see https://postgresqlco.nf/doc/en/param/ssl_passphrase_command_supports_reload/
                                "%
                                | optional,
                              ssl_prefer_server_ciphers
                                | String
                                | doc m%"
                                  Give priority to server ciphersuite order.
                                  
                                  According to your SSL configuration, which maybe provided by your installer.
                                  
                                  see https://postgresqlco.nf/doc/en/param/ssl_prefer_server_ciphers/
                                "%
                                | optional,
                              standard_conforming_strings
                                | String
                                | doc m%"
                                  Causes '...' strings to treat backslashes literally.
                                  
                                  If you can clean up your application code, this disables use of
                                  as an escape character except in escaped (E' ') strings.  This is both safer, and less likely to result in unexpected output for things like Windows filepaths.
                                  
                                  see https://postgresqlco.nf/doc/en/param/standard_conforming_strings/
                                "%
                                | optional,
                              statement_timeout
                                | String
                                | doc m%"
                                  Sets the maximum allowed duration of any statement.
                                  
                                  Minimum: 0
                                  
                                  Maximum: 2147483647
                                  
                                  Defaults to 0, meaning no timeout.
                                  For most web applications, it's a good idea to set a default timeout, such as 60s to prevent runaway queries from bogging the server.  If set, though, you need to remember to set (at the ROLE or session level) a higher statement_timeout for expected long-running maintenance or batch operations.
                                  
                                  see https://postgresqlco.nf/doc/en/param/statement_timeout/
                                "%
                                | optional,
                              stats_temp_directory
                                | String
                                | doc m%"
                                  Writes temporary statistics files to the specified directory.
                                  
                                  Useful for extremely high-volume databases; the stats temp directory could be set to a RAMdisk or other high-speed resource (at the cost of potentially losing some stats) as this file gets updated hundreds of times per second.
                                  
                                  
                                  see https://postgresqlco.nf/doc/en/param/stats_temp_directory/
                                "%
                                | optional,
                              superuser_reserved_connections
                                | String
                                | doc m%"
                                  Sets the number of connection slots reserved for superusers.
                                  
                                  Minimum: 0
                                  
                                  Maximum: 262143
                                  
                                  You should have at least one superuser connection open for troubleshooting at all times.
                                  So if you run more than two concurrent regular administrative tasks, you'll need more reserved connections.  Note that this number is taken from max_connections, not in addition to it.
                                  
                                  see https://postgresqlco.nf/doc/en/param/superuser_reserved_connections/
                                "%
                                | optional,
                              synchronize_seqscans
                                | String
                                | doc m%"
                                  Enable synchronized sequential scans.
                                  
                                  This new peformance enhancment can also cause rows to be returned in an order other than physical storage order.
                                  For poorly-written older applications, this may break application code; turn it off to disable.
                                  
                                  see https://postgresqlco.nf/doc/en/param/synchronize_seqscans/
                                "%
                                | optional,
                              synchronous_commit
                                | std.enum.TagOrString
                                | [|
                                  'off,
                                  'on,
                                  'remote_apply,
                                  'remote_write,
                                  'local
                                |]
                                | doc m%"
                                  Sets the current transaction's synchronization level.
                                  
                                  If data integrity is less important to you than response times (for example, if you are running a social networking application or processing logs) you can turn this off, making your transaction logs asynchronous.
                                  This can result in up to wal_buffers or wal_writer_delay * 2 worth of data in an unexpected shutdown, but your database will not be corrupted.  Note that you can also set this on a per-session basis, allowing you to mix "lossy" and "safe" transactions, which is a better approach for most applications.
                                  
                                  see https://postgresqlco.nf/doc/en/param/synchronous_commit/
                                "%
                                | optional,
                              synchronous_standby_names
                                | String
                                | doc m%"
                                  Number of synchronous standbys and list of names of potential synchronous ones.
                                  
                                  Special, see syntax for sync standby config.
                                  Don't get into this if you're not sure what you're doing.
                                  
                                  see https://postgresqlco.nf/doc/en/param/synchronous_standby_names/
                                "%
                                | optional,
                              syslog_facility
                                | std.enum.TagOrString
                                | [|
                                  'local7,
                                  'local6,
                                  'local5,
                                  'local4,
                                  'local3,
                                  'local2,
                                  'local1,
                                  'local0
                                |]
                                | doc m%"
                                  Sets the syslog "facility" to be used when syslog enabled.
                                  
                                  Change the logserver facility if you are having a conflict with other applications.
                                  
                                  see https://postgresqlco.nf/doc/en/param/syslog_facility/
                                "%
                                | optional,
                              syslog_ident
                                | String
                                | doc m%"
                                  Sets the program name used to identify PostgreSQL messages in syslog.
                                  
                                  If using a centralized logserver or if you have multiple Postgres instances, you probably want to identify your postgresql instance by hostname.
                                  
                                  see https://postgresqlco.nf/doc/en/param/syslog_ident/
                                "%
                                | optional,
                              syslog_sequence_numbers
                                | String
                                | doc m%"
                                  Add sequence number to syslog messages to avoid duplicate suppression.
                                  
                                  see https://postgresqlco.nf/doc/en/param/syslog_sequence_numbers/
                                "%
                                | optional,
                              syslog_split_messages
                                | String
                                | doc m%"
                                  Split messages sent to syslog by lines and to fit into 1024 bytes.
                                  
                                  see https://postgresqlco.nf/doc/en/param/syslog_split_messages/
                                "%
                                | optional,
                              tcp_keepalives_count
                                | String
                                | doc m%"
                                  Maximum number of TCP keepalive retransmits.
                                  
                                  Minimum: 0
                                  
                                  Maximum: 2147483647
                                  
                                  The three tcp_keepalive settings help manage a system which tends to have "undead" connection/query processes.
                                  For systems which support them, you can regulate checking that connections are still "live" end-to-end to kill them off.  Not needed if you're not having a problem.  Should be synchronized with the new TCP keepalive support in libpq on the client side.
                                  
                                  see https://postgresqlco.nf/doc/en/param/tcp_keepalives_count/
                                "%
                                | optional,
                              tcp_keepalives_idle
                                | String
                                | doc m%"
                                  Time between issuing TCP keepalives.
                                  
                                  Minimum: 0
                                  
                                  Maximum: 2147483647
                                  
                                  see https://postgresqlco.nf/doc/en/param/tcp_keepalives_idle/
                                "%
                                | optional,
                              tcp_keepalives_interval
                                | String
                                | doc m%"
                                  Time between TCP keepalive retransmits.
                                  
                                  Minimum: 0
                                  
                                  Maximum: 2147483647
                                  
                                  see https://postgresqlco.nf/doc/en/param/tcp_keepalives_interval/
                                "%
                                | optional,
                              tcp_user_timeout
                                | String
                                | doc m%"
                                  TCP user timeout.
                                  
                                  Minimum: 0
                                  
                                  Maximum: 2147483647
                                  
                                  see https://postgresqlco.nf/doc/en/param/tcp_user_timeout/
                                "%
                                | optional,
                              temp_buffers
                                | String
                                | doc m%"
                                  Sets the maximum number of temporary buffers used by each session.
                                  
                                  Minimum: 100
                                  
                                  Maximum: 1073741823
                                  
                                  Currently used only for holding temporary tables in memory.
                                  If your application requires heavy use of temporary tables (many proprietary reporting engines do) then you might want to increase this substantially.  However, be careful because this is non-shared RAM which is allocated per session.  Otherwise, the default is fine.
                                  
                                  see https://postgresqlco.nf/doc/en/param/temp_buffers/
                                "%
                                | optional,
                              temp_file_limit
                                | String
                                | doc m%"
                                  Limits the total size of all temporary files used by each process.
                                  
                                  Minimum: -1
                                  
                                  Maximum: 2147483647
                                  
                                  ... or something which is bigger than your largest possible sort, but not big enough to run you out of disk space.
                                  
                                  see https://postgresqlco.nf/doc/en/param/temp_file_limit/
                                "%
                                | optional,
                              temp_tablespaces
                                | String
                                | doc m%"
                                  Sets the tablespace(s) to use for temporary tables and sort files.
                                  
                                  For applications which create lots of temporary objects, this setting can be used to put the temp space on a faster/separate device, or even a ramdisk.
                                  Because it accepts a list, it can even be used to load balance temp object creation among several tablespaces.
                                  
                                  see https://postgresqlco.nf/doc/en/param/temp_tablespaces/
                                "%
                                | optional,
                              timezone_abbreviations
                                | String
                                | doc m%"
                                  Selects a file of time zone abbreviations.
                                  
                                  See appendencies for alternatives.
                                  
                                  see https://postgresqlco.nf/doc/en/param/timezone_abbreviations/
                                "%
                                | optional,
                              trace_notify
                                | String
                                | doc m%"
                                  Generates debugging output for LISTEN and NOTIFY.
                                  
                                  The various TRACE options are for debugging specific behaviors interactively. Many of them require compile-time options. trace_notice is for debugging listen/notice.
                                  
                                  see https://postgresqlco.nf/doc/en/param/trace_notify/
                                "%
                                | optional,
                              trace_recovery_messages
                                | std.enum.TagOrString
                                | [|
                                  'error,
                                  'warning,
                                  'notice,
                                  'log,
                                  'debug1,
                                  'debug2,
                                  'debug3,
                                  'debug4,
                                  'debug5
                                |]
                                | doc m%"
                                  Enables logging of recovery-related debugging information.
                                  
                                  For troubleshooting replication/PITR failures.
                                  
                                  see https://postgresqlco.nf/doc/en/param/trace_recovery_messages/
                                "%
                                | optional,
                              trace_sort
                                | String
                                | doc m%"
                                  Emit information about resource usage in sorting.
                                  
                                  For debugging sorts.
                                  
                                  see https://postgresqlco.nf/doc/en/param/trace_sort/
                                "%
                                | optional,
                              track_activities
                                | String
                                | doc m%"
                                  Collects information about executing commands.
                                  
                                  see https://postgresqlco.nf/doc/en/param/track_activities/
                                "%
                                | optional,
                              track_activity_query_size
                                | String
                                | doc m%"
                                  Sets the size reserved for pg_stat_activity.query, in bytes.
                                  
                                  Minimum: 100
                                  
                                  Maximum: 1048576
                                  
                                  Sets the truncation threshold of queries in pg_stat_activity (and pg_stat_statements).
                                  Increase it if you have really long queries which are being cut off, but there is significant extra memory usage for keeping longer queries.
                                  
                                  see https://postgresqlco.nf/doc/en/param/track_activity_query_size/
                                "%
                                | optional,
                              track_commit_timestamp
                                | String
                                | doc m%"
                                  Collects transaction commit time.
                                  
                                  see https://postgresqlco.nf/doc/en/param/track_commit_timestamp/
                                "%
                                | optional,
                              track_counts
                                | String
                                | doc m%"
                                  Collects statistics on database activity.
                                  
                                  Needed for autovacuum to work properly.
                                  Do not turn off.
                                  
                                  see https://postgresqlco.nf/doc/en/param/track_counts/
                                "%
                                | optional,
                              track_functions
                                | std.enum.TagOrString
                                | [| 'all, 'pl, 'none |]
                                | doc m%"
                                  Collects function-level statistics on database activity.
                                  
                                  Set it to 'pl' to collect stats on user-defined functions.
                                  Very useful for stored procedure performance profiling and troubleshooting.
                                  
                                  see https://postgresqlco.nf/doc/en/param/track_functions/
                                "%
                                | optional,
                              track_io_timing
                                | String
                                | doc m%"
                                  Collects timing statistics for database I/O activity.
                                  
                                  Turn it on if you're monitoring disk usage per request.
                                  
                                  see https://postgresqlco.nf/doc/en/param/track_io_timing/
                                "%
                                | optional,
                              track_wal_io_timing
                                | String
                                | doc m%"
                                  Collects timing statistics for WAL I/O activity.
                                  
                                  see https://postgresqlco.nf/doc/en/param/track_wal_io_timing/
                                "%
                                | optional,
                              transaction_deferrable
                                | String
                                | doc m%"
                                  Whether to defer a read-only serializable transaction until it can be executed with no possible serialization failures.
                                  
                                  see https://postgresqlco.nf/doc/en/param/transaction_deferrable/
                                "%
                                | optional,
                              transaction_isolation
                                | std.enum.TagOrString
                                | [|
                                  '"\"read uncommitted\"",
                                  '"\"read committed\"",
                                  '"\"repeatable read\"",
                                  'serializable
                                |]
                                | doc m%"
                                  Sets the current transaction's isolation level.
                                  
                                  Set per session if you need, for example, SERIALIZABLE semantics to prevent data conflicts for multi-step transactions.
                                  
                                  see https://postgresqlco.nf/doc/en/param/transaction_isolation/
                                "%
                                | optional,
                              transaction_read_only
                                | String
                                | doc m%"
                                  Sets the current transaction's read-only status.
                                  
                                  Sets the current transaction to read only.
                                  Useful as part of a SQL injection prevention program.  Shows as TRUE on replication standbys.
                                  
                                  see https://postgresqlco.nf/doc/en/param/transaction_read_only/
                                "%
                                | optional,
                              transform_null_equals
                                | String
                                | doc m%"
                                  Treats "expr=NULL" as "expr IS NULL".
                                  
                                  Provided for compatibility with Microsoft Access and similar broken applications which treat "= NULL" as the same as "IS NULL".
                                  
                                  
                                  see https://postgresqlco.nf/doc/en/param/transform_null_equals/
                                "%
                                | optional,
                              unix_socket_directories
                                | String
                                | doc m%"
                                  Sets the directories where Unix-domain sockets will be created.
                                  
                                  Change to a more secure directory, which many installers do for you.
                                  
                                  see https://postgresqlco.nf/doc/en/param/unix_socket_directories/
                                "%
                                | optional,
                              unix_socket_group
                                | String
                                | doc m%"
                                  Sets the owning group of the Unix-domain socket.
                                  
                                  see https://postgresqlco.nf/doc/en/param/unix_socket_group/
                                "%
                                | optional,
                              unix_socket_permissions
                                | String
                                | doc m%"
                                  Sets the access permissions of the Unix-domain socket.
                                  
                                  Minimum: 0
                                  
                                  Maximum: 511
                                  
                                  see https://postgresqlco.nf/doc/en/param/unix_socket_permissions/
                                "%
                                | optional,
                              update_process_title
                                | String
                                | doc m%"
                                  Updates the process title to show the active SQL command.
                                  
                                  Updates the process title on OSes which support this.
                                  Very useful for checking resource usage by currently running queries.
                                  
                                  see https://postgresqlco.nf/doc/en/param/update_process_title/
                                "%
                                | optional,
                              vacuum_cost_delay
                                | String
                                | doc m%"
                                  Vacuum cost delay in milliseconds.
                                  
                                  Minimum: 0
                                  
                                  Maximum: 100
                                  
                                  Most of the time, you will want manual vacuum to execute without vacuum_delay, especially if you're using it as part of ETL.
                                  If for some reason you can't use autovacuum on an OLTP database, however, you may want to increase this to 20ms to decrease the impact vacuum has on currently running queries.  Will cause vacuum to take up to twice as long to complete.
                                  
                                  see https://postgresqlco.nf/doc/en/param/vacuum_cost_delay/
                                "%
                                | optional,
                              vacuum_cost_limit
                                | String
                                | doc m%"
                                  Vacuum cost amount available before napping.
                                  
                                  Minimum: 1
                                  
                                  Maximum: 10000
                                  
                                  see https://postgresqlco.nf/doc/en/param/vacuum_cost_limit/
                                "%
                                | optional,
                              vacuum_cost_page_dirty
                                | String
                                | doc m%"
                                  Vacuum cost for a page dirtied by vacuum.
                                  
                                  Minimum: 0
                                  
                                  Maximum: 10000
                                  
                                  see https://postgresqlco.nf/doc/en/param/vacuum_cost_page_dirty/
                                "%
                                | optional,
                              vacuum_cost_page_hit
                                | String
                                | doc m%"
                                  Vacuum cost for a page found in the buffer cache.
                                  
                                  Minimum: 0
                                  
                                  Maximum: 10000
                                  
                                  see https://postgresqlco.nf/doc/en/param/vacuum_cost_page_hit/
                                "%
                                | optional,
                              vacuum_cost_page_miss
                                | String
                                | doc m%"
                                  Vacuum cost for a page not found in the buffer cache.
                                  
                                  Minimum: 0
                                  
                                  Maximum: 10000
                                  
                                  see https://postgresqlco.nf/doc/en/param/vacuum_cost_page_miss/
                                "%
                                | optional,
                              vacuum_defer_cleanup_age
                                | String
                                | doc m%"
                                  Number of transactions by which VACUUM and HOT cleanup should be deferred, if any.
                                  
                                  Minimum: 0
                                  
                                  Maximum: 1000000
                                  
                                  No longer effective thanks to hot_standby_feedback.
                                  
                                  see https://postgresqlco.nf/doc/en/param/vacuum_defer_cleanup_age/
                                "%
                                | optional,
                              vacuum_failsafe_age
                                | String
                                | doc m%"
                                  Age at which VACUUM should trigger failsafe to avoid a wraparound outage.
                                  
                                  Minimum: 0
                                  
                                  Maximum: 2100000000
                                  
                                  see https://postgresqlco.nf/doc/en/param/vacuum_failsafe_age/
                                "%
                                | optional,
                              vacuum_freeze_min_age
                                | String
                                | doc m%"
                                  Minimum age at which VACUUM should freeze a table row.
                                  
                                  Minimum: 0
                                  
                                  Maximum: 1000000000
                                  
                                  Most users will want to decrease this so that rows which have been cold for a long time get frozen earlier, and avoid an autovacuum_freeze.
                                  The suggestion of 500000 is for a moderately busy database; do not set to less than a few hours worth of XIDs.  Maximum setting is 1/2 of autovaccuum_max_freeze_age.
                                  
                                  see https://postgresqlco.nf/doc/en/param/vacuum_freeze_min_age/
                                "%
                                | optional,
                              vacuum_freeze_table_age
                                | String
                                | doc m%"
                                  Age at which VACUUM should scan whole table to freeze tuples.
                                  
                                  Minimum: 0
                                  
                                  Maximum: 2000000000
                                  
                                  Generally set to 80% of autovacuum_max_freeze age to preempt a full vacuum freeze.
                                  If you can schedule cron vacuums during application slow periods, it might be valuable to lower this value in order to encourage vacuum freezing of tables before they are triggered by autovacuum.
                                  
                                  see https://postgresqlco.nf/doc/en/param/vacuum_freeze_table_age/
                                "%
                                | optional,
                              vacuum_multixact_failsafe_age
                                | String
                                | doc m%"
                                  Multixact age at which VACUUM should trigger failsafe to avoid a wraparound outage.
                                  
                                  Minimum: 0
                                  
                                  Maximum: 2100000000
                                  
                                  see https://postgresqlco.nf/doc/en/param/vacuum_multixact_failsafe_age/
                                "%
                                | optional,
                              vacuum_multixact_freeze_min_age
                                | String
                                | doc m%"
                                  Minimum age at which VACUUM should freeze a MultiXactId in a table row.
                                  
                                  Minimum: 0
                                  
                                  Maximum: 1000000000
                                  
                                  Like freeze_min_age, lower this to somewhere around an hour of XID burn.
                                  Try starting with 500000.
                                  
                                  see https://postgresqlco.nf/doc/en/param/vacuum_multixact_freeze_min_age/
                                "%
                                | optional,
                              vacuum_multixact_freeze_table_age
                                | String
                                | doc m%"
                                  Multixact age at which VACUUM should scan whole table to freeze tuples.
                                  
                                  Minimum: 0
                                  
                                  Maximum: 2000000000
                                  
                                  Set to 80% of autovaccum_multixact_freeze_max_age
                                  
                                  see https://postgresqlco.nf/doc/en/param/vacuum_multixact_freeze_table_age/
                                "%
                                | optional,
                              wal_block_size
                                | String
                                | doc m%"
                                  Shows the block size in the write ahead log.
                                  
                                  Minimum: 8192
                                  
                                  Maximum: 8192
                                  
                                  Informational: lets you know of non-standard installation or compile options.
                                  
                                  see https://postgresqlco.nf/doc/en/param/wal_block_size/
                                "%
                                | optional,
                              wal_buffers
                                | String
                                | doc m%"
                                  Sets the number of disk-page buffers in shared memory for WAL.
                                  
                                  Minimum: -1
                                  
                                  Maximum: 262143
                                  
                                  On very busy, high-core machines it can be useful to raise this to as much as 128MB.
                                  
                                  see https://postgresqlco.nf/doc/en/param/wal_buffers/
                                "%
                                | optional,
                              wal_compression
                                | String
                                | doc m%"
                                  Compresses full-page writes written in WAL file.
                                  
                                  ... unless your storage is less constrained than your CPU.
                                  
                                  see https://postgresqlco.nf/doc/en/param/wal_compression/
                                "%
                                | optional,
                              wal_consistency_checking
                                | String
                                | doc m%"
                                  Sets the WAL resource managers for which WAL consistency checks are done.
                                  
                                  see https://postgresqlco.nf/doc/en/param/wal_consistency_checking/
                                "%
                                | optional,
                              wal_init_zero
                                | String
                                | doc m%"
                                  Writes zeroes to new WAL files before first use.
                                  
                                  see https://postgresqlco.nf/doc/en/param/wal_init_zero/
                                "%
                                | optional,
                              wal_keep_size
                                | String
                                | doc m%"
                                  Sets the size of WAL files held for standby servers.
                                  
                                  Minimum: 0
                                  
                                  Maximum: 2147483647
                                  
                                  see https://postgresqlco.nf/doc/en/param/wal_keep_size/
                                "%
                                | optional,
                              wal_level
                                | std.enum.TagOrString
                                | [| 'logical, 'replica, 'minimal |]
                                | doc m%"
                                  Sets the level of information written to the WAL.
                                  
                                  Level replica is required for binary replication, and level logical is required for logical replication.
                                  This is a setting because raising the level adds more writes to the WAL, so if you're not doing replication or archiving at all, set it to minimal.
                                  
                                  see https://postgresqlco.nf/doc/en/param/wal_level/
                                "%
                                | optional,
                              wal_log_hints
                                | String
                                | doc m%"
                                  Writes full pages to WAL when first modified after a checkpoint, even for a non-critical modification.
                                  
                                  see https://postgresqlco.nf/doc/en/param/wal_log_hints/
                                "%
                                | optional,
                              wal_receiver_create_temp_slot
                                | String
                                | doc m%"
                                  Sets whether a WAL receiver should create a temporary replication slot if no permanent slot is configured.
                                  
                                  see https://postgresqlco.nf/doc/en/param/wal_receiver_create_temp_slot/
                                "%
                                | optional,
                              wal_receiver_status_interval
                                | String
                                | doc m%"
                                  Sets the maximum interval between WAL receiver status reports to the sending server.
                                  
                                  Minimum: 0
                                  
                                  Maximum: 2147483
                                  
                                  see https://postgresqlco.nf/doc/en/param/wal_receiver_status_interval/
                                "%
                                | optional,
                              wal_receiver_timeout
                                | String
                                | doc m%"
                                  Sets the maximum wait time to receive data from the sending server.
                                  
                                  Minimum: 0
                                  
                                  Maximum: 2147483647
                                  
                                  see https://postgresqlco.nf/doc/en/param/wal_receiver_timeout/
                                "%
                                | optional,
                              wal_recycle
                                | String
                                | doc m%"
                                  Recycles WAL files by renaming them.
                                  
                                  see https://postgresqlco.nf/doc/en/param/wal_recycle/
                                "%
                                | optional,
                              wal_retrieve_retry_interval
                                | String
                                | doc m%"
                                  Sets the time to wait before retrying to retrieve WAL after a failed attempt.
                                  
                                  Minimum: 1
                                  
                                  Maximum: 2147483647
                                  
                                  see https://postgresqlco.nf/doc/en/param/wal_retrieve_retry_interval/
                                "%
                                | optional,
                              wal_segment_size
                                | String
                                | doc m%"
                                  Shows the size of write ahead log segments.
                                  
                                  Minimum: 1048576
                                  
                                  Maximum: 1073741824
                                  
                                  Informational: lets you know of non-standard installation or compile options.
                                  
                                  see https://postgresqlco.nf/doc/en/param/wal_segment_size/
                                "%
                                | optional,
                              wal_sender_timeout
                                | String
                                | doc m%"
                                  Sets the maximum time to wait for WAL replication.
                                  
                                  Minimum: 0
                                  
                                  Maximum: 2147483647
                                  
                                  see https://postgresqlco.nf/doc/en/param/wal_sender_timeout/
                                "%
                                | optional,
                              wal_skip_threshold
                                | String
                                | doc m%"
                                  Minimum size of new file to fsync instead of writing WAL.
                                  
                                  Minimum: 0
                                  
                                  Maximum: 2147483647
                                  
                                  see https://postgresqlco.nf/doc/en/param/wal_skip_threshold/
                                "%
                                | optional,
                              wal_sync_method
                                | std.enum.TagOrString
                                | [|
                                  'open_datasync,
                                  'open_sync,
                                  'fdatasync,
                                  'fsync
                                |]
                                | doc m%"
                                  Selects the method used for forcing WAL updates to disk.
                                  
                                  On install, PostgreSQL figures out the best method for your OS.
                                  It's pretty good at this point; don't change the default.  Note that the value of "fsync" shown in your postgresql.conf file is not necessarily the setting the server is using; try SHOW instead.
                                  
                                  see https://postgresqlco.nf/doc/en/param/wal_sync_method/
                                "%
                                | optional,
                              wal_writer_delay
                                | String
                                | doc m%"
                                  Time between WAL flushes performed in the WAL writer.
                                  
                                  Minimum: 1
                                  
                                  Maximum: 10000
                                  
                                  Defines the maximum data (in time) that can be lost if synchronous_commit=off and the database shuts down.
                                  Because of long transactions, actual data lost can be up to twice this time.  Has no effect if synchronous_commit=on.  If you are going to turn synchronous_commit=off server-wide, you should probably lower this to prevent too much data loss.
                                  
                                  see https://postgresqlco.nf/doc/en/param/wal_writer_delay/
                                "%
                                | optional,
                              wal_writer_flush_after
                                | String
                                | doc m%"
                                  Amount of WAL written out by WAL writer that triggers a flush.
                                  
                                  Minimum: 0
                                  
                                  Maximum: 2147483647
                                  
                                  see https://postgresqlco.nf/doc/en/param/wal_writer_flush_after/
                                "%
                                | optional,
                              work_mem
                                | String
                                | doc m%"
                                  Sets the maximum memory to be used for query workspaces.
                                  
                                  Minimum: 64
                                  
                                  Maximum: 2147483647
                                  
                                  Sets the limit for the amount of non-shared RAM available for each query operation, including sorts and hashes.
                                  This limit acts as a primitive resource control, preventing the server from going into swap due to overallocation.  Note that this is non-shared RAM per operation, which means large complex queries can use multple times this amount.  Also, work_mem is allocated by powers of two, so round to the nearest binary step.  The second formula is for reporting and DW servers which run a lot of complex queries.
                                  
                                  see https://postgresqlco.nf/doc/en/param/work_mem/
                                "%
                                | optional,
                              xmlbinary
                                | std.enum.TagOrString
                                | [| 'hex, 'base64 |]
                                | doc m%"
                                  Sets how binary values are to be encoded in XML.
                                  
                                  Set to whatever your client application supports.
                                  
                                  see https://postgresqlco.nf/doc/en/param/xmlbinary/
                                "%
                                | optional,
                              xmloption
                                | std.enum.TagOrString
                                | [| 'document, 'content |]
                                | doc m%"
                                  Sets whether XML data in implicit parsing and serialization operations is to be considered as documents or content fragments.
                                  
                                  see https://postgresqlco.nf/doc/en/param/xmloption/
                                "%
                                | optional,
                              zero_damaged_pages
                                | String
                                | doc m%"
                                  Continues processing past damaged page headers.
                                  
                                  Used for salvaging data from a known-bad database.
                                  You should always make a binary backup before using this option, and it should not be used while users are allowed to connect.  After damaged pages are erased, other kinds of data intergrity errors may persist (like broken PKs and FKs).  ZDP should generally be used to get your DB to a stage where the data can be dumped and loaded into a new database.
                                  
                                  see https://postgresqlco.nf/doc/en/param/zero_damaged_pages/
                                "%
                                | optional,
                            }
                            | doc "Define your parameters on https://pgtune.leopard.in.ua"
                            | optional,
                          priorityClassName
                            | String
                            | doc "Name of the priority class which will be used in every generated Pod, if the PriorityClass specified does not exist, the pod will not be able to schedule. Please refer to https://kubernetes.io/docs/concepts/scheduling-eviction/pod-priority-preemption/#priorityclass for more information"
                            | optional,
                          recovery
                            | {
                              barmanObjectStore
                                | js2n.Nullable ({ _ | Dyn })
                                | doc "See: https://cloudnative-pg.io/documentation/current/backup_recovery/"
                                | optional,
                              database | js2n.Nullable String | optional,
                              enabled | Bool | optional,
                              owner | js2n.Nullable String | optional,
                              secretName | js2n.Nullable String | optional,
                              targetTime
                                | String
                                | doc "Relative to Postgres server timezone"
                                | optional,
                              ..
                            }
                            | optional,
                          registryCredentials
                            | js2n.Nullable ({ _ | Dyn })
                            | optional,
                          replica
                            | { enabled | Bool | optional, .. }
                            | optional,
                          resources
                            | std.contract.any_of
                              [
                                js2n.Null,
                                Bool,
                                { _ | Dyn },
                                Array Dyn,
                                Number,
                                String
                              ]
                            | doc m%"
                              We usually recommend not to specify default resources and to leave this as a conscious
                              choice for the user. This also increases chances charts run on environments with little
                              resources, such as Minikube. If you do want to specify resources, uncomment the following
                              lines, adjust them as necessary, and remove the curly braces after 'resources:'.
                            "%
                            | optional,
                          scheduledBackups | { _ | Dyn } | optional,
                          sharedPreloadLibraries
                            | std.contract.any_of
                              [
                                js2n.Null,
                                Bool,
                                Number,
                                String,
                                { _ | Dyn },
                                Array Dyn
                              ]
                            | optional,
                          superuserSecretName | js2n.Nullable String | optional,
                          tolerations | Array Dyn | optional,
                          ..
                        }
                        | optional,
                      "~chart" | std.contract.Equal "pg" | optional,
                      ..
                    } js2n.Always,
                  js2n.IfThenElse
                    (std.contract.any_of
                      [
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Record
                          {
                            additional = 'Some Dyn,
                            patterns = {},
                            properties = { "~chart" = js2n.Const "jobs", },
                            required = { "~chart" = true, },
                          },
                        Array Dyn
                      ]) refs."properties.jobs" js2n.Always,
                  js2n.IfThenElse
                    (std.contract.any_of
                      [
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "~chart" ],
                        Array Dyn
                      ]) refs."definitions.chart" js2n.Always,
                  { _ | Dyn }
                ]),
        patterns =
          {
              "^app-.*" =
                std.contract.Sequence
                    [
                      refs."additionalProperties.allOf.0.then",
                      { "~chart" | std.contract.Equal "app" | optional, .. }
                    ],
              "^pg-.*" =
                std.contract.Sequence
                    [
                      refs."additionalProperties.allOf.1.then",
                      { "~chart" | std.contract.Equal "pg" | optional, .. }
                    ],
            },
        properties =
          {
              global =
                {
                    host | String | doc "Default host name" | optional,
                    imageProject
                      | String
                      | doc "Default docker project name. ex registry/[imageProject]/image:tag"
                      | optional,
                    imageRepository
                      | String
                      | doc "Default docker image repository name. ex registry/project/[imageRepository]image:tag"
                      | optional,
                    imageTag
                      | String
                      | doc "Default docker image repository name. ex registry/project/[imageRepository]image:tag"
                      | optional,
                    namespace | String | doc "Default namespace" | optional,
                    pgDatabase
                      | String
                      | doc "Default PG database name, defaults to `application-branch`"
                      | optional,
                    pgSecretName
                      | String
                      | doc "Default PG secret name, defaults to `pg-user-branch`"
                      | optional,
                    pgUser
                      | String
                      | doc "Default PG user name, defaults to `user-branch`"
                      | optional,
                    rancherProjectId
                      | String
                      | doc "Rancher project ID to put on the"
                      | optional,
                    registry
                      | String
                      | doc "Default docker registry URL, it is recommended tu use .kontinuous/config.yaml file to setup registry instead of using values"
                      | optional,
                    registrySecretRefName
                      | String
                      | doc "Secret name that hold the docker registry to push images to"
                      | optional,
                    replicas
                      | Number
                      | doc "Default number of deployment replicas"
                      | optional,
                    repositoryName
                      | String
                      | doc "Application name, default to GIT repository name"
                      | optional,
                    ttl
                      | String
                      | doc "Dev environments janitor namespaces time-to-live. see https://codeberg.org/hjacobs/kube-janitor"
                      | optional,
                    ..
                  },
              jobs =
                {
                    runs
                      | {
                        _ | std.contract.Sequence
                          [
                            js2n.IfThenElse
                              (std.contract.any_of
                                [
                                  js2n.Null,
                                  Bool,
                                  Number,
                                  String,
                                  js2n.record.Record
                                    {
                                      additional = 'Some Dyn,
                                      patterns = {},
                                      properties = { use = js2n.Null, },
                                      required = {},
                                    },
                                  Array Dyn
                                ])
                              (std.contract.any_of
                                [
                                  js2n.Null,
                                  Bool,
                                  Number,
                                  String,
                                  { _ | Dyn },
                                  Array Dyn
                                ])
                              (js2n.IfThenElse
                                (std.contract.any_of
                                  [
                                    js2n.Null,
                                    Bool,
                                    Number,
                                    String,
                                    js2n.record.Record
                                      {
                                        additional = 'Some Dyn,
                                        patterns = {},
                                        properties =
                                          { use = js2n.Const "build", },
                                        required = {},
                                      },
                                    Array Dyn
                                  ])
                                (std.contract.any_of
                                  [
                                    js2n.Null,
                                    Bool,
                                    Number,
                                    String,
                                    {
                                      use
                                        | std.contract.any_of
                                          [
                                            js2n.Null,
                                            Bool,
                                            Number,
                                            String,
                                            { _ | Dyn },
                                            Array Dyn
                                          ]
                                        | optional,
                                      with
                                        | {
                                          buildArgs
                                            | refs."properties.jobs.properties.runs.additionalProperties.else.then.properties.with.definitions.build-args"
                                            | optional,
                                          buildOptions
                                            | String
                                            | doc "Build options"
                                            | optional,
                                          buildkitServiceAddr
                                            | String
                                            | doc "Address of the buildkit service. defaults to `tcp://buildkit-service.buildkit-service.svc:1234`"
                                            | optional,
                                          buildkitServiceClientCertsSecretName
                                            | String
                                            | doc "Use a specific secret for build kit service client cert. default to `buildkit-client-certs`"
                                            | optional,
                                          buildkitServiceEnabled
                                            | String
                                            | doc "Enable buildkit remote service. set to `true` to activate."
                                            | optional,
                                          context
                                            | String
                                            | doc "Docker context (cwd) when building the image. Defaults to ."
                                            | optional,
                                          dockerfile
                                            | String
                                            | doc "Path to the Dockerfile on the repository. Defaults to /Dockerfile"
                                            | optional,
                                          imagePackage
                                            | String
                                            | doc "Name of the docker image on the registry"
                                            | optional,
                                          imageProject
                                            | String
                                            | doc "Optional project name in the docker registry"
                                            | optional,
                                          imageRepository
                                            | String
                                            | doc "Optional sub repository for the docker image"
                                            | optional,
                                          registry
                                            | String
                                            | doc "Url of your custom docker registry"
                                            | optional,
                                          registrySecretRefName
                                            | String
                                            | doc "Name of the registry secret if you have a custom docker registry. Should contain CI_REGISTRY_USER, CI_REGISTRY_PASSWORD"
                                            | optional,
                                          secrets
                                            | {
                                              additionalProperties
                                                | js2n.Always
                                                | optional,
                                              ..
                                            }
                                            | doc "Use secrets securely at build time that will not be exposed in the image layers, keys are secrets ids, `secretName` and `secretKey` properties can be used to target the kubernetes secret"
                                            | optional,
                                          target
                                            | String
                                            | doc "Set the target build stage to build."
                                            | optional,
                                        },
                                      ..
                                    },
                                    Array Dyn
                                  ])
                                (js2n.IfThenElse
                                  (std.contract.any_of
                                    [
                                      js2n.Null,
                                      Bool,
                                      Number,
                                      String,
                                      js2n.record.Record
                                        {
                                          additional = 'Some Dyn,
                                          patterns = {},
                                          properties =
                                            {
                                                use = js2n.Const "build-kaniko",
                                              },
                                          required = {},
                                        },
                                      Array Dyn
                                    ])
                                  (std.contract.any_of
                                    [
                                      js2n.Null,
                                      Bool,
                                      Number,
                                      String,
                                      {
                                        use
                                          | std.contract.any_of
                                            [
                                              js2n.Null,
                                              Bool,
                                              Number,
                                              String,
                                              { _ | Dyn },
                                              Array Dyn
                                            ]
                                          | optional,
                                        with
                                          | {
                                            buildArgs
                                              | refs."properties.jobs.properties.runs.additionalProperties.else.else.then.properties.with.definitions.build-args"
                                              | optional,
                                            buildOptions
                                              | String
                                              | doc "Build options"
                                              | optional,
                                            context
                                              | String
                                              | doc "Docker context (cwd) when building the image. Defaults to ."
                                              | optional,
                                            dockerfile
                                              | String
                                              | doc "Path to the Dockerfile on the repository. Defaults to /Dockerfile"
                                              | optional,
                                            imagePackage
                                              | String
                                              | doc "Name of the dockerfile on the registry",
                                            imageProject
                                              | String
                                              | doc "Optional project name in the docker registry"
                                              | optional,
                                            imageRepository
                                              | String
                                              | doc "Optional sub repository for the docker image"
                                              | optional,
                                            noPush
                                              | Bool
                                              | doc "Disable registry push, just build"
                                              | optional,
                                            registrySecretRefName
                                              | String
                                              | doc "Name of the registry secret if you have a custom docker registry. Should contain CI_REGISTRY_USER, CI_REGISTRY_PASSWORD"
                                              | optional,
                                            skipExisting
                                              | Bool
                                              | doc "Skip build if image already registerd"
                                              | optional,
                                            target
                                              | String
                                              | doc "Set the target build stage to build."
                                              | optional,
                                          },
                                        ..
                                      },
                                      Array Dyn
                                    ])
                                  (js2n.IfThenElse
                                    (std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        Number,
                                        String,
                                        js2n.record.Record
                                          {
                                            additional = 'Some Dyn,
                                            patterns = {},
                                            properties =
                                              { use = js2n.Const "create-db", },
                                            required = {},
                                          },
                                        Array Dyn
                                      ])
                                    (std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        Number,
                                        String,
                                        {
                                          use
                                            | std.contract.any_of
                                              [
                                                js2n.Null,
                                                Bool,
                                                Number,
                                                String,
                                                { _ | Dyn },
                                                Array Dyn
                                              ]
                                            | optional,
                                          with
                                            | {
                                              database
                                                | String
                                                | doc "Name of the Postgres database to create. Defaults to environment"
                                                | optional,
                                              extensions
                                                | String
                                                | doc "List of Postgres extensions to create in the new database. Defaults to `hstore pgcrypto citext uuid-ossp postgis pg_trgm unaccent`"
                                                | optional,
                                              pgAdminUserSecretRefName
                                                | String
                                                | doc "Secret with admin credentials to the database server"
                                                | optional,
                                              pgSecretName
                                                | String
                                                | doc "Name of the kubernetes user secret to create. Defaults to pg-user"
                                                | optional,
                                              pgUser
                                                | String
                                                | doc "Name of the Postgres user to create"
                                                | optional,
                                              useAzureFlex
                                                | std.enum.TagOrString
                                                | [| '"false", '"true" |]
                                                | doc "Use an Azure Flex database. defaults to false"
                                                | optional,
                                            }
                                            | optional,
                                          ..
                                        },
                                        Array Dyn
                                      ])
                                    (js2n.IfThenElse
                                      (std.contract.any_of
                                        [
                                          js2n.Null,
                                          Bool,
                                          Number,
                                          String,
                                          js2n.record.Record
                                            {
                                              additional = 'Some Dyn,
                                              patterns = {},
                                              properties =
                                                {
                                                    use =
                                                      js2n.Const "deactivate",
                                                  },
                                              required = {},
                                            },
                                          Array Dyn
                                        ])
                                      (std.contract.any_of
                                        [
                                          js2n.Null,
                                          Bool,
                                          Number,
                                          String,
                                          {
                                            use
                                              | std.contract.any_of
                                                [
                                                  js2n.Null,
                                                  Bool,
                                                  Number,
                                                  String,
                                                  { _ | Dyn },
                                                  Array Dyn
                                                ]
                                              | optional,
                                            with
                                              | {
                                                database
                                                  | String
                                                  | doc "Name of the Postgres database to destroy. Defaults to environment"
                                                  | optional,
                                                db
                                                  | Bool
                                                  | doc "Has a database, and use default database, true by default if `database` filled"
                                                  | optional,
                                                pgAdminUserSecretRefName
                                                  | String
                                                  | doc "Secret with admin credentials to the database server"
                                                  | optional,
                                              },
                                            ..
                                          },
                                          Array Dyn
                                        ])
                                      (js2n.IfThenElse
                                        (std.contract.any_of
                                          [
                                            js2n.Null,
                                            Bool,
                                            Number,
                                            String,
                                            js2n.record.Record
                                              {
                                                additional = 'Some Dyn,
                                                patterns = {},
                                                properties =
                                                  {
                                                      use =
                                                        js2n.Const "drop-db",
                                                    },
                                                required = {},
                                              },
                                            Array Dyn
                                          ])
                                        (std.contract.any_of
                                          [
                                            js2n.Null,
                                            Bool,
                                            Number,
                                            String,
                                            {
                                              use
                                                | std.contract.any_of
                                                  [
                                                    js2n.Null,
                                                    Bool,
                                                    Number,
                                                    String,
                                                    { _ | Dyn },
                                                    Array Dyn
                                                  ]
                                                | optional,
                                              with
                                                | {
                                                  database
                                                    | String
                                                    | doc "Name of the Postgres database to destroy."
                                                    | optional,
                                                  databaseUser
                                                    | String
                                                    | doc "Name of the Postgres user to destroy."
                                                    | optional,
                                                  pgAdminUserSecretRefName
                                                    | String
                                                    | doc "Secret with admin credentials to the database server"
                                                    | optional,
                                                },
                                              ..
                                            },
                                            Array Dyn
                                          ])
                                        (js2n.IfThenElse
                                          (std.contract.any_of
                                            [
                                              js2n.Null,
                                              Bool,
                                              Number,
                                              String,
                                              js2n.record.Record
                                                {
                                                  additional = 'Some Dyn,
                                                  patterns = {},
                                                  properties =
                                                    {
                                                        use =
                                                          js2n.Const
                                                              "pg-restore",
                                                      },
                                                  required = {},
                                                },
                                              Array Dyn
                                            ])
                                          (std.contract.any_of
                                            [
                                              js2n.Null,
                                              Bool,
                                              Number,
                                              String,
                                              {
                                                use
                                                  | std.contract.any_of
                                                    [
                                                      js2n.Null,
                                                      Bool,
                                                      Number,
                                                      String,
                                                      { _ | Dyn },
                                                      Array Dyn
                                                    ]
                                                  | optional,
                                                with
                                                  | {
                                                    database
                                                      | String
                                                      | doc "Name of the Postgres database to restore to"
                                                      | optional,
                                                    filterPath
                                                      | String
                                                      | doc "filter for the latest file lookup"
                                                      | optional,
                                                    mountPath
                                                      | String
                                                      | doc "Path to the backup storage mount"
                                                      | optional,
                                                    owner
                                                      | String
                                                      | doc "Change restored database owner"
                                                      | optional,
                                                    pgAdminUserSecretRefName
                                                      | String
                                                      | doc "Secret with admin credentials to the database server"
                                                      | optional,
                                                    restorePath
                                                      | String
                                                      | doc "Path to .sql file in the repo",
                                                  },
                                                ..
                                              },
                                              Array Dyn
                                            ])
                                          (js2n.IfThenElse
                                            (std.contract.any_of
                                              [
                                                js2n.Null,
                                                Bool,
                                                Number,
                                                String,
                                                js2n.record.Record
                                                  {
                                                    additional = 'Some Dyn,
                                                    patterns = {},
                                                    properties =
                                                      {
                                                          use =
                                                            js2n.Const "psql",
                                                        },
                                                    required = {},
                                                  },
                                                Array Dyn
                                              ])
                                            (std.contract.any_of
                                              [
                                                js2n.Null,
                                                Bool,
                                                Number,
                                                String,
                                                {
                                                  use
                                                    | std.contract.any_of
                                                      [
                                                        js2n.Null,
                                                        Bool,
                                                        Number,
                                                        String,
                                                        { _ | Dyn },
                                                        Array Dyn
                                                      ]
                                                    | optional,
                                                  with
                                                    | {
                                                      pgSecretRefName
                                                        | String
                                                        | doc "Secret with Postgresql credentials to execute the script",
                                                      sqlFile
                                                        | String
                                                        | doc "Path to .sql file in the repo",
                                                    },
                                                  ..
                                                },
                                                Array Dyn
                                              ])
                                            (js2n.IfThenElse
                                              (std.contract.any_of
                                                [
                                                  js2n.Null,
                                                  Bool,
                                                  Number,
                                                  String,
                                                  js2n.record.Record
                                                    {
                                                      additional = 'Some Dyn,
                                                      patterns = {},
                                                      properties =
                                                        {
                                                            use =
                                                              js2n.Const
                                                                  "seed-db",
                                                          },
                                                      required = {},
                                                    },
                                                  Array Dyn
                                                ])
                                              (std.contract.any_of
                                                [
                                                  js2n.Null,
                                                  Bool,
                                                  Number,
                                                  String,
                                                  {
                                                    use
                                                      | std.contract.any_of
                                                        [
                                                          js2n.Null,
                                                          Bool,
                                                          Number,
                                                          String,
                                                          { _ | Dyn },
                                                          Array Dyn
                                                        ]
                                                      | optional,
                                                    with
                                                      | {
                                                        pgSecretName
                                                          | String
                                                          | doc "Secret with Postgresql credentials to execute the script"
                                                          | optional,
                                                        seedPath
                                                          | String
                                                          | doc "Path to .sql file in the repo",
                                                      },
                                                    ..
                                                  },
                                                  Array Dyn
                                                ]) js2n.Always)))))))),
                            {
                              args
                                | Array String
                                | doc "Arguments to the entrypoint. The container image's CMD is used if this is not provided. Variable references $(VAR_NAME) are expanded using the container's environment. If a variable cannot be resolved, the reference in the input string will be unchanged. Double $$ are reduced to a single $, which allows for escaping the $(VAR_NAME) syntax: i.e. \"$$(VAR_NAME)\" will produce the string literal \"$(VAR_NAME)\". Escaped references will never be expanded, regardless of whether the variable exists or not. Cannot be updated. More info: https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell"
                                | optional,
                              checkout
                                | Bool
                                | doc "Should the repo be checked-out to build. defaults to true"
                                | optional,
                              cpuLimit
                                | String
                                | doc "Kubernetes max cpu for the Job before capping"
                                | optional,
                              cpuRequest
                                | String
                                | doc "Kubernetes cpu reservation for the Job"
                                | optional,
                              entrypoint
                                | Array String
                                | doc "Entrypoint array. Not executed within a shell. The container image's ENTRYPOINT is used if this is not provided. Variable references $(VAR_NAME) are expanded using the container's environment. If a variable cannot be resolved, the reference in the input string will be unchanged. Double $$ are reduced to a single $, which allows for escaping the $(VAR_NAME) syntax: i.e. \"$$(VAR_NAME)\" will produce the string literal \"$(VAR_NAME)\". Escaped references will never be expanded, regardless of whether the variable exists or not. Cannot be updated. More info: https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell"
                                | optional,
                              env
                                | std.contract.any_of
                                  [
                                    js2n.Null,
                                    Bool,
                                    { _ | Dyn },
                                    Array Dyn,
                                    Number,
                                    String
                                  ]
                                | optional,
                              envFrom
                                | std.contract.any_of
                                  [
                                    js2n.Null,
                                    Bool,
                                    { _ | Dyn },
                                    Array Dyn,
                                    Number,
                                    String
                                  ]
                                | optional,
                              image
                                | String
                                | doc "Container image name. More info: https://kubernetes.io/docs/concepts/containers/images This field is optional to allow higher level config management to default or override container images in workload controllers like Deployments and StatefulSets."
                                | optional,
                              kubernetes
                                | Bool
                                | doc "Allow access to the Kubernetes API."
                                | optional,
                              memoryLimit
                                | String
                                | doc "Kubernetes max memory for the Job before OOMKill"
                                | optional,
                              memoryRequest
                                | String
                                | doc "Kubernetes memory reservation for the Job"
                                | optional,
                              retry
                                | Number
                                | doc "Retry the job n times."
                                | optional,
                              run
                                | String
                                | doc "Commands that will be passed to the job's image."
                                | optional,
                              seccompProfile
                                | {
                                  localhostProfile
                                    | String
                                    | doc "localhostProfile indicates a profile defined in a file on the node should be used. The profile must be preconfigured on the node to work. Must be a descending path, relative to the kubelet's configured seccomp profile location. Must only be set if type is \"Localhost\"."
                                    | optional,
                                  type
                                    | String
                                    | doc m%"
                                      type indicates which kind of seccomp profile will be applied. Valid options are:
                                      
                                      Localhost - a profile defined in a file on the node should be used. RuntimeDefault - the container runtime default profile should be used. Unconfined - no profile should be applied.
                                      
                                      
                                    "%,
                                  ..
                                }
                                | doc "SeccompProfile defines a pod/container's seccomp profile settings. Only one profile source may be set."
                                | optional,
                              use
                                | std.enum.TagOrString
                                | [|
                                  'seed-db,
                                  'psql,
                                  'pg-restore,
                                  'drop-db,
                                  'deactivate,
                                  'create-db,
                                  'build-kaniko,
                                  'build
                                |]
                                | optional,
                              volumeMounts
                                | std.contract.any_of
                                  [
                                    js2n.Null,
                                    Bool,
                                    { _ | Dyn },
                                    Array Dyn,
                                    Number,
                                    String
                                  ]
                                | optional,
                              volumes
                                | std.contract.any_of
                                  [
                                    js2n.Null,
                                    Bool,
                                    { _ | Dyn },
                                    Array Dyn,
                                    Number,
                                    String
                                  ]
                                | optional,
                              with | js2n.Always | optional,
                              "~needs"
                                | Array String
                                | doc "List of kontinuous dependencies"
                                | optional,
                            }
                          ]
                      },
                    "~chart" | std.contract.Equal "jobs" | optional,
                  },
              project = {  .. },
            },
        required = {},
      }