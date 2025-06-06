# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      actions
        | {
          _ | js2n.OneOf
            [
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        disablepipelineurl = Bool,
                        kind =
                          std.contract.Sequence
                              [
                                std.enum.TagOrString,
                                [| '"bitbucket/pullrequest" |]
                              ],
                        scmid = String,
                        spec =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      body = String,
                                      owner = String,
                                      password = String,
                                      repository = String,
                                      sourcebranch = String,
                                      targetbranch = String,
                                      title = String,
                                      token = String,
                                      username = String,
                                    },
                                required = { owner = true, repository = true, },
                              },
                        title = String,
                      },
                  required = {},
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        disablepipelineurl = Bool,
                        kind =
                          std.contract.Sequence
                              [
                                std.enum.TagOrString,
                                [| '"gitea/pullrequest" |]
                              ],
                        scmid = String,
                        spec =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      body = String,
                                      owner = String,
                                      repository = String,
                                      sourcebranch = String,
                                      targetbranch = String,
                                      title = String,
                                      token = String,
                                      url = String,
                                      username = String,
                                    },
                                required =
                                  {
                                      owner = true,
                                      repository = true,
                                      url = true,
                                    },
                              },
                        title = String,
                      },
                  required = {},
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        disablepipelineurl = Bool,
                        kind =
                          std.contract.Sequence
                              [
                                std.enum.TagOrString,
                                [| '"github/pullrequest" |]
                              ],
                        scmid = String,
                        spec =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      assignees = js2n.array.ArrayOf String,
                                      automerge = Bool,
                                      description = String,
                                      draft = Bool,
                                      labels = js2n.array.ArrayOf String,
                                      maintainercannotmodify = Bool,
                                      mergemethod = String,
                                      parent = Bool,
                                      reviewers = js2n.array.ArrayOf String,
                                      title = String,
                                      usetitleforautomerge = Bool,
                                    },
                                required = {},
                              },
                        title = String,
                      },
                  required = {},
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        disablepipelineurl = Bool,
                        kind =
                          std.contract.Sequence
                              [
                                std.enum.TagOrString,
                                [| '"gitlab/mergerequest" |]
                              ],
                        scmid = String,
                        spec =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      assignees =
                                        js2n.array.ArrayOf std.number.Integer,
                                      body = String,
                                      labels = js2n.array.ArrayOf String,
                                      owner = String,
                                      removesourcebranch = Bool,
                                      repository = String,
                                      reviewers =
                                        js2n.array.ArrayOf std.number.Integer,
                                      sourcebranch = String,
                                      squash = Bool,
                                      targetbranch = String,
                                      title = String,
                                      token = String,
                                      tokentype = String,
                                      url = String,
                                      username = String,
                                    },
                                required = {},
                              },
                        title = String,
                      },
                  required = {},
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        disablepipelineurl = Bool,
                        kind =
                          std.contract.Sequence
                              [
                                std.enum.TagOrString,
                                [| '"stash/pullrequest" |]
                              ],
                        scmid = String,
                        spec =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      body = String,
                                      owner = String,
                                      password = String,
                                      repository = String,
                                      sourcebranch = String,
                                      targetbranch = String,
                                      title = String,
                                      token = String,
                                      url = String,
                                      username = String,
                                    },
                                required =
                                  {
                                      owner = true,
                                      repository = true,
                                      url = true,
                                    },
                              },
                        title = String,
                      },
                  required = {},
                }
            ]
        }
        | doc m%"
          "actions" defines the list of action configurations which need to be managed.
          
          		examples:
          		---
          		actions:
          			default:
          				kind: github/pullrequest
          				scmid: default
          				spec:
          					automerge: true
          					labels:
          						- "dependencies"
          		---
        "%
        | optional,
      autodiscovery
        | {
          actionid
            | String
            | doc "actionid is a unique identifier used to retrieve the action configuration from the configuration file."
            | optional,
          crawlers
            | {
              argocd
                | {
                  ignore
                    | Array
                      {
                        charts
                          | { _ | String }
                          | doc "Charts specifies the list of Helm Chart repository to check"
                          | optional,
                        path
                          | String
                          | doc "Path specifies a Argocd file path pattern, the pattern requires to match all of name, not just a subpart of the path."
                          | optional,
                        repositories
                          | Array String
                          | doc "Repositories specifies the list of Helm Chart repository to check"
                          | optional,
                      }
                    | doc "Ignore allows to specify rule to ignore autodiscovery a specific Argocd manifest based on a rule"
                    | optional,
                  only
                    | Array
                      {
                        charts
                          | { _ | String }
                          | doc "Charts specifies the list of Helm Chart repository to check"
                          | optional,
                        path
                          | String
                          | doc "Path specifies a Argocd file path pattern, the pattern requires to match all of name, not just a subpart of the path."
                          | optional,
                        repositories
                          | Array String
                          | doc "Repositories specifies the list of Helm Chart repository to check"
                          | optional,
                      }
                    | doc "Only allows to specify rule to only autodiscover manifest for a specific ArgoCD manifest based on a rule"
                    | optional,
                  rootdir
                    | String
                    | doc "RootDir defines the root directory used to recursively search for ArgoCD manifest"
                    | optional,
                  versionfilter
                    | {
                      kind
                        | String
                        | doc "specifies the version kind such as semver, regex, or latest"
                        | optional,
                      pattern
                        | String
                        | doc m%"
                          specifies the version pattern according the version kind
                          for semver, it is a semver constraint
                          for regex, it is a regex pattern
                          for time, it is a date format
                        "%
                        | optional,
                      regex
                        | String
                        | doc m%"
                          specifies the regex pattern, used for regex/semver and regex/time.
                          Output of the first capture group will be used.
                        "%
                        | optional,
                      strict
                        | Bool
                        | doc m%"
                          strict enforce strict versioning rule.
                          Only used for semantic versioning at this time
                        "%
                        | optional,
                    }
                    | doc m%"
                      versionfilter provides parameters to specify the version pattern used when generating manifest.
                      
                       kind - semver
                         versionfilter of kind `semver` uses semantic versioning as version filtering
                         pattern accepts one of:
                           `prerelease` - Updatecli tries to identify the latest "prerelease" whatever it means
                           `patch` - Updatecli only handles patch version update
                           `minor` - Updatecli handles patch AND minor version update
                           `minoronly` - Updatecli handles minor version only
                           `major` - Updatecli handles patch, minor, AND major version update
                           `majoronly` - Updatecli only handles major version update
                           `a version constraint` such as `>= 1.0.0`
                      
                       kind - regex
                         versionfilter of kind `regex` uses regular expression as version filtering
                         pattern accepts a valid regular expression
                      
                       example:
                       ```
                       	versionfilter:
                       		kind: semver
                       		pattern: minor
                       ```
                      
                      	and its type like regex, semver, or just latest.
                    "%
                    | optional,
                }
                | doc "Spec defines the parameters which can be provided to the argocd builder."
                | optional,
              cargo
                | {
                  ignore
                    | Array
                      {
                        crates
                          | { _ | String }
                          | doc "Crates specifies the list of Cargo crates to check"
                          | optional,
                        path
                          | String
                          | doc "Path specifies a Cargo crate path pattern, the pattern requires to match all of name, not just a subpart of the path."
                          | optional,
                        registries
                          | Array String
                          | doc "Registries specifies the list of Cargo registries to check"
                          | optional,
                      }
                    | doc "Ignore specifies rule to ignore Cargo.toml update."
                    | optional,
                  only
                    | Array
                      {
                        crates
                          | { _ | String }
                          | doc "Crates specifies the list of Cargo crates to check"
                          | optional,
                        path
                          | String
                          | doc "Path specifies a Cargo crate path pattern, the pattern requires to match all of name, not just a subpart of the path."
                          | optional,
                        registries
                          | Array String
                          | doc "Registries specifies the list of Cargo registries to check"
                          | optional,
                      }
                    | doc "Only specify required rule to restrict Cargo.toml update."
                    | optional,
                  registries
                    | {
                      _ | {
                        auth
                          | {
                            headerformat
                              | String
                              | doc "[A][S][C] HeaderFormat specifies the cargo registry header format to use for authentication (defaults to `Bearer`)."
                              | optional,
                            token
                              | String
                              | doc "[A][S][C] Token specifies the cargo registry token to use for authentication."
                              | optional,
                          }
                          | doc "[A][S][C] Auth specifies the cargo registry auth to use for authentication."
                          | optional,
                        rootdir
                          | String
                          | doc "[A][S][C] RootDir specifies the cargo registry root directory to use as FS index."
                          | optional,
                        scmid
                          | String
                          | doc "[A] SCMID specifies the cargo registry scmId to use as FS index."
                          | optional,
                        url
                          | String
                          | doc "[A][S][C] URL specifies the cargo registry URL to use for authentication."
                          | optional,
                      }
                    }
                    | doc "Auths provides a map of registry credentials where the key is the registry URL without scheme"
                    | optional,
                  rootdir
                    | String
                    | doc "RootDir defines the root directory used to recursively search for Cargo.toml"
                    | optional,
                  versionfilter
                    | {
                      kind
                        | String
                        | doc "specifies the version kind such as semver, regex, or latest"
                        | optional,
                      pattern
                        | String
                        | doc m%"
                          specifies the version pattern according the version kind
                          for semver, it is a semver constraint
                          for regex, it is a regex pattern
                          for time, it is a date format
                        "%
                        | optional,
                      regex
                        | String
                        | doc m%"
                          specifies the regex pattern, used for regex/semver and regex/time.
                          Output of the first capture group will be used.
                        "%
                        | optional,
                      strict
                        | Bool
                        | doc m%"
                          strict enforce strict versioning rule.
                          Only used for semantic versioning at this time
                        "%
                        | optional,
                    }
                    | doc m%"
                      `versionfilter` provides parameters to specify the version pattern to use when generating manifest.
                      
                      		kind - semver
                      			versionfilter of kind `semver` uses semantic versioning as version filtering
                      			pattern accepts one of:
                      				`patch` - patch only update patch version
                      				`minor` - minor only update minor version
                      				`major` - major only update major versions
                      				`a version constraint` such as `>= 1.0.0`
                      
                      		kind - regex
                      			versionfilter of kind `regex` uses regular expression as version filtering
                      			pattern accepts a valid regular expression
                      
                      		example:
                      		```
                      			versionfilter:
                      				kind: semver
                      				pattern: minor
                      		```
                      
                      		and its type like regex, semver, or just latest.
                    "%
                    | optional,
                }
                | doc "Spec defines the Cargo parameters."
                | optional,
              dockercompose
                | {
                  auths
                    | {
                      _ | {
                        password
                          | String
                          | doc m%"
                            password specifies the container registry password to use for authentication. Not compatible with token
                            
                            		compatible:
                            			* source
                            			* condition
                            			* target
                            
                            		default:
                            			by default credentials are fetch from the local environment such as `~/.docker/config.json`.
                            
                            		remark:
                            			Not compatible with token
                          "%
                          | optional,
                        token
                          | String
                          | doc m%"
                            token specifies the container registry token to use for authentication.
                            
                            		compatible:
                            			* source
                            			* condition
                            			* target
                            
                            		default:
                            			by default credentials are fetch from the local environment such as `~/.docker/config.json`.
                            
                            		remark:
                            			Not compatible with username/password
                          "%
                          | optional,
                        username
                          | String
                          | doc m%"
                            username specifies the container registry username to use for authentication.
                            
                            		compatible:
                            			* source
                            			* condition
                            			* target
                            
                            		default:
                            			by default credentials are fetch from the local environment such as `~/.docker/config.json`.
                            
                            		remark:
                            			Not compatible with token
                          "%
                          | optional,
                      }
                    }
                    | doc "auths provides a map of registry credentials where the key is the registry URL without scheme"
                    | optional,
                  digest
                    | Bool
                    | doc "digest provides parameters to specify if the generated manifest should use a digest on top of the tag."
                    | optional,
                  filematch
                    | Array String
                    | doc "FileMatch allows to override default docker-compose.yaml file matching. Default [\"docker-compose.yaml\",\"docker-compose.yml\",\"docker-compose.*.yaml\",\"docker-compose.*.yml\"]"
                    | optional,
                  ignore
                    | Array
                      {
                        archs
                          | Array String
                          | doc "Arch specifies a list of docker image architecture"
                          | optional,
                        images
                          | Array String
                          | doc "Image specifies a list of docker image"
                          | optional,
                        path
                          | String
                          | doc "Path specifies a Helm chart path pattern, the pattern requires to match all of name, not just a substring."
                          | optional,
                        services
                          | Array String
                          | doc "Services specifies a list of docker compose services"
                          | optional,
                      }
                    | doc "ignore allows to specify rule to ignore autodiscovery a specific Helm based on a rule"
                    | optional,
                  only
                    | Array
                      {
                        archs
                          | Array String
                          | doc "Arch specifies a list of docker image architecture"
                          | optional,
                        images
                          | Array String
                          | doc "Image specifies a list of docker image"
                          | optional,
                        path
                          | String
                          | doc "Path specifies a Helm chart path pattern, the pattern requires to match all of name, not just a substring."
                          | optional,
                        services
                          | Array String
                          | doc "Services specifies a list of docker compose services"
                          | optional,
                      }
                    | doc "only allows to specify rule to only autodiscover manifest for a specific Helm based on a rule"
                    | optional,
                  rootdir
                    | String
                    | doc m%"
                      rootDir defines the root directory used to recursively search for Helm Chart
                      If rootDir is not provided, the current working directory will be used.
                      If rootDir is provided as an absolute path, scmID will be ignored.
                      If rootDir is not provided but a scmid is, then rootDir will be set to the git repository root directory.
                    "%
                    | optional,
                  versionfilter
                    | {
                      kind
                        | String
                        | doc "specifies the version kind such as semver, regex, or latest"
                        | optional,
                      pattern
                        | String
                        | doc m%"
                          specifies the version pattern according the version kind
                          for semver, it is a semver constraint
                          for regex, it is a regex pattern
                          for time, it is a date format
                        "%
                        | optional,
                      regex
                        | String
                        | doc m%"
                          specifies the regex pattern, used for regex/semver and regex/time.
                          Output of the first capture group will be used.
                        "%
                        | optional,
                      strict
                        | Bool
                        | doc m%"
                          strict enforce strict versioning rule.
                          Only used for semantic versioning at this time
                        "%
                        | optional,
                    }
                    | doc m%"
                      versionfilter provides parameters to specify the version pattern used when generating manifest.
                      
                      More information available at
                      https://www.updatecli.io/docs/core/versionfilter/
                      
                      kind - semver
                        versionfilter of kind `semver` uses semantic versioning as version filtering
                        pattern accepts one of:
                          `patch` - patch only update patch version
                          `minor` - minor only update minor version
                          `major` - major only update major versions
                          `a version constraint` such as `>= 1.0.0`
                      
                      kind - regex
                      versionfilter of kind `regex` uses regular expression as version filtering
                      pattern accepts a valid regular expression
                      
                      example:
                      ```
                        versionfilter:
                        kind: semver
                        pattern: minor
                      ```
                      and its type like regex, semver, or just latest.
                    "%
                    | optional,
                }
                | doc "Spec is a struct fill from Updatecli manifest data and shouldn't be modified at runtime unless For Fields that requires it, we can use the struct DockerCompose Spec defines the parameters which can be provided to the Helm builder."
                | optional,
              dockerfile
                | {
                  auths
                    | {
                      _ | {
                        password
                          | String
                          | doc m%"
                            password specifies the container registry password to use for authentication. Not compatible with token
                            
                            		compatible:
                            			* source
                            			* condition
                            			* target
                            
                            		default:
                            			by default credentials are fetch from the local environment such as `~/.docker/config.json`.
                            
                            		remark:
                            			Not compatible with token
                          "%
                          | optional,
                        token
                          | String
                          | doc m%"
                            token specifies the container registry token to use for authentication.
                            
                            		compatible:
                            			* source
                            			* condition
                            			* target
                            
                            		default:
                            			by default credentials are fetch from the local environment such as `~/.docker/config.json`.
                            
                            		remark:
                            			Not compatible with username/password
                          "%
                          | optional,
                        username
                          | String
                          | doc m%"
                            username specifies the container registry username to use for authentication.
                            
                            		compatible:
                            			* source
                            			* condition
                            			* target
                            
                            		default:
                            			by default credentials are fetch from the local environment such as `~/.docker/config.json`.
                            
                            		remark:
                            			Not compatible with token
                          "%
                          | optional,
                      }
                    }
                    | doc "Auths provides a map of registry credentials where the key is the registry URL without scheme"
                    | optional,
                  digest
                    | Bool
                    | doc "digest provides parameters to specify if the generated manifest should use a digest on top of the tag."
                    | optional,
                  filematch
                    | Array String
                    | doc "FileMatch allows to override default Dockerfile file matching. Default [\"Dockerfile\"]"
                    | optional,
                  ignore
                    | Array
                      {
                        archs
                          | Array String
                          | doc "Arch specifies a list of docker image architecture"
                          | optional,
                        images
                          | Array String
                          | doc "Image specifies a list of docker image"
                          | optional,
                        path
                          | String
                          | doc "Path specifies a Dockerfile path pattern, the pattern requires to match all of name, not just a substring."
                          | optional,
                      }
                    | doc "Ignore allows to specify rule to ignore autodiscovery a specific Helm based on a rule"
                    | optional,
                  only
                    | Array
                      {
                        archs
                          | Array String
                          | doc "Arch specifies a list of docker image architecture"
                          | optional,
                        images
                          | Array String
                          | doc "Image specifies a list of docker image"
                          | optional,
                        path
                          | String
                          | doc "Path specifies a Dockerfile path pattern, the pattern requires to match all of name, not just a substring."
                          | optional,
                      }
                    | doc "Only allows to specify rule to only autodiscover manifest for a specific Helm based on a rule"
                    | optional,
                  rootdir
                    | String
                    | doc "RootDir defines the root directory used to recursively search for Helm Chart"
                    | optional,
                  versionfilter
                    | {
                      kind
                        | String
                        | doc "specifies the version kind such as semver, regex, or latest"
                        | optional,
                      pattern
                        | String
                        | doc m%"
                          specifies the version pattern according the version kind
                          for semver, it is a semver constraint
                          for regex, it is a regex pattern
                          for time, it is a date format
                        "%
                        | optional,
                      regex
                        | String
                        | doc m%"
                          specifies the regex pattern, used for regex/semver and regex/time.
                          Output of the first capture group will be used.
                        "%
                        | optional,
                      strict
                        | Bool
                        | doc m%"
                          strict enforce strict versioning rule.
                          Only used for semantic versioning at this time
                        "%
                        | optional,
                    }
                    | doc m%"
                      versionfilter provides parameters to specify the version pattern used when generating manifest.
                      
                      		kind - semver
                      			versionfilter of kind `semver` uses semantic versioning as version filtering
                      			pattern accepts one of:
                      				`patch` - patch only update patch version
                      				`minor` - minor only update minor version
                      				`major` - major only update major versions
                      				`a version constraint` such as `>= 1.0.0`
                      
                      		kind - regex
                      			versionfilter of kind `regex` uses regular expression as version filtering
                      			pattern accepts a valid regular expression
                      
                      		example:
                      		```
                      			versionfilter:
                      				kind: semver
                      				pattern: minor
                      		```
                      
                      		and its type like regex, semver, or just latest.
                    "%
                    | optional,
                }
                | doc "Spec is a struct fill from Updatecli manifest data and shouldn't be modified at runtime unless For Fields that requires it, we can use the struct Dockerfile Spec defines the parameters which can be provided to the Dockerfile crawler."
                | optional,
              flux
                | {
                  auths
                    | {
                      _ | {
                        password
                          | String
                          | doc m%"
                            password specifies the container registry password to use for authentication. Not compatible with token
                            
                            		compatible:
                            			* source
                            			* condition
                            			* target
                            
                            		default:
                            			by default credentials are fetch from the local environment such as `~/.docker/config.json`.
                            
                            		remark:
                            			Not compatible with token
                          "%
                          | optional,
                        token
                          | String
                          | doc m%"
                            token specifies the container registry token to use for authentication.
                            
                            		compatible:
                            			* source
                            			* condition
                            			* target
                            
                            		default:
                            			by default credentials are fetch from the local environment such as `~/.docker/config.json`.
                            
                            		remark:
                            			Not compatible with username/password
                          "%
                          | optional,
                        username
                          | String
                          | doc m%"
                            username specifies the container registry username to use for authentication.
                            
                            		compatible:
                            			* source
                            			* condition
                            			* target
                            
                            		default:
                            			by default credentials are fetch from the local environment such as `~/.docker/config.json`.
                            
                            		remark:
                            			Not compatible with token
                          "%
                          | optional,
                      }
                    }
                    | doc "auths provides a map of registry credentials where the key is the registry URL without scheme"
                    | optional,
                  digest
                    | Bool
                    | doc m%"
                      digest allows to specify if the generated manifest should use OCI digest on top of the tag
                      
                      default: true
                    "%
                    | optional,
                  files
                    | Array String
                    | doc m%"
                      files allows to override default flux files
                      
                      default: ["*.yaml", "*.yml"]
                    "%
                    | optional,
                  helmrelease
                    | Bool
                    | doc m%"
                      helmRelease define if helmrelease file should be updated or not
                      
                      default: true
                    "%
                    | optional,
                  ignore
                    | Array
                      {
                        artifacts
                          | { _ | String }
                          | doc m%"
                            Artifacts specifies the list of artifacts to check
                            
                            The key is the artifact name and the value is the artifact version
                            
                            An artifact can be a Helm Chart when used in the context of Helmrelease
                            or an OCIRepository when used in the context of OCIRepository
                            
                            If the value is empty, then the artifact name is enough to match
                            If the value is a valid semver constraint, then the artifact version must match the constraint
                          "%
                          | optional,
                        path
                          | String
                          | doc "Path specifies a Flux filepath pattern, the pattern requires to match all of name, not just a subpart of the path."
                          | optional,
                        repositories
                          | Array String
                          | doc "Repositories specifies the list of Helm Chart repository to check"
                          | optional,
                      }
                    | doc m%"
                      ignore allows to specify rule to ignore autodiscovery a specific Flux helmrelease based on a rule
                      
                      default: empty
                    "%
                    | optional,
                  ocirepository
                    | Bool
                    | doc m%"
                      OCIRepository allows to specify if OCI repository files should be updated
                      
                      default: true
                    "%
                    | optional,
                  only
                    | Array
                      {
                        artifacts
                          | { _ | String }
                          | doc m%"
                            Artifacts specifies the list of artifacts to check
                            
                            The key is the artifact name and the value is the artifact version
                            
                            An artifact can be a Helm Chart when used in the context of Helmrelease
                            or an OCIRepository when used in the context of OCIRepository
                            
                            If the value is empty, then the artifact name is enough to match
                            If the value is a valid semver constraint, then the artifact version must match the constraint
                          "%
                          | optional,
                        path
                          | String
                          | doc "Path specifies a Flux filepath pattern, the pattern requires to match all of name, not just a subpart of the path."
                          | optional,
                        repositories
                          | Array String
                          | doc "Repositories specifies the list of Helm Chart repository to check"
                          | optional,
                      }
                    | doc m%"
                      only allows to specify rule to only autodiscover manifest for a specific Flux helm release based on a rule
                      
                      default: empty
                    "%
                    | optional,
                  rootdir
                    | String
                    | doc m%"
                      rootDir defines the root directory used to recursively search for Flux files
                      
                      default: . (current working directory) or scm root directory
                    "%
                    | optional,
                  versionfilter
                    | {
                      kind
                        | String
                        | doc "specifies the version kind such as semver, regex, or latest"
                        | optional,
                      pattern
                        | String
                        | doc m%"
                          specifies the version pattern according the version kind
                          for semver, it is a semver constraint
                          for regex, it is a regex pattern
                          for time, it is a date format
                        "%
                        | optional,
                      regex
                        | String
                        | doc m%"
                          specifies the regex pattern, used for regex/semver and regex/time.
                          Output of the first capture group will be used.
                        "%
                        | optional,
                      strict
                        | Bool
                        | doc m%"
                          strict enforce strict versioning rule.
                          Only used for semantic versioning at this time
                        "%
                        | optional,
                    }
                    | doc m%"
                      versionfilter provides parameters to specify the version pattern used when generating manifest.
                      
                      kind - semver
                      		versionfilter of kind `semver` uses semantic versioning as version filtering
                      		pattern accepts one of:
                      			`patch` - patch only update patch version
                      			`minor` - minor only update minor version
                      			`major` - major only update major versions
                      			`a version constraint` such as `>= 1.0.0`
                      
                      	kind - regex
                      		versionfilter of kind `regex` uses regular expression as version filtering
                      		pattern accepts a valid regular expression
                      
                      	example:
                      	```
                      		versionfilter:
                      			kind: semver
                      			pattern: minor
                      	```
                      
                      	and its type like regex, semver, or just latest.
                    "%
                    | optional,
                }
                | doc "Spec defines the parameters which can be provided to the Flux crawler."
                | optional,
              "gitea/action"
                | {
                  credentials
                    | {
                      _ | {
                        kind | String | optional,
                        token | String | optional,
                      }
                    }
                    | doc m%"
                      Credentials allows to specify the credentials to use to authenticate to the git provider
                      The ID of the credential must be the domain of the git provider to configure
                      
                      default: empty
                      
                      examples:
                      ```
                        autodiscovery:
                          crawlers:
                            github/action:
                              credentials:
                                "code.forgejo.com":
                                  kind: gitea
                                  token: xxx
                                "github.com":
                                  kind: github
                                  token: '{{ requiredEnv "GITHUB_TOKEN" }}'
                      ```
                    "%
                    | optional,
                  credentialsdocker
                    | {
                      _ | {
                        password
                          | String
                          | doc m%"
                            password specifies the container registry password to use for authentication. Not compatible with token
                            
                            		compatible:
                            			* source
                            			* condition
                            			* target
                            
                            		default:
                            			by default credentials are fetch from the local environment such as `~/.docker/config.json`.
                            
                            		remark:
                            			Not compatible with token
                          "%
                          | optional,
                        token
                          | String
                          | doc m%"
                            token specifies the container registry token to use for authentication.
                            
                            		compatible:
                            			* source
                            			* condition
                            			* target
                            
                            		default:
                            			by default credentials are fetch from the local environment such as `~/.docker/config.json`.
                            
                            		remark:
                            			Not compatible with username/password
                          "%
                          | optional,
                        username
                          | String
                          | doc m%"
                            username specifies the container registry username to use for authentication.
                            
                            		compatible:
                            			* source
                            			* condition
                            			* target
                            
                            		default:
                            			by default credentials are fetch from the local environment such as `~/.docker/config.json`.
                            
                            		remark:
                            			Not compatible with token
                          "%
                          | optional,
                      }
                    }
                    | doc "CredentialsDocker provides a map of registry credentials where the key is the registry URL without scheme"
                    | optional,
                  digest
                    | Bool
                    | doc m%"
                      Digest provides parameters to specify if the generated manifest should use a digest instead of the branch or tag.
                      
                      Remark:
                      	- The digest is only supported for GitHub Action and docker image tag update.
                         Feel free to open an issue for the Gitea and Forgejo integration.
                    "%
                    | optional,
                  files
                    | Array String
                    | doc m%"
                      files allows to specify the accepted GitHub Action workflow file name
                      
                      default:
                        - ".github/workflows/*.yaml",
                        - ".github/workflows/*.yml",
                        - ".gitea/workflows/*.yaml",
                        - ".gitea/workflows/*.yml",
                        - ".forgejo/workflows/*.yaml",
                        - ".forgejo/workflows/*.yml",
                    "%
                    | optional,
                  ignore
                    | Array
                      {
                        actions
                          | { _ | String }
                          | doc m%"
                            Actions specifies the list of artifacts to check
                            
                            The key is the artifact name and the value is the artifact version
                            
                            The artifact name must match the GitHub action name or the Docker image name.
                            In case of a Docker image, it must have the prefix docker://
                            
                            If the value is empty, then the artifact name is enough to match
                            If the value is a valid Git branch, Git tag, release, a Docker image tag , then the artifact version must match the constraint
                          "%
                          | optional,
                        path
                          | String
                          | doc "Path specifies a Flux filepath pattern, the pattern requires to match all of name, not just a subpart of the path."
                          | optional,
                      }
                    | doc m%"
                      ignore allows to specify rule to ignore autodiscovery a specific GitHub action based on a rule
                      
                      default: empty
                    "%
                    | optional,
                  only
                    | Array
                      {
                        actions
                          | { _ | String }
                          | doc m%"
                            Actions specifies the list of artifacts to check
                            
                            The key is the artifact name and the value is the artifact version
                            
                            The artifact name must match the GitHub action name or the Docker image name.
                            In case of a Docker image, it must have the prefix docker://
                            
                            If the value is empty, then the artifact name is enough to match
                            If the value is a valid Git branch, Git tag, release, a Docker image tag , then the artifact version must match the constraint
                          "%
                          | optional,
                        path
                          | String
                          | doc "Path specifies a Flux filepath pattern, the pattern requires to match all of name, not just a subpart of the path."
                          | optional,
                      }
                    | doc m%"
                      only allows to specify rule to only autodiscover manifest for a specific GitHub action based on a rule
                      
                      default: empty
                    "%
                    | optional,
                  rootdir
                    | String
                    | doc m%"
                      rootDir allows to specify the root directory from where looking for GitHub Action
                      
                      default: empty
                    "%
                    | optional,
                  versionfilter
                    | {
                      kind
                        | String
                        | doc "specifies the version kind such as semver, regex, or latest"
                        | optional,
                      pattern
                        | String
                        | doc m%"
                          specifies the version pattern according the version kind
                          for semver, it is a semver constraint
                          for regex, it is a regex pattern
                          for time, it is a date format
                        "%
                        | optional,
                      regex
                        | String
                        | doc m%"
                          specifies the regex pattern, used for regex/semver and regex/time.
                          Output of the first capture group will be used.
                        "%
                        | optional,
                      strict
                        | Bool
                        | doc m%"
                          strict enforce strict versioning rule.
                          Only used for semantic versioning at this time
                        "%
                        | optional,
                    }
                    | doc m%"
                      versionfilter provides parameters to specify the version pattern used when generating manifest.
                      
                      kind - semver
                      		versionfilter of kind `semver` uses semantic versioning as version filtering
                      		pattern accepts one of:
                      			`patch` - patch only update patch version
                      			`minor` - minor only update minor version
                      			`major` - major only update major versions
                      			`a version constraint` such as `>= 1.0.0`
                      
                      	kind - regex
                      		versionfilter of kind `regex` uses regular expression as version filtering
                      		pattern accepts a valid regular expression
                      
                      	example:
                      	```
                      		versionfilter:
                      			kind: semver
                      			pattern: minor
                      	```
                      
                      	and its type like regex, semver, or just latest.
                    "%
                    | optional,
                }
                | doc "Spec defines the parameters which can be provided to the Github Action crawler."
                | optional,
              "github/action"
                | {
                  credentials
                    | {
                      _ | {
                        kind | String | optional,
                        token | String | optional,
                      }
                    }
                    | doc m%"
                      Credentials allows to specify the credentials to use to authenticate to the git provider
                      The ID of the credential must be the domain of the git provider to configure
                      
                      default: empty
                      
                      examples:
                      ```
                        autodiscovery:
                          crawlers:
                            github/action:
                              credentials:
                                "code.forgejo.com":
                                  kind: gitea
                                  token: xxx
                                "github.com":
                                  kind: github
                                  token: '{{ requiredEnv "GITHUB_TOKEN" }}'
                      ```
                    "%
                    | optional,
                  credentialsdocker
                    | {
                      _ | {
                        password
                          | String
                          | doc m%"
                            password specifies the container registry password to use for authentication. Not compatible with token
                            
                            		compatible:
                            			* source
                            			* condition
                            			* target
                            
                            		default:
                            			by default credentials are fetch from the local environment such as `~/.docker/config.json`.
                            
                            		remark:
                            			Not compatible with token
                          "%
                          | optional,
                        token
                          | String
                          | doc m%"
                            token specifies the container registry token to use for authentication.
                            
                            		compatible:
                            			* source
                            			* condition
                            			* target
                            
                            		default:
                            			by default credentials are fetch from the local environment such as `~/.docker/config.json`.
                            
                            		remark:
                            			Not compatible with username/password
                          "%
                          | optional,
                        username
                          | String
                          | doc m%"
                            username specifies the container registry username to use for authentication.
                            
                            		compatible:
                            			* source
                            			* condition
                            			* target
                            
                            		default:
                            			by default credentials are fetch from the local environment such as `~/.docker/config.json`.
                            
                            		remark:
                            			Not compatible with token
                          "%
                          | optional,
                      }
                    }
                    | doc "CredentialsDocker provides a map of registry credentials where the key is the registry URL without scheme"
                    | optional,
                  digest
                    | Bool
                    | doc m%"
                      Digest provides parameters to specify if the generated manifest should use a digest instead of the branch or tag.
                      
                      Remark:
                      	- The digest is only supported for GitHub Action and docker image tag update.
                         Feel free to open an issue for the Gitea and Forgejo integration.
                    "%
                    | optional,
                  files
                    | Array String
                    | doc m%"
                      files allows to specify the accepted GitHub Action workflow file name
                      
                      default:
                        - ".github/workflows/*.yaml",
                        - ".github/workflows/*.yml",
                        - ".gitea/workflows/*.yaml",
                        - ".gitea/workflows/*.yml",
                        - ".forgejo/workflows/*.yaml",
                        - ".forgejo/workflows/*.yml",
                    "%
                    | optional,
                  ignore
                    | Array
                      {
                        actions
                          | { _ | String }
                          | doc m%"
                            Actions specifies the list of artifacts to check
                            
                            The key is the artifact name and the value is the artifact version
                            
                            The artifact name must match the GitHub action name or the Docker image name.
                            In case of a Docker image, it must have the prefix docker://
                            
                            If the value is empty, then the artifact name is enough to match
                            If the value is a valid Git branch, Git tag, release, a Docker image tag , then the artifact version must match the constraint
                          "%
                          | optional,
                        path
                          | String
                          | doc "Path specifies a Flux filepath pattern, the pattern requires to match all of name, not just a subpart of the path."
                          | optional,
                      }
                    | doc m%"
                      ignore allows to specify rule to ignore autodiscovery a specific GitHub action based on a rule
                      
                      default: empty
                    "%
                    | optional,
                  only
                    | Array
                      {
                        actions
                          | { _ | String }
                          | doc m%"
                            Actions specifies the list of artifacts to check
                            
                            The key is the artifact name and the value is the artifact version
                            
                            The artifact name must match the GitHub action name or the Docker image name.
                            In case of a Docker image, it must have the prefix docker://
                            
                            If the value is empty, then the artifact name is enough to match
                            If the value is a valid Git branch, Git tag, release, a Docker image tag , then the artifact version must match the constraint
                          "%
                          | optional,
                        path
                          | String
                          | doc "Path specifies a Flux filepath pattern, the pattern requires to match all of name, not just a subpart of the path."
                          | optional,
                      }
                    | doc m%"
                      only allows to specify rule to only autodiscover manifest for a specific GitHub action based on a rule
                      
                      default: empty
                    "%
                    | optional,
                  rootdir
                    | String
                    | doc m%"
                      rootDir allows to specify the root directory from where looking for GitHub Action
                      
                      default: empty
                    "%
                    | optional,
                  versionfilter
                    | {
                      kind
                        | String
                        | doc "specifies the version kind such as semver, regex, or latest"
                        | optional,
                      pattern
                        | String
                        | doc m%"
                          specifies the version pattern according the version kind
                          for semver, it is a semver constraint
                          for regex, it is a regex pattern
                          for time, it is a date format
                        "%
                        | optional,
                      regex
                        | String
                        | doc m%"
                          specifies the regex pattern, used for regex/semver and regex/time.
                          Output of the first capture group will be used.
                        "%
                        | optional,
                      strict
                        | Bool
                        | doc m%"
                          strict enforce strict versioning rule.
                          Only used for semantic versioning at this time
                        "%
                        | optional,
                    }
                    | doc m%"
                      versionfilter provides parameters to specify the version pattern used when generating manifest.
                      
                      kind - semver
                      		versionfilter of kind `semver` uses semantic versioning as version filtering
                      		pattern accepts one of:
                      			`patch` - patch only update patch version
                      			`minor` - minor only update minor version
                      			`major` - major only update major versions
                      			`a version constraint` such as `>= 1.0.0`
                      
                      	kind - regex
                      		versionfilter of kind `regex` uses regular expression as version filtering
                      		pattern accepts a valid regular expression
                      
                      	example:
                      	```
                      		versionfilter:
                      			kind: semver
                      			pattern: minor
                      	```
                      
                      	and its type like regex, semver, or just latest.
                    "%
                    | optional,
                }
                | doc "Spec defines the parameters which can be provided to the Github Action crawler."
                | optional,
              golang
                | {
                  ignore
                    | Array
                      {
                        goversion
                          | String
                          | doc "GoVersions specifies a list of version pattern."
                          | optional,
                        modules
                          | { _ | String }
                          | doc "Modules specifies a list of module pattern."
                          | optional,
                        path
                          | String
                          | doc "Path specifies a go.mod path pattern, the pattern requires to match all of name, not just a substring."
                          | optional,
                      }
                    | doc "ignore allows to specify \"rule\" to ignore autodiscovery a specific go.mod rule"
                    | optional,
                  only
                    | Array
                      {
                        goversion
                          | String
                          | doc "GoVersions specifies a list of version pattern."
                          | optional,
                        modules
                          | { _ | String }
                          | doc "Modules specifies a list of module pattern."
                          | optional,
                        path
                          | String
                          | doc "Path specifies a go.mod path pattern, the pattern requires to match all of name, not just a substring."
                          | optional,
                      }
                    | doc "`only` allows to specify rule to \"only\" autodiscover manifest for a specific golang rule"
                    | optional,
                  onlygomodule
                    | Bool
                    | doc "OnlyGoModule allows to specify if the autodiscovery should only handle Go module specified in go.mod"
                    | optional,
                  onlygoversion
                    | Bool
                    | doc "OnlyGoVersion allows to specify if the autodiscovery should only handle Go version specified in go.mod"
                    | optional,
                  rootdir
                    | String
                    | doc "rootDir defines the root directory used to recursively search for golang go.mod"
                    | optional,
                  versionfilter
                    | {
                      kind
                        | String
                        | doc "specifies the version kind such as semver, regex, or latest"
                        | optional,
                      pattern
                        | String
                        | doc m%"
                          specifies the version pattern according the version kind
                          for semver, it is a semver constraint
                          for regex, it is a regex pattern
                          for time, it is a date format
                        "%
                        | optional,
                      regex
                        | String
                        | doc m%"
                          specifies the regex pattern, used for regex/semver and regex/time.
                          Output of the first capture group will be used.
                        "%
                        | optional,
                      strict
                        | Bool
                        | doc m%"
                          strict enforce strict versioning rule.
                          Only used for semantic versioning at this time
                        "%
                        | optional,
                    }
                    | doc m%"
                      `versionfilter` provides parameters to specify the version pattern to use when generating manifest.
                      
                      		kind - semver
                      			versionfilter of kind `semver` uses semantic versioning as version filtering
                      			pattern accepts one of:
                      				`patch` - patch only update patch version
                      				`minor` - minor only update minor version
                      				`major` - major only update major versions
                      				`a version constraint` such as `>= 1.0.0`
                      
                      		kind - regex
                      			versionfilter of kind `regex` uses regular expression as version filtering
                      			pattern accepts a valid regular expression
                      
                      		example:
                      		```
                      			versionfilter:
                      				kind: semver
                      				pattern: minor
                      		```
                      
                      		and its type like regex, semver, or just latest.
                    "%
                    | optional,
                }
                | doc "Spec defines the parameters which can be provided to the Golang autodiscovery builder."
                | optional,
              helm
                | {
                  auths
                    | {
                      _ | {
                        password
                          | String
                          | doc m%"
                            password specifies the container registry password to use for authentication. Not compatible with token
                            
                            		compatible:
                            			* source
                            			* condition
                            			* target
                            
                            		default:
                            			by default credentials are fetch from the local environment such as `~/.docker/config.json`.
                            
                            		remark:
                            			Not compatible with token
                          "%
                          | optional,
                        token
                          | String
                          | doc m%"
                            token specifies the container registry token to use for authentication.
                            
                            		compatible:
                            			* source
                            			* condition
                            			* target
                            
                            		default:
                            			by default credentials are fetch from the local environment such as `~/.docker/config.json`.
                            
                            		remark:
                            			Not compatible with username/password
                          "%
                          | optional,
                        username
                          | String
                          | doc m%"
                            username specifies the container registry username to use for authentication.
                            
                            		compatible:
                            			* source
                            			* condition
                            			* target
                            
                            		default:
                            			by default credentials are fetch from the local environment such as `~/.docker/config.json`.
                            
                            		remark:
                            			Not compatible with token
                          "%
                          | optional,
                      }
                    }
                    | doc m%"
                      auths provides a map of registry credentials where the key is the registry URL without scheme
                      		if empty, updatecli relies on OCI credentials such as the one used by Docker.
                    "%
                    | optional,
                  digest
                    | Bool
                    | doc "digest provides a parameter to specify if the generated manifest should use a digest on top of the tag when updating container."
                    | optional,
                  ignore
                    | Array
                      {
                        containers
                          | { _ | String }
                          | doc "Containers specifies a list of containers pattern."
                          | optional,
                        dependencies
                          | { _ | String }
                          | doc "Dependencies specifies a list of dependencies pattern."
                          | optional,
                        path
                          | String
                          | doc "Path specifies a Helm chart path pattern, the pattern requires to match all of name, not just a subpart of the path."
                          | optional,
                      }
                    | doc "Ignore specifies rule to ignore Helm chart update."
                    | optional,
                  ignorechartdependency
                    | Bool
                    | doc "ignorechartdependency disables Helm chart dependencies update when set to true"
                    | optional,
                  ignorecontainer
                    | Bool
                    | doc "ignorecontainer disables OCI container tag update when set to true"
                    | optional,
                  only
                    | Array
                      {
                        containers
                          | { _ | String }
                          | doc "Containers specifies a list of containers pattern."
                          | optional,
                        dependencies
                          | { _ | String }
                          | doc "Dependencies specifies a list of dependencies pattern."
                          | optional,
                        path
                          | String
                          | doc "Path specifies a Helm chart path pattern, the pattern requires to match all of name, not just a subpart of the path."
                          | optional,
                      }
                    | doc "only specify required rule(s) to restrict Helm chart update."
                    | optional,
                  rootdir
                    | String
                    | doc "rootdir defines the root directory used to recursively search for Helm Chart"
                    | optional,
                  skippackaging
                    | Bool
                    | doc "[target] Defines if a Chart should be packaged or not."
                    | optional,
                  versionfilter
                    | {
                      kind
                        | String
                        | doc "specifies the version kind such as semver, regex, or latest"
                        | optional,
                      pattern
                        | String
                        | doc m%"
                          specifies the version pattern according the version kind
                          for semver, it is a semver constraint
                          for regex, it is a regex pattern
                          for time, it is a date format
                        "%
                        | optional,
                      regex
                        | String
                        | doc m%"
                          specifies the regex pattern, used for regex/semver and regex/time.
                          Output of the first capture group will be used.
                        "%
                        | optional,
                      strict
                        | Bool
                        | doc m%"
                          strict enforce strict versioning rule.
                          Only used for semantic versioning at this time
                        "%
                        | optional,
                    }
                    | doc m%"
                      versionfilter provides parameters to specify the version pattern used when generating manifest.
                      
                      		kind - semver
                      			versionfilter of kind `semver` uses semantic versioning as version filtering
                      			pattern accepts one of:
                      				`patch` - patch only update patch version
                      				`minor` - minor only update minor version
                      				`major` - major only update major versions
                      				`a version constraint` such as `>= 1.0.0`
                      
                      		kind - regex
                      			versionfilter of kind `regex` uses regular expression as version filtering
                      			pattern accepts a valid regular expression
                      
                      		example:
                      		```
                      			versionfilter:
                      				kind: semver
                      				pattern: minor
                      		```
                      
                      		and its type like regex, semver, or just latest.
                    "%
                    | optional,
                  versionincrement
                    | String
                    | doc "[target] Defines if a Chart changes, triggers, or not, a Chart version update, accepted values is a comma separated list of \"none,major,minor,patch\""
                    | optional,
                }
                | doc "Spec defines the Helm parameters."
                | optional,
              helmfile
                | {
                  auths
                    | {
                      _ | {
                        password
                          | String
                          | doc m%"
                            password specifies the container registry password to use for authentication. Not compatible with token
                            
                            		compatible:
                            			* source
                            			* condition
                            			* target
                            
                            		default:
                            			by default credentials are fetch from the local environment such as `~/.docker/config.json`.
                            
                            		remark:
                            			Not compatible with token
                          "%
                          | optional,
                        token
                          | String
                          | doc m%"
                            token specifies the container registry token to use for authentication.
                            
                            		compatible:
                            			* source
                            			* condition
                            			* target
                            
                            		default:
                            			by default credentials are fetch from the local environment such as `~/.docker/config.json`.
                            
                            		remark:
                            			Not compatible with username/password
                          "%
                          | optional,
                        username
                          | String
                          | doc m%"
                            username specifies the container registry username to use for authentication.
                            
                            		compatible:
                            			* source
                            			* condition
                            			* target
                            
                            		default:
                            			by default credentials are fetch from the local environment such as `~/.docker/config.json`.
                            
                            		remark:
                            			Not compatible with token
                          "%
                          | optional,
                      }
                    }
                    | doc "Auths provides a map of registry credentials where the key is the registry URL without scheme"
                    | optional,
                  ignore
                    | Array
                      {
                        charts
                          | { _ | String }
                          | doc "Charts specifies the list of Helm Chart repository to check"
                          | optional,
                        path
                          | String
                          | doc "Path specifies a Helmfile chart path pattern, the pattern requires to match all of name, not just a subpart of the path."
                          | optional,
                        repositories
                          | Array String
                          | doc "Repositories specifies the list of Helm Chart repository to check"
                          | optional,
                      }
                    | doc "Ignore allows to specify rule to ignore \"autodiscovery\" a specific Helmfile based on a rule"
                    | optional,
                  only
                    | Array
                      {
                        charts
                          | { _ | String }
                          | doc "Charts specifies the list of Helm Chart repository to check"
                          | optional,
                        path
                          | String
                          | doc "Path specifies a Helmfile chart path pattern, the pattern requires to match all of name, not just a subpart of the path."
                          | optional,
                        repositories
                          | Array String
                          | doc "Repositories specifies the list of Helm Chart repository to check"
                          | optional,
                      }
                    | doc "Only allows to specify rule to only \"autodiscovery\" manifest for a specific Helmfile based on a rule"
                    | optional,
                  rootdir
                    | String
                    | doc "rootdir defines the root directory used to recursively search for Helmfile manifest"
                    | optional,
                  versionfilter
                    | {
                      kind
                        | String
                        | doc "specifies the version kind such as semver, regex, or latest"
                        | optional,
                      pattern
                        | String
                        | doc m%"
                          specifies the version pattern according the version kind
                          for semver, it is a semver constraint
                          for regex, it is a regex pattern
                          for time, it is a date format
                        "%
                        | optional,
                      regex
                        | String
                        | doc m%"
                          specifies the regex pattern, used for regex/semver and regex/time.
                          Output of the first capture group will be used.
                        "%
                        | optional,
                      strict
                        | Bool
                        | doc m%"
                          strict enforce strict versioning rule.
                          Only used for semantic versioning at this time
                        "%
                        | optional,
                    }
                    | doc m%"
                      versionfilter provides parameters to specify the version pattern used when generating manifest.
                      
                      		kind - semver
                      			versionfilter of kind `semver` uses semantic versioning as version filtering
                      			pattern accepts one of:
                      				`patch` - patch only update patch version
                      				`minor` - minor only update minor version
                      				`major` - major only update major versions
                      				`a version constraint` such as `>= 1.0.0`
                      
                      		kind - regex
                      			versionfilter of kind `regex` uses regular expression as version filtering
                      			pattern accepts a valid regular expression
                      
                      		example:
                      		```
                      			versionfilter:
                      				kind: semver
                      				pattern: minor
                      		```
                      
                      		and its type like regex, semver, or just latest.
                    "%
                    | optional,
                }
                | doc "Spec defines the Helmfile parameters."
                | optional,
              ko
                | {
                  auths
                    | {
                      _ | {
                        password
                          | String
                          | doc m%"
                            password specifies the container registry password to use for authentication. Not compatible with token
                            
                            		compatible:
                            			* source
                            			* condition
                            			* target
                            
                            		default:
                            			by default credentials are fetch from the local environment such as `~/.docker/config.json`.
                            
                            		remark:
                            			Not compatible with token
                          "%
                          | optional,
                        token
                          | String
                          | doc m%"
                            token specifies the container registry token to use for authentication.
                            
                            		compatible:
                            			* source
                            			* condition
                            			* target
                            
                            		default:
                            			by default credentials are fetch from the local environment such as `~/.docker/config.json`.
                            
                            		remark:
                            			Not compatible with username/password
                          "%
                          | optional,
                        username
                          | String
                          | doc m%"
                            username specifies the container registry username to use for authentication.
                            
                            		compatible:
                            			* source
                            			* condition
                            			* target
                            
                            		default:
                            			by default credentials are fetch from the local environment such as `~/.docker/config.json`.
                            
                            		remark:
                            			Not compatible with token
                          "%
                          | optional,
                      }
                    }
                    | doc "Auths provides a map of registry credentials where the key is the registry URL without scheme"
                    | optional,
                  digest
                    | Bool
                    | doc "digest provides parameters to specify if the generated manifest should use a digest on top of the tag."
                    | optional,
                  files
                    | Array String
                    | doc m%"
                      Files allows to specify a list of Files to analyze.
                      
                      	    The pattern syntax is:
                      	       pattern:
                      	         { term }
                      	       term:
                      	         '*'         matches any sequence of non-Separator characters
                      	         '?'         matches any single non-Separator character
                      	         '[' [ '^' ] { character-range } ']' character class (must be non-empty)
                      	         c           matches character c (c != '*', '?', '\\', '[')
                      	         '\\' c      matches character c
                      
                      		    character-range:
                      		    	c           matches character c (c != '\\', '-', ']')
                      	         '\\' c      matches character c
                      	         lo '-' hi   matches character c for lo <= c <= hi
                      
                      	        Match requires pattern to match all of name, not just a substring.
                      	        The only possible returned error is ErrBadPattern, when pattern
                      	        is malformed.
                      
                      	        On Windows, escaping is disabled. Instead, '\\' is treated as
                      	        path separator.
                    "%
                    | optional,
                  ignore
                    | Array
                      {
                        images
                          | Array String
                          | doc "Images specifies the list of container image to check"
                          | optional,
                        path
                          | String
                          | doc "Path specifies a Fleet bundle path pattern, the pattern requires to match all of name, not just a subpart of the path."
                          | optional,
                      }
                    | doc "Ignore allows to specify rule to ignore autodiscovery a specific Kubernetes manifest based on a rule"
                    | optional,
                  only
                    | Array
                      {
                        images
                          | Array String
                          | doc "Images specifies the list of container image to check"
                          | optional,
                        path
                          | String
                          | doc "Path specifies a Fleet bundle path pattern, the pattern requires to match all of name, not just a subpart of the path."
                          | optional,
                      }
                    | doc "Only allows to specify rule to only autodiscover manifest for a specific Kubernetes manifest based on a rule"
                    | optional,
                  rootdir
                    | String
                    | doc "RootDir defines the root directory used to recursively search for Kubernetes files"
                    | optional,
                  versionfilter
                    | {
                      kind
                        | String
                        | doc "specifies the version kind such as semver, regex, or latest"
                        | optional,
                      pattern
                        | String
                        | doc m%"
                          specifies the version pattern according the version kind
                          for semver, it is a semver constraint
                          for regex, it is a regex pattern
                          for time, it is a date format
                        "%
                        | optional,
                      regex
                        | String
                        | doc m%"
                          specifies the regex pattern, used for regex/semver and regex/time.
                          Output of the first capture group will be used.
                        "%
                        | optional,
                      strict
                        | Bool
                        | doc m%"
                          strict enforce strict versioning rule.
                          Only used for semantic versioning at this time
                        "%
                        | optional,
                    }
                    | doc m%"
                      versionfilter provides parameters to specify the version pattern used when generating manifest.
                      
                      		kind - semver
                      			versionfilter of kind `semver` uses semantic versioning as version filtering
                      			pattern accepts one of:
                      				`patch` - patch only update patch version
                      				`minor` - minor only update minor version
                      				`major` - major only update major versions
                      				`a version constraint` such as `>= 1.0.0`
                      
                      		kind - regex
                      			versionfilter of kind `regex` uses regular expression as version filtering
                      			pattern accepts a valid regular expression
                      
                      		example:
                      		```
                      			versionfilter:
                      				kind: semver
                      				pattern: minor
                      		```
                      
                      		and its type like regex, semver, or just latest.
                    "%
                    | optional,
                }
                | doc "Spec defines the parameters which can be provided to the Kubernetes builder."
                | optional,
              kubernetes
                | {
                  auths
                    | {
                      _ | {
                        password
                          | String
                          | doc m%"
                            password specifies the container registry password to use for authentication. Not compatible with token
                            
                            		compatible:
                            			* source
                            			* condition
                            			* target
                            
                            		default:
                            			by default credentials are fetch from the local environment such as `~/.docker/config.json`.
                            
                            		remark:
                            			Not compatible with token
                          "%
                          | optional,
                        token
                          | String
                          | doc m%"
                            token specifies the container registry token to use for authentication.
                            
                            		compatible:
                            			* source
                            			* condition
                            			* target
                            
                            		default:
                            			by default credentials are fetch from the local environment such as `~/.docker/config.json`.
                            
                            		remark:
                            			Not compatible with username/password
                          "%
                          | optional,
                        username
                          | String
                          | doc m%"
                            username specifies the container registry username to use for authentication.
                            
                            		compatible:
                            			* source
                            			* condition
                            			* target
                            
                            		default:
                            			by default credentials are fetch from the local environment such as `~/.docker/config.json`.
                            
                            		remark:
                            			Not compatible with token
                          "%
                          | optional,
                      }
                    }
                    | doc "Auths provides a map of registry credentials where the key is the registry URL without scheme"
                    | optional,
                  digest
                    | Bool
                    | doc "digest provides parameters to specify if the generated manifest should use a digest on top of the tag."
                    | optional,
                  files
                    | Array String
                    | doc m%"
                      Files allows to specify a list of Files to analyze.
                      
                      	    The pattern syntax is:
                      	       pattern:
                      	         { term }
                      	       term:
                      	         '*'         matches any sequence of non-Separator characters
                      	         '?'         matches any single non-Separator character
                      	         '[' [ '^' ] { character-range } ']' character class (must be non-empty)
                      	         c           matches character c (c != '*', '?', '\\', '[')
                      	         '\\' c      matches character c
                      
                      		    character-range:
                      		    	c           matches character c (c != '\\', '-', ']')
                      	         '\\' c      matches character c
                      	         lo '-' hi   matches character c for lo <= c <= hi
                      
                      	        Match requires pattern to match all of name, not just a substring.
                      	        The only possible returned error is ErrBadPattern, when pattern
                      	        is malformed.
                      
                      	        On Windows, escaping is disabled. Instead, '\\' is treated as
                      	        path separator.
                    "%
                    | optional,
                  ignore
                    | Array
                      {
                        images
                          | Array String
                          | doc "Images specifies the list of container image to check"
                          | optional,
                        path
                          | String
                          | doc "Path specifies a Fleet bundle path pattern, the pattern requires to match all of name, not just a subpart of the path."
                          | optional,
                      }
                    | doc "Ignore allows to specify rule to ignore autodiscovery a specific Kubernetes manifest based on a rule"
                    | optional,
                  only
                    | Array
                      {
                        images
                          | Array String
                          | doc "Images specifies the list of container image to check"
                          | optional,
                        path
                          | String
                          | doc "Path specifies a Fleet bundle path pattern, the pattern requires to match all of name, not just a subpart of the path."
                          | optional,
                      }
                    | doc "Only allows to specify rule to only autodiscover manifest for a specific Kubernetes manifest based on a rule"
                    | optional,
                  rootdir
                    | String
                    | doc "RootDir defines the root directory used to recursively search for Kubernetes files"
                    | optional,
                  versionfilter
                    | {
                      kind
                        | String
                        | doc "specifies the version kind such as semver, regex, or latest"
                        | optional,
                      pattern
                        | String
                        | doc m%"
                          specifies the version pattern according the version kind
                          for semver, it is a semver constraint
                          for regex, it is a regex pattern
                          for time, it is a date format
                        "%
                        | optional,
                      regex
                        | String
                        | doc m%"
                          specifies the regex pattern, used for regex/semver and regex/time.
                          Output of the first capture group will be used.
                        "%
                        | optional,
                      strict
                        | Bool
                        | doc m%"
                          strict enforce strict versioning rule.
                          Only used for semantic versioning at this time
                        "%
                        | optional,
                    }
                    | doc m%"
                      versionfilter provides parameters to specify the version pattern used when generating manifest.
                      
                      		kind - semver
                      			versionfilter of kind `semver` uses semantic versioning as version filtering
                      			pattern accepts one of:
                      				`patch` - patch only update patch version
                      				`minor` - minor only update minor version
                      				`major` - major only update major versions
                      				`a version constraint` such as `>= 1.0.0`
                      
                      		kind - regex
                      			versionfilter of kind `regex` uses regular expression as version filtering
                      			pattern accepts a valid regular expression
                      
                      		example:
                      		```
                      			versionfilter:
                      				kind: semver
                      				pattern: minor
                      		```
                      
                      		and its type like regex, semver, or just latest.
                    "%
                    | optional,
                }
                | doc "Spec defines the parameters which can be provided to the Kubernetes builder."
                | optional,
              maven
                | {
                  ignore
                    | Array
                      {
                        artifactids
                          | { _ | String }
                          | doc "ArtifactIDs specifies the list of Maven ArtifactIDs to check"
                          | optional,
                        groupids
                          | Array String
                          | doc "GroupIDs specifies the list of Maven GroupIDs to check"
                          | optional,
                        path
                          | String
                          | doc "Path specifies a Helm chart path pattern, the pattern requires to match all of name, not just a substring."
                          | optional,
                      }
                    | doc "Ignore allows to specify rule to ignore autodiscovery a specific Helm based on a rule"
                    | optional,
                  only
                    | Array
                      {
                        artifactids
                          | { _ | String }
                          | doc "ArtifactIDs specifies the list of Maven ArtifactIDs to check"
                          | optional,
                        groupids
                          | Array String
                          | doc "GroupIDs specifies the list of Maven GroupIDs to check"
                          | optional,
                        path
                          | String
                          | doc "Path specifies a Helm chart path pattern, the pattern requires to match all of name, not just a substring."
                          | optional,
                      }
                    | doc "Only allows to specify rule to only autodiscover manifest for a specific Helm based on a rule"
                    | optional,
                  rootdir
                    | String
                    | doc "RootDir defines the root directory used to recursively search for Helm Chart"
                    | optional,
                  versionfilter
                    | {
                      kind
                        | String
                        | doc "specifies the version kind such as semver, regex, or latest"
                        | optional,
                      pattern
                        | String
                        | doc m%"
                          specifies the version pattern according the version kind
                          for semver, it is a semver constraint
                          for regex, it is a regex pattern
                          for time, it is a date format
                        "%
                        | optional,
                      regex
                        | String
                        | doc m%"
                          specifies the regex pattern, used for regex/semver and regex/time.
                          Output of the first capture group will be used.
                        "%
                        | optional,
                      strict
                        | Bool
                        | doc m%"
                          strict enforce strict versioning rule.
                          Only used for semantic versioning at this time
                        "%
                        | optional,
                    }
                    | doc m%"
                      versionfilter provides parameters to specify the version pattern used when generating manifest.
                      
                      		kind - semver
                      			versionfilter of kind `semver` uses semantic versioning as version filtering
                      			pattern accepts one of:
                      				`patch` - patch only update patch version
                      				`minor` - minor only update minor version
                      				`major` - major only update major versions
                      				`a version constraint` such as `>= 1.0.0`
                      
                      		kind - regex
                      			versionfilter of kind `regex` uses regular expression as version filtering
                      			pattern accepts a valid regular expression
                      
                      		example:
                      		```
                      			versionfilter:
                      				kind: semver
                      				pattern: minor
                      		```
                      
                      		and its type like regex, semver, or just latest.
                    "%
                    | optional,
                }
                | doc "Spec defines the parameters which can be provided to the Helm builder."
                | optional,
              nomad
                | {
                  auths
                    | {
                      _ | {
                        password
                          | String
                          | doc m%"
                            password specifies the container registry password to use for authentication. Not compatible with token
                            
                            		compatible:
                            			* source
                            			* condition
                            			* target
                            
                            		default:
                            			by default credentials are fetch from the local environment such as `~/.docker/config.json`.
                            
                            		remark:
                            			Not compatible with token
                          "%
                          | optional,
                        token
                          | String
                          | doc m%"
                            token specifies the container registry token to use for authentication.
                            
                            		compatible:
                            			* source
                            			* condition
                            			* target
                            
                            		default:
                            			by default credentials are fetch from the local environment such as `~/.docker/config.json`.
                            
                            		remark:
                            			Not compatible with username/password
                          "%
                          | optional,
                        username
                          | String
                          | doc m%"
                            username specifies the container registry username to use for authentication.
                            
                            		compatible:
                            			* source
                            			* condition
                            			* target
                            
                            		default:
                            			by default credentials are fetch from the local environment such as `~/.docker/config.json`.
                            
                            		remark:
                            			Not compatible with token
                          "%
                          | optional,
                      }
                    }
                    | doc "auths provides a map of registry credentials where the key is the registry URL without scheme"
                    | optional,
                  digest
                    | Bool
                    | doc "digest provides parameters to specify if the generated manifest should use a digest on top of the tag."
                    | optional,
                  filematch
                    | Array String
                    | doc "FileMatch allows to override default docker-compose.yaml file matching. Default [\"docker-compose.yaml\",\"docker-compose.yml\",\"docker-compose.*.yaml\",\"docker-compose.*.yml\"]"
                    | optional,
                  ignore
                    | Array
                      {
                        images
                          | Array String
                          | doc "Image specifies a list of docker image"
                          | optional,
                        jobs
                          | Array String
                          | doc "Jobs specifies a list of Nomad job"
                          | optional,
                        path
                          | String
                          | doc "Path specifies a Nomad path pattern, the pattern requires to match all of name, not just a substring."
                          | optional,
                      }
                    | doc "ignore allows to specify rule to ignore autodiscovery a specific Helm based on a rule"
                    | optional,
                  only
                    | Array
                      {
                        images
                          | Array String
                          | doc "Image specifies a list of docker image"
                          | optional,
                        jobs
                          | Array String
                          | doc "Jobs specifies a list of Nomad job"
                          | optional,
                        path
                          | String
                          | doc "Path specifies a Nomad path pattern, the pattern requires to match all of name, not just a substring."
                          | optional,
                      }
                    | doc "only allows to specify rule to only autodiscover manifest for a specific Helm based on a rule"
                    | optional,
                  rootdir
                    | String
                    | doc m%"
                      rootDir defines the root directory used to recursively search for Nomad files
                      If rootDir is not provided, the current working directory will be used.
                      If rootDir is provided as an absolute path, scmID will be ignored.
                      If rootDir is not provided but a scmid is, then rootDir will be set to the git repository root directory.
                    "%
                    | optional,
                  versionfilter
                    | {
                      kind
                        | String
                        | doc "specifies the version kind such as semver, regex, or latest"
                        | optional,
                      pattern
                        | String
                        | doc m%"
                          specifies the version pattern according the version kind
                          for semver, it is a semver constraint
                          for regex, it is a regex pattern
                          for time, it is a date format
                        "%
                        | optional,
                      regex
                        | String
                        | doc m%"
                          specifies the regex pattern, used for regex/semver and regex/time.
                          Output of the first capture group will be used.
                        "%
                        | optional,
                      strict
                        | Bool
                        | doc m%"
                          strict enforce strict versioning rule.
                          Only used for semantic versioning at this time
                        "%
                        | optional,
                    }
                    | doc m%"
                      versionfilter provides parameters to specify the version pattern used when generating manifest.
                      
                      More information available at
                      https://www.updatecli.io/docs/core/versionfilter/
                      
                      kind - semver
                        versionfilter of kind `semver` uses semantic versioning as version filtering
                        pattern accepts one of:
                          `patch` - patch only update patch version
                          `minor` - minor only update minor version
                          `major` - major only update major versions
                          `a version constraint` such as `>= 1.0.0`
                      
                      kind - regex
                      versionfilter of kind `regex` uses regular expression as version filtering
                      pattern accepts a valid regular expression
                      
                      example:
                      ```
                        versionfilter:
                        kind: semver
                        pattern: minor
                      ```
                      and its type like regex, semver, or just latest.
                    "%
                    | optional,
                }
                | doc "Spec is a struct fill from Updatecli manifest data and shouldn't be modified at runtime unless For Fields that requires it, we can use the struct DockerCompose Spec defines the parameters which can be provided to the Helm builder."
                | optional,
              npm
                | {
                  ignore
                    | Array
                      {
                        packages
                          | { _ | String }
                          | doc "Packages specifies the list of NPM packages to check"
                          | optional,
                        path
                          | String
                          | doc "Path specifies a package.json path pattern, the pattern requires to match all of name, not just a substring."
                          | optional,
                      }
                    | doc "Ignore allows to specify rule to ignore autodiscovery a specific NPM based on a rule"
                    | optional,
                  only
                    | Array
                      {
                        packages
                          | { _ | String }
                          | doc "Packages specifies the list of NPM packages to check"
                          | optional,
                        path
                          | String
                          | doc "Path specifies a package.json path pattern, the pattern requires to match all of name, not just a substring."
                          | optional,
                      }
                    | doc "Only allows to specify rule to only autodiscover manifest for a specific NPM based on a rule"
                    | optional,
                  rootdir
                    | String
                    | doc "RootDir defines the root directory used to recursively search for npm packages.json"
                    | optional,
                  versionfilter
                    | {
                      kind
                        | String
                        | doc "specifies the version kind such as semver, regex, or latest"
                        | optional,
                      pattern
                        | String
                        | doc m%"
                          specifies the version pattern according the version kind
                          for semver, it is a semver constraint
                          for regex, it is a regex pattern
                          for time, it is a date format
                        "%
                        | optional,
                      regex
                        | String
                        | doc m%"
                          specifies the regex pattern, used for regex/semver and regex/time.
                          Output of the first capture group will be used.
                        "%
                        | optional,
                      strict
                        | Bool
                        | doc m%"
                          strict enforce strict versioning rule.
                          Only used for semantic versioning at this time
                        "%
                        | optional,
                    }
                    | doc m%"
                      versionfilter provides parameters to specify the version pattern used when generating manifest.
                      
                      		kind - semver
                      			versionfilter of kind `semver` uses semantic versioning as version filtering
                      			pattern accepts one of:
                      				`patch` - patch only update patch version
                      				`minor` - minor only update minor version
                      				`major` - major only update major versions
                      				`a version constraint` such as `>= 1.0.0`
                      
                      		kind - regex
                      			versionfilter of kind `regex` uses regular expression as version filtering
                      			pattern accepts a valid regular expression
                      
                      		example:
                      		```
                      			versionfilter:
                      				kind: semver
                      				pattern: minor
                      		```
                      
                      		and its type like regex, semver, or just latest.
                    "%
                    | optional,
                }
                | doc "Spec defines the parameters which can be provided to the NPM builder."
                | optional,
              precommit
                | {
                  digest
                    | Bool
                    | doc m%"
                      Digest provides parameters to specify if the generated manifest should use a digest instead of the branch or tag.
                      This is equivalent to using the [`--freeze`](https://pre-commit.com/#pre-commit-autoupdate) option of precommit
                    "%
                    | optional,
                  ignore
                    | Array
                      {
                        path
                          | String
                          | doc "Path specifies a .pre-commit-config.yaml path pattern, the pattern requires to match all of name, not just a substring."
                          | optional,
                        repos
                          | { _ | String }
                          | doc "Repos specifies the list of NPM packages to check"
                          | optional,
                      }
                    | doc "Ignore allows to specify rule to ignore autodiscovery a specific NPM based on a rule"
                    | optional,
                  only
                    | Array
                      {
                        path
                          | String
                          | doc "Path specifies a .pre-commit-config.yaml path pattern, the pattern requires to match all of name, not just a substring."
                          | optional,
                        repos
                          | { _ | String }
                          | doc "Repos specifies the list of NPM packages to check"
                          | optional,
                      }
                    | doc "Only allows to specify rule to only autodiscover manifest for a specific NPM based on a rule"
                    | optional,
                  rootdir
                    | String
                    | doc "RootDir defines the root directory used to recursively search for npm packages.json"
                    | optional,
                  versionfilter
                    | {
                      kind
                        | String
                        | doc "specifies the version kind such as semver, regex, or latest"
                        | optional,
                      pattern
                        | String
                        | doc m%"
                          specifies the version pattern according the version kind
                          for semver, it is a semver constraint
                          for regex, it is a regex pattern
                          for time, it is a date format
                        "%
                        | optional,
                      regex
                        | String
                        | doc m%"
                          specifies the regex pattern, used for regex/semver and regex/time.
                          Output of the first capture group will be used.
                        "%
                        | optional,
                      strict
                        | Bool
                        | doc m%"
                          strict enforce strict versioning rule.
                          Only used for semantic versioning at this time
                        "%
                        | optional,
                    }
                    | doc m%"
                      versionfilter provides parameters to specify the version pattern used when generating manifest.
                      
                      		kind - semver
                      			versionfilter of kind `semver` uses semantic versioning as version filtering
                      			pattern accepts one of:
                      				`patch` - patch only update patch version
                      				`minor` - minor only update minor version
                      				`major` - major only update major versions
                      				`a version constraint` such as `>= 1.0.0`
                      
                      		kind - regex
                      			versionfilter of kind `regex` uses regular expression as version filtering
                      			pattern accepts a valid regular expression
                      
                      		example:
                      		```
                      			versionfilter:
                      				kind: semver
                      				pattern: minor
                      		```
                      
                      		and its type like regex, semver, or just latest.
                    "%
                    | optional,
                }
                | doc "Spec defines the parameters uses to generate the precomit manifests"
                | optional,
              prow
                | {
                  auths
                    | {
                      _ | {
                        password
                          | String
                          | doc m%"
                            password specifies the container registry password to use for authentication. Not compatible with token
                            
                            		compatible:
                            			* source
                            			* condition
                            			* target
                            
                            		default:
                            			by default credentials are fetch from the local environment such as `~/.docker/config.json`.
                            
                            		remark:
                            			Not compatible with token
                          "%
                          | optional,
                        token
                          | String
                          | doc m%"
                            token specifies the container registry token to use for authentication.
                            
                            		compatible:
                            			* source
                            			* condition
                            			* target
                            
                            		default:
                            			by default credentials are fetch from the local environment such as `~/.docker/config.json`.
                            
                            		remark:
                            			Not compatible with username/password
                          "%
                          | optional,
                        username
                          | String
                          | doc m%"
                            username specifies the container registry username to use for authentication.
                            
                            		compatible:
                            			* source
                            			* condition
                            			* target
                            
                            		default:
                            			by default credentials are fetch from the local environment such as `~/.docker/config.json`.
                            
                            		remark:
                            			Not compatible with token
                          "%
                          | optional,
                      }
                    }
                    | doc "Auths provides a map of registry credentials where the key is the registry URL without scheme"
                    | optional,
                  digest
                    | Bool
                    | doc "digest provides parameters to specify if the generated manifest should use a digest on top of the tag."
                    | optional,
                  files
                    | Array String
                    | doc m%"
                      Files allows to specify a list of Files to analyze.
                      
                      	    The pattern syntax is:
                      	       pattern:
                      	         { term }
                      	       term:
                      	         '*'         matches any sequence of non-Separator characters
                      	         '?'         matches any single non-Separator character
                      	         '[' [ '^' ] { character-range } ']' character class (must be non-empty)
                      	         c           matches character c (c != '*', '?', '\\', '[')
                      	         '\\' c      matches character c
                      
                      		    character-range:
                      		    	c           matches character c (c != '\\', '-', ']')
                      	         '\\' c      matches character c
                      	         lo '-' hi   matches character c for lo <= c <= hi
                      
                      	        Match requires pattern to match all of name, not just a substring.
                      	        The only possible returned error is ErrBadPattern, when pattern
                      	        is malformed.
                      
                      	        On Windows, escaping is disabled. Instead, '\\' is treated as
                      	        path separator.
                    "%
                    | optional,
                  ignore
                    | Array
                      {
                        images
                          | Array String
                          | doc "Images specifies the list of container image to check"
                          | optional,
                        path
                          | String
                          | doc "Path specifies a Fleet bundle path pattern, the pattern requires to match all of name, not just a subpart of the path."
                          | optional,
                      }
                    | doc "Ignore allows to specify rule to ignore autodiscovery a specific Kubernetes manifest based on a rule"
                    | optional,
                  only
                    | Array
                      {
                        images
                          | Array String
                          | doc "Images specifies the list of container image to check"
                          | optional,
                        path
                          | String
                          | doc "Path specifies a Fleet bundle path pattern, the pattern requires to match all of name, not just a subpart of the path."
                          | optional,
                      }
                    | doc "Only allows to specify rule to only autodiscover manifest for a specific Kubernetes manifest based on a rule"
                    | optional,
                  rootdir
                    | String
                    | doc "RootDir defines the root directory used to recursively search for Kubernetes files"
                    | optional,
                  versionfilter
                    | {
                      kind
                        | String
                        | doc "specifies the version kind such as semver, regex, or latest"
                        | optional,
                      pattern
                        | String
                        | doc m%"
                          specifies the version pattern according the version kind
                          for semver, it is a semver constraint
                          for regex, it is a regex pattern
                          for time, it is a date format
                        "%
                        | optional,
                      regex
                        | String
                        | doc m%"
                          specifies the regex pattern, used for regex/semver and regex/time.
                          Output of the first capture group will be used.
                        "%
                        | optional,
                      strict
                        | Bool
                        | doc m%"
                          strict enforce strict versioning rule.
                          Only used for semantic versioning at this time
                        "%
                        | optional,
                    }
                    | doc m%"
                      versionfilter provides parameters to specify the version pattern used when generating manifest.
                      
                      		kind - semver
                      			versionfilter of kind `semver` uses semantic versioning as version filtering
                      			pattern accepts one of:
                      				`patch` - patch only update patch version
                      				`minor` - minor only update minor version
                      				`major` - major only update major versions
                      				`a version constraint` such as `>= 1.0.0`
                      
                      		kind - regex
                      			versionfilter of kind `regex` uses regular expression as version filtering
                      			pattern accepts a valid regular expression
                      
                      		example:
                      		```
                      			versionfilter:
                      				kind: semver
                      				pattern: minor
                      		```
                      
                      		and its type like regex, semver, or just latest.
                    "%
                    | optional,
                }
                | doc "Spec defines the parameters which can be provided to the Kubernetes builder."
                | optional,
              "rancher/fleet"
                | {
                  ignore
                    | Array
                      {
                        charts
                          | { _ | String }
                          | doc "Charts specifies the list of Helm Chart repository to check"
                          | optional,
                        path
                          | String
                          | doc "Path specifies a Fleet bundle path pattern, the pattern requires to match all of name, not just a subpart of the path."
                          | optional,
                        repositories
                          | Array String
                          | doc "Repositories specifies the list of Helm Chart repository to check"
                          | optional,
                      }
                    | doc "Ignore allows to specify rule to ignore autodiscovery a specific Fleet bundle based on a rule"
                    | optional,
                  only
                    | Array
                      {
                        charts
                          | { _ | String }
                          | doc "Charts specifies the list of Helm Chart repository to check"
                          | optional,
                        path
                          | String
                          | doc "Path specifies a Fleet bundle path pattern, the pattern requires to match all of name, not just a subpart of the path."
                          | optional,
                        repositories
                          | Array String
                          | doc "Repositories specifies the list of Helm Chart repository to check"
                          | optional,
                      }
                    | doc "Only allows to specify rule to only autodiscover manifest for a specific Fleet bundle based on a rule"
                    | optional,
                  rootdir
                    | String
                    | doc "RootDir defines the root directory used to recursively search for Fleet bundle"
                    | optional,
                  versionfilter
                    | {
                      kind
                        | String
                        | doc "specifies the version kind such as semver, regex, or latest"
                        | optional,
                      pattern
                        | String
                        | doc m%"
                          specifies the version pattern according the version kind
                          for semver, it is a semver constraint
                          for regex, it is a regex pattern
                          for time, it is a date format
                        "%
                        | optional,
                      regex
                        | String
                        | doc m%"
                          specifies the regex pattern, used for regex/semver and regex/time.
                          Output of the first capture group will be used.
                        "%
                        | optional,
                      strict
                        | Bool
                        | doc m%"
                          strict enforce strict versioning rule.
                          Only used for semantic versioning at this time
                        "%
                        | optional,
                    }
                    | doc m%"
                      versionfilter provides parameters to specify the version pattern used when generating manifest.
                      
                      		kind - semver
                      			versionfilter of kind `semver` uses semantic versioning as version filtering
                      			pattern accepts one of:
                      				`patch` - patch only update patch version
                      				`minor` - minor only update minor version
                      				`major` - major only update major versions
                      				`a version constraint` such as `>= 1.0.0`
                      
                      		kind - regex
                      			versionfilter of kind `regex` uses regular expression as version filtering
                      			pattern accepts a valid regular expression
                      
                      		example:
                      		```
                      			versionfilter:
                      				kind: semver
                      				pattern: minor
                      		```
                      
                      		and its type like regex, semver, or just latest.
                    "%
                    | optional,
                }
                | doc "Spec defines the parameters which can be provided to the fleet builder."
                | optional,
              terraform
                | {
                  ignore
                    | Array
                      {
                        path
                          | String
                          | doc "`path` specifies a `.terraform.lock.hcl` path pattern, the pattern requires to match all of name, not just a substring."
                          | optional,
                        providers
                          | { _ | String }
                          | doc m%"
                            `providers` specifies a map of providers, the key is provider url as seen in the `.terraform.lock.hcl`,
                            		the value is an optional semver version constraint.
                            
                            		examples:
                            		```
                            		- providers:
                            		  # Ignoring provider updates for this provider
                            		  registry.terraform.io/hashicorp/aws:
                            		  # Ignore provider updates for this version
                            		  registry.terraform.io/hashicorp/kubernetes: "1.x"
                            		```
                          "%
                          | optional,
                      }
                    | doc "`ignore` specifies rule to ignore `.terraform.lock.hcl` update."
                    | optional,
                  only
                    | Array
                      {
                        path
                          | String
                          | doc "`path` specifies a `.terraform.lock.hcl` path pattern, the pattern requires to match all of name, not just a substring."
                          | optional,
                        providers
                          | { _ | String }
                          | doc m%"
                            `providers` specifies a map of providers, the key is provider url as seen in the `.terraform.lock.hcl`,
                            		the value is an optional semver version constraint.
                            
                            		examples:
                            		```
                            		- providers:
                            		  # Ignoring provider updates for this provider
                            		  registry.terraform.io/hashicorp/aws:
                            		  # Ignore provider updates for this version
                            		  registry.terraform.io/hashicorp/kubernetes: "1.x"
                            		```
                          "%
                          | optional,
                      }
                    | doc "`only` specify required rule to restrict `.terraform.lock.hcl` update."
                    | optional,
                  platforms
                    | Array String
                    | doc m%"
                      `platforms` is the target platforms to request package checksums for.
                      
                      		remarks:
                      		* Fallback is linux_amd64, linux_arm64, darwin_amd64, darwin_arm64
                    "%
                    | optional,
                  rootdir
                    | String
                    | doc "`rootdir` defines the root directory used to recursively search for `.terraform.lock.hcl`"
                    | optional,
                  versionfilter
                    | {
                      kind
                        | String
                        | doc "specifies the version kind such as semver, regex, or latest"
                        | optional,
                      pattern
                        | String
                        | doc m%"
                          specifies the version pattern according the version kind
                          for semver, it is a semver constraint
                          for regex, it is a regex pattern
                          for time, it is a date format
                        "%
                        | optional,
                      regex
                        | String
                        | doc m%"
                          specifies the regex pattern, used for regex/semver and regex/time.
                          Output of the first capture group will be used.
                        "%
                        | optional,
                      strict
                        | Bool
                        | doc m%"
                          strict enforce strict versioning rule.
                          Only used for semantic versioning at this time
                        "%
                        | optional,
                    }
                    | doc m%"
                      `versionfilter` provides parameters to specify the version pattern to use when generating manifest.
                      
                      		kind - semver
                      			versionfilter of kind `semver` uses semantic versioning as version filtering
                      			pattern accepts one of:
                      				`patch` - patch only update patch version
                      				`minor` - minor only update minor version
                      				`major` - major only update major versions
                      				`a version constraint` such as `>= 1.0.0`
                      
                      		kind - regex
                      			versionfilter of kind `regex` uses regular expression as version filtering
                      			pattern accepts a valid regular expression
                      
                      		example:
                      		```
                      			versionfilter:
                      				kind: semver
                      				pattern: minor
                      		```
                      
                      		and its type like regex, semver, or just latest.
                    "%
                    | optional,
                }
                | doc "Spec defines the Terraform parameters."
                | optional,
              updatecli
                | {
                  auths
                    | {
                      _ | {
                        password
                          | String
                          | doc m%"
                            password specifies the container registry password to use for authentication. Not compatible with token
                            
                            		compatible:
                            			* source
                            			* condition
                            			* target
                            
                            		default:
                            			by default credentials are fetch from the local environment such as `~/.docker/config.json`.
                            
                            		remark:
                            			Not compatible with token
                          "%
                          | optional,
                        token
                          | String
                          | doc m%"
                            token specifies the container registry token to use for authentication.
                            
                            		compatible:
                            			* source
                            			* condition
                            			* target
                            
                            		default:
                            			by default credentials are fetch from the local environment such as `~/.docker/config.json`.
                            
                            		remark:
                            			Not compatible with username/password
                          "%
                          | optional,
                        username
                          | String
                          | doc m%"
                            username specifies the container registry username to use for authentication.
                            
                            		compatible:
                            			* source
                            			* condition
                            			* target
                            
                            		default:
                            			by default credentials are fetch from the local environment such as `~/.docker/config.json`.
                            
                            		remark:
                            			Not compatible with token
                          "%
                          | optional,
                      }
                    }
                    | doc "Auths provides a map of registry credentials where the key is the registry URL without scheme"
                    | optional,
                  files
                    | Array String
                    | doc m%"
                      Files allows to specify a list of Files to analyze.
                      
                      	    The pattern syntax is:
                      	       pattern:
                      	         { term }
                      	       term:
                      	         '*'         matches any sequence of non-Separator characters
                      	         '?'         matches any single non-Separator character
                      	         '[' [ '^' ] { character-range } ']' character class (must be non-empty)
                      	         c           matches character c (c != '*', '?', '\\', '[')
                      	         '\\' c      matches character c
                      
                      		    character-range:
                      		    	c           matches character c (c != '\\', '-', ']')
                      	         '\\' c      matches character c
                      	         lo '-' hi   matches character c for lo <= c <= hi
                      
                      	        Match requires pattern to match all of name, not just a substring.
                      	        The only possible returned error is ErrBadPattern, when pattern
                      	        is malformed.
                      
                      	        On Windows, escaping is disabled. Instead, '\\' is treated as
                      	        path separator.
                    "%
                    | optional,
                  ignore
                    | Array
                      {
                        path
                          | String
                          | doc "Path specifies a Updatecli compose filepath pattern, the pattern requires to match all of name, not just a subpart of the path."
                          | optional,
                        policies
                          | { _ | String }
                          | doc "Policies specifies a Updatecli policy"
                          | optional,
                      }
                    | doc "Ignore allows to specify rule to ignore \"autodiscovery\" a specific Updatecli based on a rule"
                    | optional,
                  only
                    | Array
                      {
                        path
                          | String
                          | doc "Path specifies a Updatecli compose filepath pattern, the pattern requires to match all of name, not just a subpart of the path."
                          | optional,
                        policies
                          | { _ | String }
                          | doc "Policies specifies a Updatecli policy"
                          | optional,
                      }
                    | doc "Only allows to specify rule to only \"autodiscovery\" manifest for a specific Updatecli based on a rule"
                    | optional,
                  rootdir
                    | String
                    | doc "rootdir defines the root directory used to recursively search for Updatecli manifest"
                    | optional,
                  versionfilter
                    | {
                      kind
                        | String
                        | doc "specifies the version kind such as semver, regex, or latest"
                        | optional,
                      pattern
                        | String
                        | doc m%"
                          specifies the version pattern according the version kind
                          for semver, it is a semver constraint
                          for regex, it is a regex pattern
                          for time, it is a date format
                        "%
                        | optional,
                      regex
                        | String
                        | doc m%"
                          specifies the regex pattern, used for regex/semver and regex/time.
                          Output of the first capture group will be used.
                        "%
                        | optional,
                      strict
                        | Bool
                        | doc m%"
                          strict enforce strict versioning rule.
                          Only used for semantic versioning at this time
                        "%
                        | optional,
                    }
                    | doc m%"
                      versionfilter provides parameters to specify the version pattern used when generating manifest.
                      
                      		kind - semver
                      			versionfilter of kind `semver` uses semantic versioning as version filtering
                      			pattern accepts one of:
                      				`patch` - patch only update patch version
                      				`minor` - minor only update minor version
                      				`major` - major only update major versions
                      				`a version constraint` such as `>= 1.0.0`
                      
                      		kind - regex
                      			versionfilter of kind `regex` uses regular expression as version filtering
                      			pattern accepts a valid regular expression
                      
                      		example:
                      		```
                      			versionfilter:
                      				kind: semver
                      				pattern: minor
                      		```
                      
                      		and its type like regex, semver, or just latest.
                    "%
                    | optional,
                }
                | doc "Spec defines the Updatecli parameters."
                | optional,
              ..
            }
            | doc "Crawlers defines a map of crawler configuration where the key represent the crawler type"
            | optional,
          groupby
            | String
            | doc m%"
              groupby specifies how to group pipeline. The Accepted is one of "all", "individual". Default is "all"
              
              		default:
              			all
            "%
            | optional,
          pullrequestid
            | String
            | doc "!Deprecated in favor of `actionid`"
            | optional,
          scmid
            | String
            | doc "scmid is a unique identifier used to retrieve the scm configuration from the configuration file."
            | optional,
        }
        | doc m%"
          "autodiscovery" defines the configuration to automatically discover new versions update.
          
          		example:
          		---
          		autodiscovery:
          			scmid: default
          			actionid:  default
          			groupby: all
          			crawlers:
          				golang/gomod:
          					versionfilter:
          					kind: semver
          					pattern: patch
          		---
        "%
        | optional,
      conditions
        | {
          _ | js2n.OneOf
            [
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        dependson = js2n.array.ArrayOf String,
                        disablesourceinput = Bool,
                        failwhen = Bool,
                        kind =
                          std.contract.Sequence
                              [ std.enum.TagOrString, [| '"aws/ami" |] ],
                        name = String,
                        scmid = String,
                        sourceid = String,
                        spec =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      accesskey = String,
                                      dryrun = Bool,
                                      endpoint = String,
                                      filters =
                                        js2n.array.ArrayOf
                                            (js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      name = String,
                                                      values = String,
                                                    },
                                                required = {},
                                              }),
                                      region = String,
                                      secretkey = String,
                                      sortby = String,
                                    },
                                required = {},
                              },
                        transformers =
                          js2n.array.ArrayOf
                              (js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        addprefix = String,
                                        addsuffix = String,
                                        find = String,
                                        findsubmatch =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      captureindex =
                                                        std.number.Integer,
                                                      pattern = String,
                                                    },
                                                required = { pattern = true, },
                                              },
                                        quote = Bool,
                                        replacer =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      from = String,
                                                      to = String,
                                                    },
                                                required =
                                                  { from = true, to = true, },
                                              },
                                        replacers =
                                          js2n.array.ArrayOf
                                              (js2n.record.Record
                                                {
                                                  additional = 'None,
                                                  patterns = {},
                                                  properties =
                                                    {
                                                        from = String,
                                                        to = String,
                                                      },
                                                  required =
                                                    { from = true, to = true, },
                                                }),
                                        semverinc = String,
                                        trimprefix = String,
                                        trimsuffix = String,
                                        unquote = Bool,
                                      },
                                  required = {},
                                }),
                      },
                  required = { kind = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        dependson = js2n.array.ArrayOf String,
                        disablesourceinput = Bool,
                        failwhen = Bool,
                        kind =
                          std.contract.Sequence
                              [ std.enum.TagOrString, [| 'cargopackage |] ],
                        name = String,
                        scmid = String,
                        sourceid = String,
                        spec =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      package = String,
                                      registry =
                                        js2n.record.Record
                                            {
                                              additional = 'None,
                                              patterns = {},
                                              properties =
                                                {
                                                    auth =
                                                      js2n.record.Record
                                                          {
                                                            additional = 'None,
                                                            patterns = {},
                                                            properties =
                                                              {
                                                                  headerformat =
                                                                    String,
                                                                  token =
                                                                    String,
                                                                },
                                                            required = {},
                                                          },
                                                    rootdir = String,
                                                    scmid = String,
                                                    url = String,
                                                  },
                                              required = {},
                                            },
                                      version = String,
                                      versionfilter =
                                        js2n.record.Record
                                            {
                                              additional = 'None,
                                              patterns = {},
                                              properties =
                                                {
                                                    kind = String,
                                                    pattern = String,
                                                    regex = String,
                                                    strict = Bool,
                                                  },
                                              required = {},
                                            },
                                    },
                                required = { package = true, },
                              },
                        transformers =
                          js2n.array.ArrayOf
                              (js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        addprefix = String,
                                        addsuffix = String,
                                        find = String,
                                        findsubmatch =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      captureindex =
                                                        std.number.Integer,
                                                      pattern = String,
                                                    },
                                                required = { pattern = true, },
                                              },
                                        quote = Bool,
                                        replacer =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      from = String,
                                                      to = String,
                                                    },
                                                required =
                                                  { from = true, to = true, },
                                              },
                                        replacers =
                                          js2n.array.ArrayOf
                                              (js2n.record.Record
                                                {
                                                  additional = 'None,
                                                  patterns = {},
                                                  properties =
                                                    {
                                                        from = String,
                                                        to = String,
                                                      },
                                                  required =
                                                    { from = true, to = true, },
                                                }),
                                        semverinc = String,
                                        trimprefix = String,
                                        trimsuffix = String,
                                        unquote = Bool,
                                      },
                                  required = {},
                                }),
                      },
                  required = { kind = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        dependson = js2n.array.ArrayOf String,
                        disablesourceinput = Bool,
                        failwhen = Bool,
                        kind =
                          std.contract.Sequence
                              [ std.enum.TagOrString, [| 'csv |] ],
                        name = String,
                        scmid = String,
                        sourceid = String,
                        spec =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      comma = std.number.Integer,
                                      comment = std.number.Integer,
                                      file = String,
                                      files = js2n.array.ArrayOf String,
                                      key = String,
                                      query = String,
                                      value = String,
                                      versionfilter =
                                        js2n.record.Record
                                            {
                                              additional = 'None,
                                              patterns = {},
                                              properties =
                                                {
                                                    kind = String,
                                                    pattern = String,
                                                    regex = String,
                                                    strict = Bool,
                                                  },
                                              required = {},
                                            },
                                    },
                                required = {},
                              },
                        transformers =
                          js2n.array.ArrayOf
                              (js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        addprefix = String,
                                        addsuffix = String,
                                        find = String,
                                        findsubmatch =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      captureindex =
                                                        std.number.Integer,
                                                      pattern = String,
                                                    },
                                                required = { pattern = true, },
                                              },
                                        quote = Bool,
                                        replacer =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      from = String,
                                                      to = String,
                                                    },
                                                required =
                                                  { from = true, to = true, },
                                              },
                                        replacers =
                                          js2n.array.ArrayOf
                                              (js2n.record.Record
                                                {
                                                  additional = 'None,
                                                  patterns = {},
                                                  properties =
                                                    {
                                                        from = String,
                                                        to = String,
                                                      },
                                                  required =
                                                    { from = true, to = true, },
                                                }),
                                        semverinc = String,
                                        trimprefix = String,
                                        trimsuffix = String,
                                        unquote = Bool,
                                      },
                                  required = {},
                                }),
                      },
                  required = { kind = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        dependson = js2n.array.ArrayOf String,
                        disablesourceinput = Bool,
                        failwhen = Bool,
                        kind =
                          std.contract.Sequence
                              [ std.enum.TagOrString, [| 'dockerdigest |] ],
                        name = String,
                        scmid = String,
                        sourceid = String,
                        spec =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      architecture = String,
                                      digest = String,
                                      hidetag = Bool,
                                      image = String,
                                      password = String,
                                      tag = String,
                                      token = String,
                                      username = String,
                                    },
                                required = {},
                              },
                        transformers =
                          js2n.array.ArrayOf
                              (js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        addprefix = String,
                                        addsuffix = String,
                                        find = String,
                                        findsubmatch =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      captureindex =
                                                        std.number.Integer,
                                                      pattern = String,
                                                    },
                                                required = { pattern = true, },
                                              },
                                        quote = Bool,
                                        replacer =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      from = String,
                                                      to = String,
                                                    },
                                                required =
                                                  { from = true, to = true, },
                                              },
                                        replacers =
                                          js2n.array.ArrayOf
                                              (js2n.record.Record
                                                {
                                                  additional = 'None,
                                                  patterns = {},
                                                  properties =
                                                    {
                                                        from = String,
                                                        to = String,
                                                      },
                                                  required =
                                                    { from = true, to = true, },
                                                }),
                                        semverinc = String,
                                        trimprefix = String,
                                        trimsuffix = String,
                                        unquote = Bool,
                                      },
                                  required = {},
                                }),
                      },
                  required = { kind = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        dependson = js2n.array.ArrayOf String,
                        disablesourceinput = Bool,
                        failwhen = Bool,
                        kind =
                          std.contract.Sequence
                              [ std.enum.TagOrString, [| 'dockerfile |] ],
                        name = String,
                        scmid = String,
                        sourceid = String,
                        spec =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      file = String,
                                      files = js2n.array.ArrayOf String,
                                      instruction =
                                        std.contract.any_of
                                            [
                                              js2n.Null,
                                              Bool,
                                              Number,
                                              String,
                                              { _ | Dyn },
                                              Array Dyn
                                            ],
                                      stage = String,
                                      value = String,
                                    },
                                required = {},
                              },
                        transformers =
                          js2n.array.ArrayOf
                              (js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        addprefix = String,
                                        addsuffix = String,
                                        find = String,
                                        findsubmatch =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      captureindex =
                                                        std.number.Integer,
                                                      pattern = String,
                                                    },
                                                required = { pattern = true, },
                                              },
                                        quote = Bool,
                                        replacer =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      from = String,
                                                      to = String,
                                                    },
                                                required =
                                                  { from = true, to = true, },
                                              },
                                        replacers =
                                          js2n.array.ArrayOf
                                              (js2n.record.Record
                                                {
                                                  additional = 'None,
                                                  patterns = {},
                                                  properties =
                                                    {
                                                        from = String,
                                                        to = String,
                                                      },
                                                  required =
                                                    { from = true, to = true, },
                                                }),
                                        semverinc = String,
                                        trimprefix = String,
                                        trimsuffix = String,
                                        unquote = Bool,
                                      },
                                  required = {},
                                }),
                      },
                  required = { kind = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        dependson = js2n.array.ArrayOf String,
                        disablesourceinput = Bool,
                        failwhen = Bool,
                        kind =
                          std.contract.Sequence
                              [ std.enum.TagOrString, [| 'dockerimage |] ],
                        name = String,
                        scmid = String,
                        sourceid = String,
                        spec =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      architecture = String,
                                      architectures = js2n.array.ArrayOf String,
                                      image = String,
                                      password = String,
                                      tag = String,
                                      tagfilter = String,
                                      token = String,
                                      username = String,
                                      versionfilter =
                                        js2n.record.Record
                                            {
                                              additional = 'None,
                                              patterns = {},
                                              properties =
                                                {
                                                    kind = String,
                                                    pattern = String,
                                                    regex = String,
                                                    strict = Bool,
                                                  },
                                              required = {},
                                            },
                                    },
                                required = {},
                              },
                        transformers =
                          js2n.array.ArrayOf
                              (js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        addprefix = String,
                                        addsuffix = String,
                                        find = String,
                                        findsubmatch =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      captureindex =
                                                        std.number.Integer,
                                                      pattern = String,
                                                    },
                                                required = { pattern = true, },
                                              },
                                        quote = Bool,
                                        replacer =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      from = String,
                                                      to = String,
                                                    },
                                                required =
                                                  { from = true, to = true, },
                                              },
                                        replacers =
                                          js2n.array.ArrayOf
                                              (js2n.record.Record
                                                {
                                                  additional = 'None,
                                                  patterns = {},
                                                  properties =
                                                    {
                                                        from = String,
                                                        to = String,
                                                      },
                                                  required =
                                                    { from = true, to = true, },
                                                }),
                                        semverinc = String,
                                        trimprefix = String,
                                        trimsuffix = String,
                                        unquote = Bool,
                                      },
                                  required = {},
                                }),
                      },
                  required = { kind = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        dependson = js2n.array.ArrayOf String,
                        disablesourceinput = Bool,
                        failwhen = Bool,
                        kind =
                          std.contract.Sequence
                              [ std.enum.TagOrString, [| 'file |] ],
                        name = String,
                        scmid = String,
                        sourceid = String,
                        spec =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      content = String,
                                      file = String,
                                      files = js2n.array.ArrayOf String,
                                      forcecreate = Bool,
                                      line = std.number.Integer,
                                      matchpattern = String,
                                      replacepattern = String,
                                      searchpattern = Bool,
                                    },
                                required = {},
                              },
                        transformers =
                          js2n.array.ArrayOf
                              (js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        addprefix = String,
                                        addsuffix = String,
                                        find = String,
                                        findsubmatch =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      captureindex =
                                                        std.number.Integer,
                                                      pattern = String,
                                                    },
                                                required = { pattern = true, },
                                              },
                                        quote = Bool,
                                        replacer =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      from = String,
                                                      to = String,
                                                    },
                                                required =
                                                  { from = true, to = true, },
                                              },
                                        replacers =
                                          js2n.array.ArrayOf
                                              (js2n.record.Record
                                                {
                                                  additional = 'None,
                                                  patterns = {},
                                                  properties =
                                                    {
                                                        from = String,
                                                        to = String,
                                                      },
                                                  required =
                                                    { from = true, to = true, },
                                                }),
                                        semverinc = String,
                                        trimprefix = String,
                                        trimsuffix = String,
                                        unquote = Bool,
                                      },
                                  required = {},
                                }),
                      },
                  required = { kind = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        dependson = js2n.array.ArrayOf String,
                        disablesourceinput = Bool,
                        failwhen = Bool,
                        kind =
                          std.contract.Sequence
                              [ std.enum.TagOrString, [| 'gitbranch |] ],
                        name = String,
                        scmid = String,
                        sourceid = String,
                        spec =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      branch = String,
                                      key = String,
                                      password = String,
                                      path = String,
                                      sourcebranch = String,
                                      url = String,
                                      username = String,
                                      versionfilter =
                                        js2n.record.Record
                                            {
                                              additional = 'None,
                                              patterns = {},
                                              properties =
                                                {
                                                    kind = String,
                                                    pattern = String,
                                                    regex = String,
                                                    strict = Bool,
                                                  },
                                              required = {},
                                            },
                                    },
                                required = { url = true, },
                              },
                        transformers =
                          js2n.array.ArrayOf
                              (js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        addprefix = String,
                                        addsuffix = String,
                                        find = String,
                                        findsubmatch =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      captureindex =
                                                        std.number.Integer,
                                                      pattern = String,
                                                    },
                                                required = { pattern = true, },
                                              },
                                        quote = Bool,
                                        replacer =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      from = String,
                                                      to = String,
                                                    },
                                                required =
                                                  { from = true, to = true, },
                                              },
                                        replacers =
                                          js2n.array.ArrayOf
                                              (js2n.record.Record
                                                {
                                                  additional = 'None,
                                                  patterns = {},
                                                  properties =
                                                    {
                                                        from = String,
                                                        to = String,
                                                      },
                                                  required =
                                                    { from = true, to = true, },
                                                }),
                                        semverinc = String,
                                        trimprefix = String,
                                        trimsuffix = String,
                                        unquote = Bool,
                                      },
                                  required = {},
                                }),
                      },
                  required = { kind = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        dependson = js2n.array.ArrayOf String,
                        disablesourceinput = Bool,
                        failwhen = Bool,
                        kind =
                          std.contract.Sequence
                              [ std.enum.TagOrString, [| '"gitea/branch" |] ],
                        name = String,
                        scmid = String,
                        sourceid = String,
                        spec =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      branch = String,
                                      owner = String,
                                      repository = String,
                                      token = String,
                                      url = String,
                                      username = String,
                                      versionfilter =
                                        js2n.record.Record
                                            {
                                              additional = 'None,
                                              patterns = {},
                                              properties =
                                                {
                                                    kind = String,
                                                    pattern = String,
                                                    regex = String,
                                                    strict = Bool,
                                                  },
                                              required = {},
                                            },
                                    },
                                required =
                                  {
                                      owner = true,
                                      repository = true,
                                      url = true,
                                    },
                              },
                        transformers =
                          js2n.array.ArrayOf
                              (js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        addprefix = String,
                                        addsuffix = String,
                                        find = String,
                                        findsubmatch =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      captureindex =
                                                        std.number.Integer,
                                                      pattern = String,
                                                    },
                                                required = { pattern = true, },
                                              },
                                        quote = Bool,
                                        replacer =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      from = String,
                                                      to = String,
                                                    },
                                                required =
                                                  { from = true, to = true, },
                                              },
                                        replacers =
                                          js2n.array.ArrayOf
                                              (js2n.record.Record
                                                {
                                                  additional = 'None,
                                                  patterns = {},
                                                  properties =
                                                    {
                                                        from = String,
                                                        to = String,
                                                      },
                                                  required =
                                                    { from = true, to = true, },
                                                }),
                                        semverinc = String,
                                        trimprefix = String,
                                        trimsuffix = String,
                                        unquote = Bool,
                                      },
                                  required = {},
                                }),
                      },
                  required = { kind = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        dependson = js2n.array.ArrayOf String,
                        disablesourceinput = Bool,
                        failwhen = Bool,
                        kind =
                          std.contract.Sequence
                              [ std.enum.TagOrString, [| '"gitea/release" |] ],
                        name = String,
                        scmid = String,
                        sourceid = String,
                        spec =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      commitish = String,
                                      description = String,
                                      draft = Bool,
                                      owner = String,
                                      prerelease = Bool,
                                      repository = String,
                                      tag = String,
                                      title = String,
                                      token = String,
                                      url = String,
                                      username = String,
                                      versionfilter =
                                        js2n.record.Record
                                            {
                                              additional = 'None,
                                              patterns = {},
                                              properties =
                                                {
                                                    kind = String,
                                                    pattern = String,
                                                    regex = String,
                                                    strict = Bool,
                                                  },
                                              required = {},
                                            },
                                    },
                                required =
                                  {
                                      owner = true,
                                      repository = true,
                                      url = true,
                                    },
                              },
                        transformers =
                          js2n.array.ArrayOf
                              (js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        addprefix = String,
                                        addsuffix = String,
                                        find = String,
                                        findsubmatch =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      captureindex =
                                                        std.number.Integer,
                                                      pattern = String,
                                                    },
                                                required = { pattern = true, },
                                              },
                                        quote = Bool,
                                        replacer =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      from = String,
                                                      to = String,
                                                    },
                                                required =
                                                  { from = true, to = true, },
                                              },
                                        replacers =
                                          js2n.array.ArrayOf
                                              (js2n.record.Record
                                                {
                                                  additional = 'None,
                                                  patterns = {},
                                                  properties =
                                                    {
                                                        from = String,
                                                        to = String,
                                                      },
                                                  required =
                                                    { from = true, to = true, },
                                                }),
                                        semverinc = String,
                                        trimprefix = String,
                                        trimsuffix = String,
                                        unquote = Bool,
                                      },
                                  required = {},
                                }),
                      },
                  required = { kind = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        dependson = js2n.array.ArrayOf String,
                        disablesourceinput = Bool,
                        failwhen = Bool,
                        kind =
                          std.contract.Sequence
                              [ std.enum.TagOrString, [| '"gitea/tag" |] ],
                        name = String,
                        scmid = String,
                        sourceid = String,
                        spec =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      owner = String,
                                      repository = String,
                                      tag = String,
                                      token = String,
                                      url = String,
                                      username = String,
                                      versionfilter =
                                        js2n.record.Record
                                            {
                                              additional = 'None,
                                              patterns = {},
                                              properties =
                                                {
                                                    kind = String,
                                                    pattern = String,
                                                    regex = String,
                                                    strict = Bool,
                                                  },
                                              required = {},
                                            },
                                    },
                                required =
                                  {
                                      owner = true,
                                      repository = true,
                                      url = true,
                                    },
                              },
                        transformers =
                          js2n.array.ArrayOf
                              (js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        addprefix = String,
                                        addsuffix = String,
                                        find = String,
                                        findsubmatch =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      captureindex =
                                                        std.number.Integer,
                                                      pattern = String,
                                                    },
                                                required = { pattern = true, },
                                              },
                                        quote = Bool,
                                        replacer =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      from = String,
                                                      to = String,
                                                    },
                                                required =
                                                  { from = true, to = true, },
                                              },
                                        replacers =
                                          js2n.array.ArrayOf
                                              (js2n.record.Record
                                                {
                                                  additional = 'None,
                                                  patterns = {},
                                                  properties =
                                                    {
                                                        from = String,
                                                        to = String,
                                                      },
                                                  required =
                                                    { from = true, to = true, },
                                                }),
                                        semverinc = String,
                                        trimprefix = String,
                                        trimsuffix = String,
                                        unquote = Bool,
                                      },
                                  required = {},
                                }),
                      },
                  required = { kind = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        dependson = js2n.array.ArrayOf String,
                        disablesourceinput = Bool,
                        failwhen = Bool,
                        kind =
                          std.contract.Sequence
                              [ std.enum.TagOrString, [| 'githubrelease |] ],
                        name = String,
                        scmid = String,
                        sourceid = String,
                        spec =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      key = String,
                                      owner = String,
                                      repository = String,
                                      tag = String,
                                      token = String,
                                      typefilter =
                                        js2n.record.Record
                                            {
                                              additional = 'None,
                                              patterns = {},
                                              properties =
                                                {
                                                    draft = Bool,
                                                    latest = Bool,
                                                    prerelease = Bool,
                                                    release = Bool,
                                                  },
                                              required = {},
                                            },
                                      url = String,
                                      username = String,
                                      versionfilter =
                                        js2n.record.Record
                                            {
                                              additional = 'None,
                                              patterns = {},
                                              properties =
                                                {
                                                    kind = String,
                                                    pattern = String,
                                                    regex = String,
                                                    strict = Bool,
                                                  },
                                              required = {},
                                            },
                                    },
                                required =
                                  {
                                      owner = true,
                                      repository = true,
                                      token = true,
                                    },
                              },
                        transformers =
                          js2n.array.ArrayOf
                              (js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        addprefix = String,
                                        addsuffix = String,
                                        find = String,
                                        findsubmatch =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      captureindex =
                                                        std.number.Integer,
                                                      pattern = String,
                                                    },
                                                required = { pattern = true, },
                                              },
                                        quote = Bool,
                                        replacer =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      from = String,
                                                      to = String,
                                                    },
                                                required =
                                                  { from = true, to = true, },
                                              },
                                        replacers =
                                          js2n.array.ArrayOf
                                              (js2n.record.Record
                                                {
                                                  additional = 'None,
                                                  patterns = {},
                                                  properties =
                                                    {
                                                        from = String,
                                                        to = String,
                                                      },
                                                  required =
                                                    { from = true, to = true, },
                                                }),
                                        semverinc = String,
                                        trimprefix = String,
                                        trimsuffix = String,
                                        unquote = Bool,
                                      },
                                  required = {},
                                }),
                      },
                  required = { kind = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        dependson = js2n.array.ArrayOf String,
                        disablesourceinput = Bool,
                        failwhen = Bool,
                        kind =
                          std.contract.Sequence
                              [ std.enum.TagOrString, [| '"gitlab/branch" |] ],
                        name = String,
                        scmid = String,
                        sourceid = String,
                        spec =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      branch = String,
                                      owner = String,
                                      repository = String,
                                      token = String,
                                      tokentype = String,
                                      url = String,
                                      username = String,
                                      versionfilter =
                                        js2n.record.Record
                                            {
                                              additional = 'None,
                                              patterns = {},
                                              properties =
                                                {
                                                    kind = String,
                                                    pattern = String,
                                                    regex = String,
                                                    strict = Bool,
                                                  },
                                              required = {},
                                            },
                                    },
                                required = { owner = true, repository = true, },
                              },
                        transformers =
                          js2n.array.ArrayOf
                              (js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        addprefix = String,
                                        addsuffix = String,
                                        find = String,
                                        findsubmatch =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      captureindex =
                                                        std.number.Integer,
                                                      pattern = String,
                                                    },
                                                required = { pattern = true, },
                                              },
                                        quote = Bool,
                                        replacer =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      from = String,
                                                      to = String,
                                                    },
                                                required =
                                                  { from = true, to = true, },
                                              },
                                        replacers =
                                          js2n.array.ArrayOf
                                              (js2n.record.Record
                                                {
                                                  additional = 'None,
                                                  patterns = {},
                                                  properties =
                                                    {
                                                        from = String,
                                                        to = String,
                                                      },
                                                  required =
                                                    { from = true, to = true, },
                                                }),
                                        semverinc = String,
                                        trimprefix = String,
                                        trimsuffix = String,
                                        unquote = Bool,
                                      },
                                  required = {},
                                }),
                      },
                  required = { kind = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        dependson = js2n.array.ArrayOf String,
                        disablesourceinput = Bool,
                        failwhen = Bool,
                        kind =
                          std.contract.Sequence
                              [ std.enum.TagOrString, [| '"gitlab/release" |] ],
                        name = String,
                        scmid = String,
                        sourceid = String,
                        spec =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      commitish = String,
                                      description = String,
                                      draft = Bool,
                                      owner = String,
                                      prerelease = Bool,
                                      repository = String,
                                      tag = String,
                                      title = String,
                                      token = String,
                                      tokentype = String,
                                      url = String,
                                      username = String,
                                      versionfilter =
                                        js2n.record.Record
                                            {
                                              additional = 'None,
                                              patterns = {},
                                              properties =
                                                {
                                                    kind = String,
                                                    pattern = String,
                                                    regex = String,
                                                    strict = Bool,
                                                  },
                                              required = {},
                                            },
                                    },
                                required = { owner = true, repository = true, },
                              },
                        transformers =
                          js2n.array.ArrayOf
                              (js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        addprefix = String,
                                        addsuffix = String,
                                        find = String,
                                        findsubmatch =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      captureindex =
                                                        std.number.Integer,
                                                      pattern = String,
                                                    },
                                                required = { pattern = true, },
                                              },
                                        quote = Bool,
                                        replacer =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      from = String,
                                                      to = String,
                                                    },
                                                required =
                                                  { from = true, to = true, },
                                              },
                                        replacers =
                                          js2n.array.ArrayOf
                                              (js2n.record.Record
                                                {
                                                  additional = 'None,
                                                  patterns = {},
                                                  properties =
                                                    {
                                                        from = String,
                                                        to = String,
                                                      },
                                                  required =
                                                    { from = true, to = true, },
                                                }),
                                        semverinc = String,
                                        trimprefix = String,
                                        trimsuffix = String,
                                        unquote = Bool,
                                      },
                                  required = {},
                                }),
                      },
                  required = { kind = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        dependson = js2n.array.ArrayOf String,
                        disablesourceinput = Bool,
                        failwhen = Bool,
                        kind =
                          std.contract.Sequence
                              [ std.enum.TagOrString, [| '"gitlab/tag" |] ],
                        name = String,
                        scmid = String,
                        sourceid = String,
                        spec =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      owner = String,
                                      repository = String,
                                      tag = String,
                                      token = String,
                                      tokentype = String,
                                      url = String,
                                      username = String,
                                      versionfilter =
                                        js2n.record.Record
                                            {
                                              additional = 'None,
                                              patterns = {},
                                              properties =
                                                {
                                                    kind = String,
                                                    pattern = String,
                                                    regex = String,
                                                    strict = Bool,
                                                  },
                                              required = {},
                                            },
                                    },
                                required = { owner = true, repository = true, },
                              },
                        transformers =
                          js2n.array.ArrayOf
                              (js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        addprefix = String,
                                        addsuffix = String,
                                        find = String,
                                        findsubmatch =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      captureindex =
                                                        std.number.Integer,
                                                      pattern = String,
                                                    },
                                                required = { pattern = true, },
                                              },
                                        quote = Bool,
                                        replacer =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      from = String,
                                                      to = String,
                                                    },
                                                required =
                                                  { from = true, to = true, },
                                              },
                                        replacers =
                                          js2n.array.ArrayOf
                                              (js2n.record.Record
                                                {
                                                  additional = 'None,
                                                  patterns = {},
                                                  properties =
                                                    {
                                                        from = String,
                                                        to = String,
                                                      },
                                                  required =
                                                    { from = true, to = true, },
                                                }),
                                        semverinc = String,
                                        trimprefix = String,
                                        trimsuffix = String,
                                        unquote = Bool,
                                      },
                                  required = {},
                                }),
                      },
                  required = { kind = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        dependson = js2n.array.ArrayOf String,
                        disablesourceinput = Bool,
                        failwhen = Bool,
                        kind =
                          std.contract.Sequence
                              [ std.enum.TagOrString, [| 'gittag |] ],
                        name = String,
                        scmid = String,
                        sourceid = String,
                        spec =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      key = String,
                                      message = String,
                                      password = String,
                                      path = String,
                                      sourcebranch = String,
                                      url = String,
                                      username = String,
                                      versionfilter =
                                        js2n.record.Record
                                            {
                                              additional = 'None,
                                              patterns = {},
                                              properties =
                                                {
                                                    kind = String,
                                                    pattern = String,
                                                    regex = String,
                                                    strict = Bool,
                                                  },
                                              required = {},
                                            },
                                    },
                                required = { url = true, },
                              },
                        transformers =
                          js2n.array.ArrayOf
                              (js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        addprefix = String,
                                        addsuffix = String,
                                        find = String,
                                        findsubmatch =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      captureindex =
                                                        std.number.Integer,
                                                      pattern = String,
                                                    },
                                                required = { pattern = true, },
                                              },
                                        quote = Bool,
                                        replacer =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      from = String,
                                                      to = String,
                                                    },
                                                required =
                                                  { from = true, to = true, },
                                              },
                                        replacers =
                                          js2n.array.ArrayOf
                                              (js2n.record.Record
                                                {
                                                  additional = 'None,
                                                  patterns = {},
                                                  properties =
                                                    {
                                                        from = String,
                                                        to = String,
                                                      },
                                                  required =
                                                    { from = true, to = true, },
                                                }),
                                        semverinc = String,
                                        trimprefix = String,
                                        trimsuffix = String,
                                        unquote = Bool,
                                      },
                                  required = {},
                                }),
                      },
                  required = { kind = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        dependson = js2n.array.ArrayOf String,
                        disablesourceinput = Bool,
                        failwhen = Bool,
                        kind =
                          std.contract.Sequence
                              [ std.enum.TagOrString, [| 'golang |] ],
                        name = String,
                        scmid = String,
                        sourceid = String,
                        spec =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      version = String,
                                      versionfilter =
                                        js2n.record.Record
                                            {
                                              additional = 'None,
                                              patterns = {},
                                              properties =
                                                {
                                                    kind = String,
                                                    pattern = String,
                                                    regex = String,
                                                    strict = Bool,
                                                  },
                                              required = {},
                                            },
                                    },
                                required = {},
                              },
                        transformers =
                          js2n.array.ArrayOf
                              (js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        addprefix = String,
                                        addsuffix = String,
                                        find = String,
                                        findsubmatch =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      captureindex =
                                                        std.number.Integer,
                                                      pattern = String,
                                                    },
                                                required = { pattern = true, },
                                              },
                                        quote = Bool,
                                        replacer =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      from = String,
                                                      to = String,
                                                    },
                                                required =
                                                  { from = true, to = true, },
                                              },
                                        replacers =
                                          js2n.array.ArrayOf
                                              (js2n.record.Record
                                                {
                                                  additional = 'None,
                                                  patterns = {},
                                                  properties =
                                                    {
                                                        from = String,
                                                        to = String,
                                                      },
                                                  required =
                                                    { from = true, to = true, },
                                                }),
                                        semverinc = String,
                                        trimprefix = String,
                                        trimsuffix = String,
                                        unquote = Bool,
                                      },
                                  required = {},
                                }),
                      },
                  required = { kind = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        dependson = js2n.array.ArrayOf String,
                        disablesourceinput = Bool,
                        failwhen = Bool,
                        kind =
                          std.contract.Sequence
                              [ std.enum.TagOrString, [| '"golang/gomod" |] ],
                        name = String,
                        scmid = String,
                        sourceid = String,
                        spec =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      file = String,
                                      indirect = Bool,
                                      module = String,
                                      version = String,
                                    },
                                required = {},
                              },
                        transformers =
                          js2n.array.ArrayOf
                              (js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        addprefix = String,
                                        addsuffix = String,
                                        find = String,
                                        findsubmatch =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      captureindex =
                                                        std.number.Integer,
                                                      pattern = String,
                                                    },
                                                required = { pattern = true, },
                                              },
                                        quote = Bool,
                                        replacer =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      from = String,
                                                      to = String,
                                                    },
                                                required =
                                                  { from = true, to = true, },
                                              },
                                        replacers =
                                          js2n.array.ArrayOf
                                              (js2n.record.Record
                                                {
                                                  additional = 'None,
                                                  patterns = {},
                                                  properties =
                                                    {
                                                        from = String,
                                                        to = String,
                                                      },
                                                  required =
                                                    { from = true, to = true, },
                                                }),
                                        semverinc = String,
                                        trimprefix = String,
                                        trimsuffix = String,
                                        unquote = Bool,
                                      },
                                  required = {},
                                }),
                      },
                  required = { kind = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        dependson = js2n.array.ArrayOf String,
                        disablesourceinput = Bool,
                        failwhen = Bool,
                        kind =
                          std.contract.Sequence
                              [ std.enum.TagOrString, [| '"golang/module" |] ],
                        name = String,
                        scmid = String,
                        sourceid = String,
                        spec =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      module = String,
                                      proxy = String,
                                      version = String,
                                      versionfilter =
                                        js2n.record.Record
                                            {
                                              additional = 'None,
                                              patterns = {},
                                              properties =
                                                {
                                                    kind = String,
                                                    pattern = String,
                                                    regex = String,
                                                    strict = Bool,
                                                  },
                                              required = {},
                                            },
                                    },
                                required = { module = true, },
                              },
                        transformers =
                          js2n.array.ArrayOf
                              (js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        addprefix = String,
                                        addsuffix = String,
                                        find = String,
                                        findsubmatch =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      captureindex =
                                                        std.number.Integer,
                                                      pattern = String,
                                                    },
                                                required = { pattern = true, },
                                              },
                                        quote = Bool,
                                        replacer =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      from = String,
                                                      to = String,
                                                    },
                                                required =
                                                  { from = true, to = true, },
                                              },
                                        replacers =
                                          js2n.array.ArrayOf
                                              (js2n.record.Record
                                                {
                                                  additional = 'None,
                                                  patterns = {},
                                                  properties =
                                                    {
                                                        from = String,
                                                        to = String,
                                                      },
                                                  required =
                                                    { from = true, to = true, },
                                                }),
                                        semverinc = String,
                                        trimprefix = String,
                                        trimsuffix = String,
                                        unquote = Bool,
                                      },
                                  required = {},
                                }),
                      },
                  required = { kind = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        dependson = js2n.array.ArrayOf String,
                        disablesourceinput = Bool,
                        failwhen = Bool,
                        kind =
                          std.contract.Sequence
                              [ std.enum.TagOrString, [| 'hcl |] ],
                        name = String,
                        scmid = String,
                        sourceid = String,
                        spec =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      file = String,
                                      files = js2n.array.ArrayOf String,
                                      path = String,
                                      value = String,
                                    },
                                required = {},
                              },
                        transformers =
                          js2n.array.ArrayOf
                              (js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        addprefix = String,
                                        addsuffix = String,
                                        find = String,
                                        findsubmatch =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      captureindex =
                                                        std.number.Integer,
                                                      pattern = String,
                                                    },
                                                required = { pattern = true, },
                                              },
                                        quote = Bool,
                                        replacer =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      from = String,
                                                      to = String,
                                                    },
                                                required =
                                                  { from = true, to = true, },
                                              },
                                        replacers =
                                          js2n.array.ArrayOf
                                              (js2n.record.Record
                                                {
                                                  additional = 'None,
                                                  patterns = {},
                                                  properties =
                                                    {
                                                        from = String,
                                                        to = String,
                                                      },
                                                  required =
                                                    { from = true, to = true, },
                                                }),
                                        semverinc = String,
                                        trimprefix = String,
                                        trimsuffix = String,
                                        unquote = Bool,
                                      },
                                  required = {},
                                }),
                      },
                  required = { kind = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        dependson = js2n.array.ArrayOf String,
                        disablesourceinput = Bool,
                        failwhen = Bool,
                        kind =
                          std.contract.Sequence
                              [ std.enum.TagOrString, [| 'helmchart |] ],
                        name = String,
                        scmid = String,
                        sourceid = String,
                        spec =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      appversion = Bool,
                                      file = String,
                                      key = String,
                                      name = String,
                                      password = String,
                                      skippackaging = Bool,
                                      token = String,
                                      url = String,
                                      username = String,
                                      value = String,
                                      version = String,
                                      versionfilter =
                                        js2n.record.Record
                                            {
                                              additional = 'None,
                                              patterns = {},
                                              properties =
                                                {
                                                    kind = String,
                                                    pattern = String,
                                                    regex = String,
                                                    strict = Bool,
                                                  },
                                              required = {},
                                            },
                                      versionincrement = String,
                                    },
                                required = {},
                              },
                        transformers =
                          js2n.array.ArrayOf
                              (js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        addprefix = String,
                                        addsuffix = String,
                                        find = String,
                                        findsubmatch =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      captureindex =
                                                        std.number.Integer,
                                                      pattern = String,
                                                    },
                                                required = { pattern = true, },
                                              },
                                        quote = Bool,
                                        replacer =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      from = String,
                                                      to = String,
                                                    },
                                                required =
                                                  { from = true, to = true, },
                                              },
                                        replacers =
                                          js2n.array.ArrayOf
                                              (js2n.record.Record
                                                {
                                                  additional = 'None,
                                                  patterns = {},
                                                  properties =
                                                    {
                                                        from = String,
                                                        to = String,
                                                      },
                                                  required =
                                                    { from = true, to = true, },
                                                }),
                                        semverinc = String,
                                        trimprefix = String,
                                        trimsuffix = String,
                                        unquote = Bool,
                                      },
                                  required = {},
                                }),
                      },
                  required = { kind = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        dependson = js2n.array.ArrayOf String,
                        disablesourceinput = Bool,
                        failwhen = Bool,
                        kind =
                          std.contract.Sequence
                              [ std.enum.TagOrString, [| 'http |] ],
                        name = String,
                        scmid = String,
                        sourceid = String,
                        spec =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      request =
                                        js2n.record.Record
                                            {
                                              additional = 'None,
                                              patterns = {},
                                              properties =
                                                {
                                                    body = String,
                                                    headers =
                                                      js2n.record.Record
                                                          {
                                                            additional =
                                                              'Some String,
                                                            patterns = {},
                                                            properties = {},
                                                            required = {},
                                                          },
                                                    nofollowredirects = Bool,
                                                    verb = String,
                                                  },
                                              required = {},
                                            },
                                      responseasserts =
                                        js2n.record.Record
                                            {
                                              additional = 'None,
                                              patterns = {},
                                              properties =
                                                {
                                                    headers =
                                                      js2n.record.Record
                                                          {
                                                            additional =
                                                              'Some String,
                                                            patterns = {},
                                                            properties = {},
                                                            required = {},
                                                          },
                                                    statuscode =
                                                      std.number.Integer,
                                                  },
                                              required = {},
                                            },
                                      returnresponseheader = String,
                                      url = String,
                                    },
                                required = {},
                              },
                        transformers =
                          js2n.array.ArrayOf
                              (js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        addprefix = String,
                                        addsuffix = String,
                                        find = String,
                                        findsubmatch =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      captureindex =
                                                        std.number.Integer,
                                                      pattern = String,
                                                    },
                                                required = { pattern = true, },
                                              },
                                        quote = Bool,
                                        replacer =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      from = String,
                                                      to = String,
                                                    },
                                                required =
                                                  { from = true, to = true, },
                                              },
                                        replacers =
                                          js2n.array.ArrayOf
                                              (js2n.record.Record
                                                {
                                                  additional = 'None,
                                                  patterns = {},
                                                  properties =
                                                    {
                                                        from = String,
                                                        to = String,
                                                      },
                                                  required =
                                                    { from = true, to = true, },
                                                }),
                                        semverinc = String,
                                        trimprefix = String,
                                        trimsuffix = String,
                                        unquote = Bool,
                                      },
                                  required = {},
                                }),
                      },
                  required = { kind = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        dependson = js2n.array.ArrayOf String,
                        disablesourceinput = Bool,
                        failwhen = Bool,
                        kind =
                          std.contract.Sequence
                              [ std.enum.TagOrString, [| 'jenkins |] ],
                        name = String,
                        scmid = String,
                        sourceid = String,
                        spec =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  { release = String, version = String, },
                                required = {},
                              },
                        transformers =
                          js2n.array.ArrayOf
                              (js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        addprefix = String,
                                        addsuffix = String,
                                        find = String,
                                        findsubmatch =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      captureindex =
                                                        std.number.Integer,
                                                      pattern = String,
                                                    },
                                                required = { pattern = true, },
                                              },
                                        quote = Bool,
                                        replacer =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      from = String,
                                                      to = String,
                                                    },
                                                required =
                                                  { from = true, to = true, },
                                              },
                                        replacers =
                                          js2n.array.ArrayOf
                                              (js2n.record.Record
                                                {
                                                  additional = 'None,
                                                  patterns = {},
                                                  properties =
                                                    {
                                                        from = String,
                                                        to = String,
                                                      },
                                                  required =
                                                    { from = true, to = true, },
                                                }),
                                        semverinc = String,
                                        trimprefix = String,
                                        trimsuffix = String,
                                        unquote = Bool,
                                      },
                                  required = {},
                                }),
                      },
                  required = { kind = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        dependson = js2n.array.ArrayOf String,
                        disablesourceinput = Bool,
                        failwhen = Bool,
                        kind =
                          std.contract.Sequence
                              [ std.enum.TagOrString, [| 'json |] ],
                        name = String,
                        scmid = String,
                        sourceid = String,
                        spec =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      file = String,
                                      files = js2n.array.ArrayOf String,
                                      key = String,
                                      query = String,
                                      value = String,
                                      versionfilter =
                                        js2n.record.Record
                                            {
                                              additional = 'None,
                                              patterns = {},
                                              properties =
                                                {
                                                    kind = String,
                                                    pattern = String,
                                                    regex = String,
                                                    strict = Bool,
                                                  },
                                              required = {},
                                            },
                                    },
                                required = {},
                              },
                        transformers =
                          js2n.array.ArrayOf
                              (js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        addprefix = String,
                                        addsuffix = String,
                                        find = String,
                                        findsubmatch =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      captureindex =
                                                        std.number.Integer,
                                                      pattern = String,
                                                    },
                                                required = { pattern = true, },
                                              },
                                        quote = Bool,
                                        replacer =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      from = String,
                                                      to = String,
                                                    },
                                                required =
                                                  { from = true, to = true, },
                                              },
                                        replacers =
                                          js2n.array.ArrayOf
                                              (js2n.record.Record
                                                {
                                                  additional = 'None,
                                                  patterns = {},
                                                  properties =
                                                    {
                                                        from = String,
                                                        to = String,
                                                      },
                                                  required =
                                                    { from = true, to = true, },
                                                }),
                                        semverinc = String,
                                        trimprefix = String,
                                        trimsuffix = String,
                                        unquote = Bool,
                                      },
                                  required = {},
                                }),
                      },
                  required = { kind = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        dependson = js2n.array.ArrayOf String,
                        disablesourceinput = Bool,
                        failwhen = Bool,
                        kind =
                          std.contract.Sequence
                              [ std.enum.TagOrString, [| 'maven |] ],
                        name = String,
                        scmid = String,
                        sourceid = String,
                        spec =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      artifactid = String,
                                      groupid = String,
                                      repositories = js2n.array.ArrayOf String,
                                      repository = String,
                                      url = String,
                                      version = String,
                                      versionfilter =
                                        js2n.record.Record
                                            {
                                              additional = 'None,
                                              patterns = {},
                                              properties =
                                                {
                                                    kind = String,
                                                    pattern = String,
                                                    regex = String,
                                                    strict = Bool,
                                                  },
                                              required = {},
                                            },
                                    },
                                required = {},
                              },
                        transformers =
                          js2n.array.ArrayOf
                              (js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        addprefix = String,
                                        addsuffix = String,
                                        find = String,
                                        findsubmatch =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      captureindex =
                                                        std.number.Integer,
                                                      pattern = String,
                                                    },
                                                required = { pattern = true, },
                                              },
                                        quote = Bool,
                                        replacer =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      from = String,
                                                      to = String,
                                                    },
                                                required =
                                                  { from = true, to = true, },
                                              },
                                        replacers =
                                          js2n.array.ArrayOf
                                              (js2n.record.Record
                                                {
                                                  additional = 'None,
                                                  patterns = {},
                                                  properties =
                                                    {
                                                        from = String,
                                                        to = String,
                                                      },
                                                  required =
                                                    { from = true, to = true, },
                                                }),
                                        semverinc = String,
                                        trimprefix = String,
                                        trimsuffix = String,
                                        unquote = Bool,
                                      },
                                  required = {},
                                }),
                      },
                  required = { kind = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        dependson = js2n.array.ArrayOf String,
                        disablesourceinput = Bool,
                        failwhen = Bool,
                        kind =
                          std.contract.Sequence
                              [ std.enum.TagOrString, [| 'npm |] ],
                        name = String,
                        scmid = String,
                        sourceid = String,
                        spec =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      name = String,
                                      npmrcpath = String,
                                      registrytoken = String,
                                      url = String,
                                      version = String,
                                      versionfilter =
                                        js2n.record.Record
                                            {
                                              additional = 'None,
                                              patterns = {},
                                              properties =
                                                {
                                                    kind = String,
                                                    pattern = String,
                                                    regex = String,
                                                    strict = Bool,
                                                  },
                                              required = {},
                                            },
                                    },
                                required = {},
                              },
                        transformers =
                          js2n.array.ArrayOf
                              (js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        addprefix = String,
                                        addsuffix = String,
                                        find = String,
                                        findsubmatch =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      captureindex =
                                                        std.number.Integer,
                                                      pattern = String,
                                                    },
                                                required = { pattern = true, },
                                              },
                                        quote = Bool,
                                        replacer =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      from = String,
                                                      to = String,
                                                    },
                                                required =
                                                  { from = true, to = true, },
                                              },
                                        replacers =
                                          js2n.array.ArrayOf
                                              (js2n.record.Record
                                                {
                                                  additional = 'None,
                                                  patterns = {},
                                                  properties =
                                                    {
                                                        from = String,
                                                        to = String,
                                                      },
                                                  required =
                                                    { from = true, to = true, },
                                                }),
                                        semverinc = String,
                                        trimprefix = String,
                                        trimsuffix = String,
                                        unquote = Bool,
                                      },
                                  required = {},
                                }),
                      },
                  required = { kind = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        dependson = js2n.array.ArrayOf String,
                        disablesourceinput = Bool,
                        failwhen = Bool,
                        kind =
                          std.contract.Sequence
                              [ std.enum.TagOrString, [| 'shell |] ],
                        name = String,
                        scmid = String,
                        sourceid = String,
                        spec =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      changedif =
                                        js2n.OneOf
                                            [
                                              js2n.record.Record
                                                {
                                                  additional = 'None,
                                                  patterns = {},
                                                  properties =
                                                    {
                                                        kind =
                                                          std.contract.Sequence
                                                              [
                                                                std.enum.TagOrString,
                                                                [|
                                                                  '"console/output"
                                                                |]
                                                              ],
                                                        spec = js2n.Always,
                                                      },
                                                  required = {},
                                                },
                                              js2n.record.Record
                                                {
                                                  additional = 'None,
                                                  patterns = {},
                                                  properties =
                                                    {
                                                        kind =
                                                          std.contract.Sequence
                                                              [
                                                                std.enum.TagOrString,
                                                                [| 'exitcode |]
                                                              ],
                                                        spec =
                                                          js2n.record.Record
                                                              {
                                                                additional =
                                                                  'None,
                                                                patterns = {},
                                                                properties =
                                                                  {
                                                                      failure =
                                                                        std.number.Integer,
                                                                      success =
                                                                        std.number.Integer,
                                                                      warning =
                                                                        std.number.Integer,
                                                                    },
                                                                required =
                                                                  {
                                                                      failure =
                                                                        true,
                                                                      success =
                                                                        true,
                                                                      warning =
                                                                        true,
                                                                    },
                                                              },
                                                      },
                                                  required = {},
                                                },
                                              js2n.record.Record
                                                {
                                                  additional = 'None,
                                                  patterns = {},
                                                  properties =
                                                    {
                                                        kind =
                                                          std.contract.Sequence
                                                              [
                                                                std.enum.TagOrString,
                                                                [|
                                                                  '"file/checksum"
                                                                |]
                                                              ],
                                                        spec =
                                                          js2n.record.Record
                                                              {
                                                                additional =
                                                                  'None,
                                                                patterns = {},
                                                                properties =
                                                                  {
                                                                      files =
                                                                        js2n.array.ArrayOf
                                                                            String,
                                                                    },
                                                                required =
                                                                  {
                                                                      files =
                                                                        true,
                                                                    },
                                                              },
                                                      },
                                                  required = {},
                                                }
                                            ],
                                      command = String,
                                      environments =
                                        js2n.array.ArrayOf
                                            (js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      name = String,
                                                      value = String,
                                                    },
                                                required = { name = true, },
                                              }),
                                      shell = String,
                                      workdir = String,
                                    },
                                required = { command = true, },
                              },
                        transformers =
                          js2n.array.ArrayOf
                              (js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        addprefix = String,
                                        addsuffix = String,
                                        find = String,
                                        findsubmatch =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      captureindex =
                                                        std.number.Integer,
                                                      pattern = String,
                                                    },
                                                required = { pattern = true, },
                                              },
                                        quote = Bool,
                                        replacer =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      from = String,
                                                      to = String,
                                                    },
                                                required =
                                                  { from = true, to = true, },
                                              },
                                        replacers =
                                          js2n.array.ArrayOf
                                              (js2n.record.Record
                                                {
                                                  additional = 'None,
                                                  patterns = {},
                                                  properties =
                                                    {
                                                        from = String,
                                                        to = String,
                                                      },
                                                  required =
                                                    { from = true, to = true, },
                                                }),
                                        semverinc = String,
                                        trimprefix = String,
                                        trimsuffix = String,
                                        unquote = Bool,
                                      },
                                  required = {},
                                }),
                      },
                  required = { kind = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        dependson = js2n.array.ArrayOf String,
                        disablesourceinput = Bool,
                        failwhen = Bool,
                        kind =
                          std.contract.Sequence
                              [ std.enum.TagOrString, [| '"stash/branch" |] ],
                        name = String,
                        scmid = String,
                        sourceid = String,
                        spec =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      branch = String,
                                      owner = String,
                                      password = String,
                                      repository = String,
                                      token = String,
                                      url = String,
                                      username = String,
                                      versionfilter =
                                        js2n.record.Record
                                            {
                                              additional = 'None,
                                              patterns = {},
                                              properties =
                                                {
                                                    kind = String,
                                                    pattern = String,
                                                    regex = String,
                                                    strict = Bool,
                                                  },
                                              required = {},
                                            },
                                    },
                                required =
                                  {
                                      owner = true,
                                      repository = true,
                                      url = true,
                                    },
                              },
                        transformers =
                          js2n.array.ArrayOf
                              (js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        addprefix = String,
                                        addsuffix = String,
                                        find = String,
                                        findsubmatch =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      captureindex =
                                                        std.number.Integer,
                                                      pattern = String,
                                                    },
                                                required = { pattern = true, },
                                              },
                                        quote = Bool,
                                        replacer =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      from = String,
                                                      to = String,
                                                    },
                                                required =
                                                  { from = true, to = true, },
                                              },
                                        replacers =
                                          js2n.array.ArrayOf
                                              (js2n.record.Record
                                                {
                                                  additional = 'None,
                                                  patterns = {},
                                                  properties =
                                                    {
                                                        from = String,
                                                        to = String,
                                                      },
                                                  required =
                                                    { from = true, to = true, },
                                                }),
                                        semverinc = String,
                                        trimprefix = String,
                                        trimsuffix = String,
                                        unquote = Bool,
                                      },
                                  required = {},
                                }),
                      },
                  required = { kind = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        dependson = js2n.array.ArrayOf String,
                        disablesourceinput = Bool,
                        failwhen = Bool,
                        kind =
                          std.contract.Sequence
                              [ std.enum.TagOrString, [| '"stash/tag" |] ],
                        name = String,
                        scmid = String,
                        sourceid = String,
                        spec =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      owner = String,
                                      password = String,
                                      repository = String,
                                      tag = String,
                                      token = String,
                                      url = String,
                                      username = String,
                                      versionfilter =
                                        js2n.record.Record
                                            {
                                              additional = 'None,
                                              patterns = {},
                                              properties =
                                                {
                                                    kind = String,
                                                    pattern = String,
                                                    regex = String,
                                                    strict = Bool,
                                                  },
                                              required = {},
                                            },
                                    },
                                required =
                                  {
                                      owner = true,
                                      repository = true,
                                      url = true,
                                    },
                              },
                        transformers =
                          js2n.array.ArrayOf
                              (js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        addprefix = String,
                                        addsuffix = String,
                                        find = String,
                                        findsubmatch =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      captureindex =
                                                        std.number.Integer,
                                                      pattern = String,
                                                    },
                                                required = { pattern = true, },
                                              },
                                        quote = Bool,
                                        replacer =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      from = String,
                                                      to = String,
                                                    },
                                                required =
                                                  { from = true, to = true, },
                                              },
                                        replacers =
                                          js2n.array.ArrayOf
                                              (js2n.record.Record
                                                {
                                                  additional = 'None,
                                                  patterns = {},
                                                  properties =
                                                    {
                                                        from = String,
                                                        to = String,
                                                      },
                                                  required =
                                                    { from = true, to = true, },
                                                }),
                                        semverinc = String,
                                        trimprefix = String,
                                        trimsuffix = String,
                                        unquote = Bool,
                                      },
                                  required = {},
                                }),
                      },
                  required = { kind = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        dependson = js2n.array.ArrayOf String,
                        disablesourceinput = Bool,
                        failwhen = Bool,
                        kind =
                          std.contract.Sequence
                              [ std.enum.TagOrString, [| 'temurin |] ],
                        name = String,
                        scmid = String,
                        sourceid = String,
                        spec =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      architecture = String,
                                      featureversion = std.number.Integer,
                                      imagetype = String,
                                      operatingsystem = String,
                                      platforms = js2n.array.ArrayOf String,
                                      project = String,
                                      releaseline = String,
                                      releasetype = String,
                                      result = String,
                                      specificversion = String,
                                    },
                                required = {},
                              },
                        transformers =
                          js2n.array.ArrayOf
                              (js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        addprefix = String,
                                        addsuffix = String,
                                        find = String,
                                        findsubmatch =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      captureindex =
                                                        std.number.Integer,
                                                      pattern = String,
                                                    },
                                                required = { pattern = true, },
                                              },
                                        quote = Bool,
                                        replacer =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      from = String,
                                                      to = String,
                                                    },
                                                required =
                                                  { from = true, to = true, },
                                              },
                                        replacers =
                                          js2n.array.ArrayOf
                                              (js2n.record.Record
                                                {
                                                  additional = 'None,
                                                  patterns = {},
                                                  properties =
                                                    {
                                                        from = String,
                                                        to = String,
                                                      },
                                                  required =
                                                    { from = true, to = true, },
                                                }),
                                        semverinc = String,
                                        trimprefix = String,
                                        trimsuffix = String,
                                        unquote = Bool,
                                      },
                                  required = {},
                                }),
                      },
                  required = { kind = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        dependson = js2n.array.ArrayOf String,
                        disablesourceinput = Bool,
                        failwhen = Bool,
                        kind =
                          std.contract.Sequence
                              [ std.enum.TagOrString, [| '"terraform/file" |] ],
                        name = String,
                        scmid = String,
                        sourceid = String,
                        spec =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      file = String,
                                      files = js2n.array.ArrayOf String,
                                      path = String,
                                      value = String,
                                    },
                                required = {},
                              },
                        transformers =
                          js2n.array.ArrayOf
                              (js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        addprefix = String,
                                        addsuffix = String,
                                        find = String,
                                        findsubmatch =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      captureindex =
                                                        std.number.Integer,
                                                      pattern = String,
                                                    },
                                                required = { pattern = true, },
                                              },
                                        quote = Bool,
                                        replacer =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      from = String,
                                                      to = String,
                                                    },
                                                required =
                                                  { from = true, to = true, },
                                              },
                                        replacers =
                                          js2n.array.ArrayOf
                                              (js2n.record.Record
                                                {
                                                  additional = 'None,
                                                  patterns = {},
                                                  properties =
                                                    {
                                                        from = String,
                                                        to = String,
                                                      },
                                                  required =
                                                    { from = true, to = true, },
                                                }),
                                        semverinc = String,
                                        trimprefix = String,
                                        trimsuffix = String,
                                        unquote = Bool,
                                      },
                                  required = {},
                                }),
                      },
                  required = { kind = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        dependson = js2n.array.ArrayOf String,
                        disablesourceinput = Bool,
                        failwhen = Bool,
                        kind =
                          std.contract.Sequence
                              [ std.enum.TagOrString, [| '"terraform/lock" |] ],
                        name = String,
                        scmid = String,
                        sourceid = String,
                        spec =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      file = String,
                                      files = js2n.array.ArrayOf String,
                                      platforms = js2n.array.ArrayOf String,
                                      provider = String,
                                      skipconstraints = Bool,
                                      value = String,
                                    },
                                required = {},
                              },
                        transformers =
                          js2n.array.ArrayOf
                              (js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        addprefix = String,
                                        addsuffix = String,
                                        find = String,
                                        findsubmatch =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      captureindex =
                                                        std.number.Integer,
                                                      pattern = String,
                                                    },
                                                required = { pattern = true, },
                                              },
                                        quote = Bool,
                                        replacer =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      from = String,
                                                      to = String,
                                                    },
                                                required =
                                                  { from = true, to = true, },
                                              },
                                        replacers =
                                          js2n.array.ArrayOf
                                              (js2n.record.Record
                                                {
                                                  additional = 'None,
                                                  patterns = {},
                                                  properties =
                                                    {
                                                        from = String,
                                                        to = String,
                                                      },
                                                  required =
                                                    { from = true, to = true, },
                                                }),
                                        semverinc = String,
                                        trimprefix = String,
                                        trimsuffix = String,
                                        unquote = Bool,
                                      },
                                  required = {},
                                }),
                      },
                  required = { kind = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        dependson = js2n.array.ArrayOf String,
                        disablesourceinput = Bool,
                        failwhen = Bool,
                        kind =
                          std.contract.Sequence
                              [
                                std.enum.TagOrString,
                                [| '"terraform/provider" |]
                              ],
                        name = String,
                        scmid = String,
                        sourceid = String,
                        spec =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      file = String,
                                      files = js2n.array.ArrayOf String,
                                      provider = String,
                                      value = String,
                                    },
                                required = {},
                              },
                        transformers =
                          js2n.array.ArrayOf
                              (js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        addprefix = String,
                                        addsuffix = String,
                                        find = String,
                                        findsubmatch =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      captureindex =
                                                        std.number.Integer,
                                                      pattern = String,
                                                    },
                                                required = { pattern = true, },
                                              },
                                        quote = Bool,
                                        replacer =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      from = String,
                                                      to = String,
                                                    },
                                                required =
                                                  { from = true, to = true, },
                                              },
                                        replacers =
                                          js2n.array.ArrayOf
                                              (js2n.record.Record
                                                {
                                                  additional = 'None,
                                                  patterns = {},
                                                  properties =
                                                    {
                                                        from = String,
                                                        to = String,
                                                      },
                                                  required =
                                                    { from = true, to = true, },
                                                }),
                                        semverinc = String,
                                        trimprefix = String,
                                        trimsuffix = String,
                                        unquote = Bool,
                                      },
                                  required = {},
                                }),
                      },
                  required = { kind = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        dependson = js2n.array.ArrayOf String,
                        disablesourceinput = Bool,
                        failwhen = Bool,
                        kind =
                          std.contract.Sequence
                              [
                                std.enum.TagOrString,
                                [| '"terraform/registry" |]
                              ],
                        name = String,
                        scmid = String,
                        sourceid = String,
                        spec =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      hostname = String,
                                      name = String,
                                      namespace = String,
                                      rawstring = String,
                                      targetsystem = String,
                                      type = String,
                                      version = String,
                                      versionfilter =
                                        js2n.record.Record
                                            {
                                              additional = 'None,
                                              patterns = {},
                                              properties =
                                                {
                                                    kind = String,
                                                    pattern = String,
                                                    regex = String,
                                                    strict = Bool,
                                                  },
                                              required = {},
                                            },
                                    },
                                required = {},
                              },
                        transformers =
                          js2n.array.ArrayOf
                              (js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        addprefix = String,
                                        addsuffix = String,
                                        find = String,
                                        findsubmatch =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      captureindex =
                                                        std.number.Integer,
                                                      pattern = String,
                                                    },
                                                required = { pattern = true, },
                                              },
                                        quote = Bool,
                                        replacer =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      from = String,
                                                      to = String,
                                                    },
                                                required =
                                                  { from = true, to = true, },
                                              },
                                        replacers =
                                          js2n.array.ArrayOf
                                              (js2n.record.Record
                                                {
                                                  additional = 'None,
                                                  patterns = {},
                                                  properties =
                                                    {
                                                        from = String,
                                                        to = String,
                                                      },
                                                  required =
                                                    { from = true, to = true, },
                                                }),
                                        semverinc = String,
                                        trimprefix = String,
                                        trimsuffix = String,
                                        unquote = Bool,
                                      },
                                  required = {},
                                }),
                      },
                  required = { kind = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        dependson = js2n.array.ArrayOf String,
                        disablesourceinput = Bool,
                        failwhen = Bool,
                        kind =
                          std.contract.Sequence
                              [ std.enum.TagOrString, [| 'toml |] ],
                        name = String,
                        scmid = String,
                        sourceid = String,
                        spec =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      createmissingkey = Bool,
                                      file = String,
                                      files = js2n.array.ArrayOf String,
                                      key = String,
                                      query = String,
                                      value = String,
                                      versionfilter =
                                        js2n.record.Record
                                            {
                                              additional = 'None,
                                              patterns = {},
                                              properties =
                                                {
                                                    kind = String,
                                                    pattern = String,
                                                    regex = String,
                                                    strict = Bool,
                                                  },
                                              required = {},
                                            },
                                    },
                                required = {},
                              },
                        transformers =
                          js2n.array.ArrayOf
                              (js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        addprefix = String,
                                        addsuffix = String,
                                        find = String,
                                        findsubmatch =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      captureindex =
                                                        std.number.Integer,
                                                      pattern = String,
                                                    },
                                                required = { pattern = true, },
                                              },
                                        quote = Bool,
                                        replacer =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      from = String,
                                                      to = String,
                                                    },
                                                required =
                                                  { from = true, to = true, },
                                              },
                                        replacers =
                                          js2n.array.ArrayOf
                                              (js2n.record.Record
                                                {
                                                  additional = 'None,
                                                  patterns = {},
                                                  properties =
                                                    {
                                                        from = String,
                                                        to = String,
                                                      },
                                                  required =
                                                    { from = true, to = true, },
                                                }),
                                        semverinc = String,
                                        trimprefix = String,
                                        trimsuffix = String,
                                        unquote = Bool,
                                      },
                                  required = {},
                                }),
                      },
                  required = { kind = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        dependson = js2n.array.ArrayOf String,
                        disablesourceinput = Bool,
                        failwhen = Bool,
                        kind =
                          std.contract.Sequence
                              [ std.enum.TagOrString, [| 'toolversions |] ],
                        name = String,
                        scmid = String,
                        sourceid = String,
                        spec =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      createmissingkey = Bool,
                                      file = String,
                                      files = js2n.array.ArrayOf String,
                                      key = String,
                                      value = String,
                                    },
                                required = {},
                              },
                        transformers =
                          js2n.array.ArrayOf
                              (js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        addprefix = String,
                                        addsuffix = String,
                                        find = String,
                                        findsubmatch =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      captureindex =
                                                        std.number.Integer,
                                                      pattern = String,
                                                    },
                                                required = { pattern = true, },
                                              },
                                        quote = Bool,
                                        replacer =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      from = String,
                                                      to = String,
                                                    },
                                                required =
                                                  { from = true, to = true, },
                                              },
                                        replacers =
                                          js2n.array.ArrayOf
                                              (js2n.record.Record
                                                {
                                                  additional = 'None,
                                                  patterns = {},
                                                  properties =
                                                    {
                                                        from = String,
                                                        to = String,
                                                      },
                                                  required =
                                                    { from = true, to = true, },
                                                }),
                                        semverinc = String,
                                        trimprefix = String,
                                        trimsuffix = String,
                                        unquote = Bool,
                                      },
                                  required = {},
                                }),
                      },
                  required = { kind = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        dependson = js2n.array.ArrayOf String,
                        disablesourceinput = Bool,
                        failwhen = Bool,
                        kind =
                          std.contract.Sequence
                              [ std.enum.TagOrString, [| 'xml |] ],
                        name = String,
                        scmid = String,
                        sourceid = String,
                        spec =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      file = String,
                                      path = String,
                                      value = String,
                                    },
                                required = {},
                              },
                        transformers =
                          js2n.array.ArrayOf
                              (js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        addprefix = String,
                                        addsuffix = String,
                                        find = String,
                                        findsubmatch =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      captureindex =
                                                        std.number.Integer,
                                                      pattern = String,
                                                    },
                                                required = { pattern = true, },
                                              },
                                        quote = Bool,
                                        replacer =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      from = String,
                                                      to = String,
                                                    },
                                                required =
                                                  { from = true, to = true, },
                                              },
                                        replacers =
                                          js2n.array.ArrayOf
                                              (js2n.record.Record
                                                {
                                                  additional = 'None,
                                                  patterns = {},
                                                  properties =
                                                    {
                                                        from = String,
                                                        to = String,
                                                      },
                                                  required =
                                                    { from = true, to = true, },
                                                }),
                                        semverinc = String,
                                        trimprefix = String,
                                        trimsuffix = String,
                                        unquote = Bool,
                                      },
                                  required = {},
                                }),
                      },
                  required = { kind = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        dependson = js2n.array.ArrayOf String,
                        disablesourceinput = Bool,
                        failwhen = Bool,
                        kind =
                          std.contract.Sequence
                              [ std.enum.TagOrString, [| 'yaml |] ],
                        name = String,
                        scmid = String,
                        sourceid = String,
                        spec =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      comment = String,
                                      engine = String,
                                      file = String,
                                      files = js2n.array.ArrayOf String,
                                      key = String,
                                      keyonly = Bool,
                                      searchpattern = Bool,
                                      value = String,
                                    },
                                required = {},
                              },
                        transformers =
                          js2n.array.ArrayOf
                              (js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        addprefix = String,
                                        addsuffix = String,
                                        find = String,
                                        findsubmatch =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      captureindex =
                                                        std.number.Integer,
                                                      pattern = String,
                                                    },
                                                required = { pattern = true, },
                                              },
                                        quote = Bool,
                                        replacer =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      from = String,
                                                      to = String,
                                                    },
                                                required =
                                                  { from = true, to = true, },
                                              },
                                        replacers =
                                          js2n.array.ArrayOf
                                              (js2n.record.Record
                                                {
                                                  additional = 'None,
                                                  patterns = {},
                                                  properties =
                                                    {
                                                        from = String,
                                                        to = String,
                                                      },
                                                  required =
                                                    { from = true, to = true, },
                                                }),
                                        semverinc = String,
                                        trimprefix = String,
                                        trimsuffix = String,
                                        unquote = Bool,
                                      },
                                  required = {},
                                }),
                      },
                  required = { kind = true, },
                }
            ]
        }
        | doc m%"
          "conditions" defines the list of Updatecli condition definition.
          
          		example:
          		---
          		conditions:
          			container:
          				name: Check if Updatecli container image for tag "v0.63.0" exists
          				kind: dockerimage
          				spec:
          					image: "updatecli/updatecli:latest"
          					tag: "v0.63.0"
          		---
        "%
        | optional,
      name
        | String
        | doc m%"
          "name" defines a pipeline name
          
          		example:
          			* "name: 'deps: update nodejs version to latest stable'"
          
          		remark:
          			* using a short sentence describing the pipeline is a good way to name your pipeline.
          			* using conventional commits convention is a good way to name your pipeline.
          			* "name" is often used a default values for other configuration such as pullrequest title.
          			* "name" shouldn't contain any dynamic information such as source output.
        "%,
      pipelineid
        | String
        | doc m%"
          "pipelineid" allows to identify a full pipeline run.
          
          		example:
          			* "pipelineid: nodejs/dependencies"
          			* "pipelineid: gomod/github.com/updatecli/updatecli"
          			* "pipelineid: autodiscovery/gomodules/minor"
          
          		remark:
          			* "pipelineid" is used to generate uniq branch name for target update relying on scm configuration.
          			* The same "pipelineid" may be used by different Updatecli manifest" to ensure they are updated in the same workflow including pullrequest.
        "%
        | optional,
      scms
        | {
          _ | js2n.OneOf
            [
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        disabled = Bool,
                        kind =
                          std.contract.Sequence
                              [ std.enum.TagOrString, [| 'bitbucket |] ],
                        spec =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      branch = String,
                                      commitmessage =
                                        js2n.record.Record
                                            {
                                              additional = 'None,
                                              patterns = {},
                                              properties =
                                                {
                                                    body = String,
                                                    footers = String,
                                                    hidecredit = Bool,
                                                    scope = String,
                                                    title = String,
                                                    type = String,
                                                  },
                                              required = {},
                                            },
                                      directory = String,
                                      email = String,
                                      "force" = Bool,
                                      gpg =
                                        js2n.record.Record
                                            {
                                              additional = 'None,
                                              patterns = {},
                                              properties =
                                                {
                                                    passphrase = String,
                                                    signingkey = String,
                                                  },
                                              required = {},
                                            },
                                      owner = String,
                                      password = String,
                                      repository = String,
                                      submodules = Bool,
                                      token = String,
                                      user = String,
                                      username = String,
                                      workingbranch = Bool,
                                    },
                                required = { owner = true, repository = true, },
                              },
                      },
                  required = {},
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        disabled = Bool,
                        kind =
                          std.contract.Sequence
                              [ std.enum.TagOrString, [| 'git |] ],
                        spec =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      branch = String,
                                      commitmessage =
                                        js2n.record.Record
                                            {
                                              additional = 'None,
                                              patterns = {},
                                              properties =
                                                {
                                                    body = String,
                                                    footers = String,
                                                    hidecredit = Bool,
                                                    scope = String,
                                                    title = String,
                                                    type = String,
                                                  },
                                              required = {},
                                            },
                                      directory = String,
                                      email = String,
                                      "force" = Bool,
                                      gpg =
                                        js2n.record.Record
                                            {
                                              additional = 'None,
                                              patterns = {},
                                              properties =
                                                {
                                                    passphrase = String,
                                                    signingkey = String,
                                                  },
                                              required = {},
                                            },
                                      password = String,
                                      submodules = Bool,
                                      url = String,
                                      user = String,
                                      username = String,
                                      workingbranch = Bool,
                                    },
                                required = { url = true, },
                              },
                      },
                  required = {},
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        disabled = Bool,
                        kind =
                          std.contract.Sequence
                              [ std.enum.TagOrString, [| 'gitea |] ],
                        spec =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      branch = String,
                                      commitmessage =
                                        js2n.record.Record
                                            {
                                              additional = 'None,
                                              patterns = {},
                                              properties =
                                                {
                                                    body = String,
                                                    footers = String,
                                                    hidecredit = Bool,
                                                    scope = String,
                                                    title = String,
                                                    type = String,
                                                  },
                                              required = {},
                                            },
                                      directory = String,
                                      email = String,
                                      "force" = Bool,
                                      gpg =
                                        js2n.record.Record
                                            {
                                              additional = 'None,
                                              patterns = {},
                                              properties =
                                                {
                                                    passphrase = String,
                                                    signingkey = String,
                                                  },
                                              required = {},
                                            },
                                      owner = String,
                                      repository = String,
                                      submodules = Bool,
                                      token = String,
                                      url = String,
                                      user = String,
                                      username = String,
                                      workingbranch = Bool,
                                    },
                                required =
                                  {
                                      owner = true,
                                      repository = true,
                                      url = true,
                                    },
                              },
                      },
                  required = {},
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        disabled = Bool,
                        kind =
                          std.contract.Sequence
                              [ std.enum.TagOrString, [| 'github |] ],
                        spec =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      branch = String,
                                      commitmessage =
                                        js2n.record.Record
                                            {
                                              additional = 'None,
                                              patterns = {},
                                              properties =
                                                {
                                                    body = String,
                                                    footers = String,
                                                    hidecredit = Bool,
                                                    scope = String,
                                                    title = String,
                                                    type = String,
                                                  },
                                              required = {},
                                            },
                                      commitusingapi = Bool,
                                      directory = String,
                                      email = String,
                                      "force" = Bool,
                                      gpg =
                                        js2n.record.Record
                                            {
                                              additional = 'None,
                                              patterns = {},
                                              properties =
                                                {
                                                    passphrase = String,
                                                    signingkey = String,
                                                  },
                                              required = {},
                                            },
                                      owner = String,
                                      repository = String,
                                      submodules = Bool,
                                      token = String,
                                      url = String,
                                      user = String,
                                      username = String,
                                      workingbranch = Bool,
                                    },
                                required =
                                  {
                                      owner = true,
                                      repository = true,
                                      token = true,
                                    },
                              },
                      },
                  required = {},
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        disabled = Bool,
                        kind =
                          std.contract.Sequence
                              [ std.enum.TagOrString, [| 'gitlab |] ],
                        spec =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      branch = String,
                                      commitmessage =
                                        js2n.record.Record
                                            {
                                              additional = 'None,
                                              patterns = {},
                                              properties =
                                                {
                                                    body = String,
                                                    footers = String,
                                                    hidecredit = Bool,
                                                    scope = String,
                                                    title = String,
                                                    type = String,
                                                  },
                                              required = {},
                                            },
                                      directory = String,
                                      email = String,
                                      "force" = Bool,
                                      gpg =
                                        js2n.record.Record
                                            {
                                              additional = 'None,
                                              patterns = {},
                                              properties =
                                                {
                                                    passphrase = String,
                                                    signingkey = String,
                                                  },
                                              required = {},
                                            },
                                      owner = String,
                                      repository = String,
                                      submodules = Bool,
                                      token = String,
                                      tokentype = String,
                                      url = String,
                                      user = String,
                                      username = String,
                                      workingbranch = Bool,
                                    },
                                required = { owner = true, repository = true, },
                              },
                      },
                  required = {},
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        disabled = Bool,
                        kind =
                          std.contract.Sequence
                              [ std.enum.TagOrString, [| 'stash |] ],
                        spec =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      branch = String,
                                      commitmessage =
                                        js2n.record.Record
                                            {
                                              additional = 'None,
                                              patterns = {},
                                              properties =
                                                {
                                                    body = String,
                                                    footers = String,
                                                    hidecredit = Bool,
                                                    scope = String,
                                                    title = String,
                                                    type = String,
                                                  },
                                              required = {},
                                            },
                                      directory = String,
                                      email = String,
                                      "force" = Bool,
                                      gpg =
                                        js2n.record.Record
                                            {
                                              additional = 'None,
                                              patterns = {},
                                              properties =
                                                {
                                                    passphrase = String,
                                                    signingkey = String,
                                                  },
                                              required = {},
                                            },
                                      owner = String,
                                      password = String,
                                      repository = String,
                                      submodules = Bool,
                                      token = String,
                                      url = String,
                                      user = String,
                                      username = String,
                                      workingbranch = Bool,
                                    },
                                required =
                                  {
                                      owner = true,
                                      repository = true,
                                      url = true,
                                    },
                              },
                      },
                  required = {},
                }
            ]
        }
        | doc m%"
          "scms" defines the list of repository configuration used to fetch content from.
          
          		examples:
          		---
          		scms:
          			default:
          				kind: github
          				spec:
          					owner: "updatecli"
          					repository: "updatecli"
          					token: "${{ env "GITHUB_TOKEN" }}"
          					branch: "main"
          		---
        "%
        | optional,
      sources
        | {
          _ | js2n.OneOf
            [
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        dependson = js2n.array.ArrayOf String,
                        kind =
                          std.contract.Sequence
                              [ std.enum.TagOrString, [| '"aws/ami" |] ],
                        name = String,
                        scmid = String,
                        spec =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      accesskey = String,
                                      dryrun = Bool,
                                      endpoint = String,
                                      filters =
                                        js2n.array.ArrayOf
                                            (js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      name = String,
                                                      values = String,
                                                    },
                                                required = {},
                                              }),
                                      region = String,
                                      secretkey = String,
                                      sortby = String,
                                    },
                                required = {},
                              },
                        transformers =
                          js2n.array.ArrayOf
                              (js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        addprefix = String,
                                        addsuffix = String,
                                        find = String,
                                        findsubmatch =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      captureindex =
                                                        std.number.Integer,
                                                      pattern = String,
                                                    },
                                                required = { pattern = true, },
                                              },
                                        quote = Bool,
                                        replacer =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      from = String,
                                                      to = String,
                                                    },
                                                required =
                                                  { from = true, to = true, },
                                              },
                                        replacers =
                                          js2n.array.ArrayOf
                                              (js2n.record.Record
                                                {
                                                  additional = 'None,
                                                  patterns = {},
                                                  properties =
                                                    {
                                                        from = String,
                                                        to = String,
                                                      },
                                                  required =
                                                    { from = true, to = true, },
                                                }),
                                        semverinc = String,
                                        trimprefix = String,
                                        trimsuffix = String,
                                        unquote = Bool,
                                      },
                                  required = {},
                                }),
                      },
                  required = { kind = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        dependson = js2n.array.ArrayOf String,
                        kind =
                          std.contract.Sequence
                              [ std.enum.TagOrString, [| 'cargopackage |] ],
                        name = String,
                        scmid = String,
                        spec =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      package = String,
                                      registry =
                                        js2n.record.Record
                                            {
                                              additional = 'None,
                                              patterns = {},
                                              properties =
                                                {
                                                    auth =
                                                      js2n.record.Record
                                                          {
                                                            additional = 'None,
                                                            patterns = {},
                                                            properties =
                                                              {
                                                                  headerformat =
                                                                    String,
                                                                  token =
                                                                    String,
                                                                },
                                                            required = {},
                                                          },
                                                    rootdir = String,
                                                    scmid = String,
                                                    url = String,
                                                  },
                                              required = {},
                                            },
                                      version = String,
                                      versionfilter =
                                        js2n.record.Record
                                            {
                                              additional = 'None,
                                              patterns = {},
                                              properties =
                                                {
                                                    kind = String,
                                                    pattern = String,
                                                    regex = String,
                                                    strict = Bool,
                                                  },
                                              required = {},
                                            },
                                    },
                                required = { package = true, },
                              },
                        transformers =
                          js2n.array.ArrayOf
                              (js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        addprefix = String,
                                        addsuffix = String,
                                        find = String,
                                        findsubmatch =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      captureindex =
                                                        std.number.Integer,
                                                      pattern = String,
                                                    },
                                                required = { pattern = true, },
                                              },
                                        quote = Bool,
                                        replacer =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      from = String,
                                                      to = String,
                                                    },
                                                required =
                                                  { from = true, to = true, },
                                              },
                                        replacers =
                                          js2n.array.ArrayOf
                                              (js2n.record.Record
                                                {
                                                  additional = 'None,
                                                  patterns = {},
                                                  properties =
                                                    {
                                                        from = String,
                                                        to = String,
                                                      },
                                                  required =
                                                    { from = true, to = true, },
                                                }),
                                        semverinc = String,
                                        trimprefix = String,
                                        trimsuffix = String,
                                        unquote = Bool,
                                      },
                                  required = {},
                                }),
                      },
                  required = { kind = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        dependson = js2n.array.ArrayOf String,
                        kind =
                          std.contract.Sequence
                              [ std.enum.TagOrString, [| 'csv |] ],
                        name = String,
                        scmid = String,
                        spec =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      comma = std.number.Integer,
                                      comment = std.number.Integer,
                                      file = String,
                                      files = js2n.array.ArrayOf String,
                                      key = String,
                                      query = String,
                                      value = String,
                                      versionfilter =
                                        js2n.record.Record
                                            {
                                              additional = 'None,
                                              patterns = {},
                                              properties =
                                                {
                                                    kind = String,
                                                    pattern = String,
                                                    regex = String,
                                                    strict = Bool,
                                                  },
                                              required = {},
                                            },
                                    },
                                required = {},
                              },
                        transformers =
                          js2n.array.ArrayOf
                              (js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        addprefix = String,
                                        addsuffix = String,
                                        find = String,
                                        findsubmatch =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      captureindex =
                                                        std.number.Integer,
                                                      pattern = String,
                                                    },
                                                required = { pattern = true, },
                                              },
                                        quote = Bool,
                                        replacer =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      from = String,
                                                      to = String,
                                                    },
                                                required =
                                                  { from = true, to = true, },
                                              },
                                        replacers =
                                          js2n.array.ArrayOf
                                              (js2n.record.Record
                                                {
                                                  additional = 'None,
                                                  patterns = {},
                                                  properties =
                                                    {
                                                        from = String,
                                                        to = String,
                                                      },
                                                  required =
                                                    { from = true, to = true, },
                                                }),
                                        semverinc = String,
                                        trimprefix = String,
                                        trimsuffix = String,
                                        unquote = Bool,
                                      },
                                  required = {},
                                }),
                      },
                  required = { kind = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        dependson = js2n.array.ArrayOf String,
                        kind =
                          std.contract.Sequence
                              [ std.enum.TagOrString, [| 'dockerdigest |] ],
                        name = String,
                        scmid = String,
                        spec =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      architecture = String,
                                      digest = String,
                                      hidetag = Bool,
                                      image = String,
                                      password = String,
                                      tag = String,
                                      token = String,
                                      username = String,
                                    },
                                required = {},
                              },
                        transformers =
                          js2n.array.ArrayOf
                              (js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        addprefix = String,
                                        addsuffix = String,
                                        find = String,
                                        findsubmatch =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      captureindex =
                                                        std.number.Integer,
                                                      pattern = String,
                                                    },
                                                required = { pattern = true, },
                                              },
                                        quote = Bool,
                                        replacer =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      from = String,
                                                      to = String,
                                                    },
                                                required =
                                                  { from = true, to = true, },
                                              },
                                        replacers =
                                          js2n.array.ArrayOf
                                              (js2n.record.Record
                                                {
                                                  additional = 'None,
                                                  patterns = {},
                                                  properties =
                                                    {
                                                        from = String,
                                                        to = String,
                                                      },
                                                  required =
                                                    { from = true, to = true, },
                                                }),
                                        semverinc = String,
                                        trimprefix = String,
                                        trimsuffix = String,
                                        unquote = Bool,
                                      },
                                  required = {},
                                }),
                      },
                  required = { kind = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        dependson = js2n.array.ArrayOf String,
                        kind =
                          std.contract.Sequence
                              [ std.enum.TagOrString, [| 'dockerfile |] ],
                        name = String,
                        scmid = String,
                        spec =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      file = String,
                                      files = js2n.array.ArrayOf String,
                                      instruction =
                                        std.contract.any_of
                                            [
                                              js2n.Null,
                                              Bool,
                                              Number,
                                              String,
                                              { _ | Dyn },
                                              Array Dyn
                                            ],
                                      stage = String,
                                      value = String,
                                    },
                                required = {},
                              },
                        transformers =
                          js2n.array.ArrayOf
                              (js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        addprefix = String,
                                        addsuffix = String,
                                        find = String,
                                        findsubmatch =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      captureindex =
                                                        std.number.Integer,
                                                      pattern = String,
                                                    },
                                                required = { pattern = true, },
                                              },
                                        quote = Bool,
                                        replacer =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      from = String,
                                                      to = String,
                                                    },
                                                required =
                                                  { from = true, to = true, },
                                              },
                                        replacers =
                                          js2n.array.ArrayOf
                                              (js2n.record.Record
                                                {
                                                  additional = 'None,
                                                  patterns = {},
                                                  properties =
                                                    {
                                                        from = String,
                                                        to = String,
                                                      },
                                                  required =
                                                    { from = true, to = true, },
                                                }),
                                        semverinc = String,
                                        trimprefix = String,
                                        trimsuffix = String,
                                        unquote = Bool,
                                      },
                                  required = {},
                                }),
                      },
                  required = { kind = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        dependson = js2n.array.ArrayOf String,
                        kind =
                          std.contract.Sequence
                              [ std.enum.TagOrString, [| 'dockerimage |] ],
                        name = String,
                        scmid = String,
                        spec =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      architecture = String,
                                      architectures = js2n.array.ArrayOf String,
                                      image = String,
                                      password = String,
                                      tag = String,
                                      tagfilter = String,
                                      token = String,
                                      username = String,
                                      versionfilter =
                                        js2n.record.Record
                                            {
                                              additional = 'None,
                                              patterns = {},
                                              properties =
                                                {
                                                    kind = String,
                                                    pattern = String,
                                                    regex = String,
                                                    strict = Bool,
                                                  },
                                              required = {},
                                            },
                                    },
                                required = {},
                              },
                        transformers =
                          js2n.array.ArrayOf
                              (js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        addprefix = String,
                                        addsuffix = String,
                                        find = String,
                                        findsubmatch =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      captureindex =
                                                        std.number.Integer,
                                                      pattern = String,
                                                    },
                                                required = { pattern = true, },
                                              },
                                        quote = Bool,
                                        replacer =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      from = String,
                                                      to = String,
                                                    },
                                                required =
                                                  { from = true, to = true, },
                                              },
                                        replacers =
                                          js2n.array.ArrayOf
                                              (js2n.record.Record
                                                {
                                                  additional = 'None,
                                                  patterns = {},
                                                  properties =
                                                    {
                                                        from = String,
                                                        to = String,
                                                      },
                                                  required =
                                                    { from = true, to = true, },
                                                }),
                                        semverinc = String,
                                        trimprefix = String,
                                        trimsuffix = String,
                                        unquote = Bool,
                                      },
                                  required = {},
                                }),
                      },
                  required = { kind = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        dependson = js2n.array.ArrayOf String,
                        kind =
                          std.contract.Sequence
                              [ std.enum.TagOrString, [| 'file |] ],
                        name = String,
                        scmid = String,
                        spec =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      content = String,
                                      file = String,
                                      files = js2n.array.ArrayOf String,
                                      forcecreate = Bool,
                                      line = std.number.Integer,
                                      matchpattern = String,
                                      replacepattern = String,
                                      searchpattern = Bool,
                                    },
                                required = {},
                              },
                        transformers =
                          js2n.array.ArrayOf
                              (js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        addprefix = String,
                                        addsuffix = String,
                                        find = String,
                                        findsubmatch =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      captureindex =
                                                        std.number.Integer,
                                                      pattern = String,
                                                    },
                                                required = { pattern = true, },
                                              },
                                        quote = Bool,
                                        replacer =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      from = String,
                                                      to = String,
                                                    },
                                                required =
                                                  { from = true, to = true, },
                                              },
                                        replacers =
                                          js2n.array.ArrayOf
                                              (js2n.record.Record
                                                {
                                                  additional = 'None,
                                                  patterns = {},
                                                  properties =
                                                    {
                                                        from = String,
                                                        to = String,
                                                      },
                                                  required =
                                                    { from = true, to = true, },
                                                }),
                                        semverinc = String,
                                        trimprefix = String,
                                        trimsuffix = String,
                                        unquote = Bool,
                                      },
                                  required = {},
                                }),
                      },
                  required = { kind = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        dependson = js2n.array.ArrayOf String,
                        kind =
                          std.contract.Sequence
                              [ std.enum.TagOrString, [| 'gitbranch |] ],
                        name = String,
                        scmid = String,
                        spec =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      branch = String,
                                      key = String,
                                      password = String,
                                      path = String,
                                      sourcebranch = String,
                                      url = String,
                                      username = String,
                                      versionfilter =
                                        js2n.record.Record
                                            {
                                              additional = 'None,
                                              patterns = {},
                                              properties =
                                                {
                                                    kind = String,
                                                    pattern = String,
                                                    regex = String,
                                                    strict = Bool,
                                                  },
                                              required = {},
                                            },
                                    },
                                required = { url = true, },
                              },
                        transformers =
                          js2n.array.ArrayOf
                              (js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        addprefix = String,
                                        addsuffix = String,
                                        find = String,
                                        findsubmatch =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      captureindex =
                                                        std.number.Integer,
                                                      pattern = String,
                                                    },
                                                required = { pattern = true, },
                                              },
                                        quote = Bool,
                                        replacer =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      from = String,
                                                      to = String,
                                                    },
                                                required =
                                                  { from = true, to = true, },
                                              },
                                        replacers =
                                          js2n.array.ArrayOf
                                              (js2n.record.Record
                                                {
                                                  additional = 'None,
                                                  patterns = {},
                                                  properties =
                                                    {
                                                        from = String,
                                                        to = String,
                                                      },
                                                  required =
                                                    { from = true, to = true, },
                                                }),
                                        semverinc = String,
                                        trimprefix = String,
                                        trimsuffix = String,
                                        unquote = Bool,
                                      },
                                  required = {},
                                }),
                      },
                  required = { kind = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        dependson = js2n.array.ArrayOf String,
                        kind =
                          std.contract.Sequence
                              [ std.enum.TagOrString, [| '"gitea/branch" |] ],
                        name = String,
                        scmid = String,
                        spec =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      branch = String,
                                      owner = String,
                                      repository = String,
                                      token = String,
                                      url = String,
                                      username = String,
                                      versionfilter =
                                        js2n.record.Record
                                            {
                                              additional = 'None,
                                              patterns = {},
                                              properties =
                                                {
                                                    kind = String,
                                                    pattern = String,
                                                    regex = String,
                                                    strict = Bool,
                                                  },
                                              required = {},
                                            },
                                    },
                                required =
                                  {
                                      owner = true,
                                      repository = true,
                                      url = true,
                                    },
                              },
                        transformers =
                          js2n.array.ArrayOf
                              (js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        addprefix = String,
                                        addsuffix = String,
                                        find = String,
                                        findsubmatch =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      captureindex =
                                                        std.number.Integer,
                                                      pattern = String,
                                                    },
                                                required = { pattern = true, },
                                              },
                                        quote = Bool,
                                        replacer =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      from = String,
                                                      to = String,
                                                    },
                                                required =
                                                  { from = true, to = true, },
                                              },
                                        replacers =
                                          js2n.array.ArrayOf
                                              (js2n.record.Record
                                                {
                                                  additional = 'None,
                                                  patterns = {},
                                                  properties =
                                                    {
                                                        from = String,
                                                        to = String,
                                                      },
                                                  required =
                                                    { from = true, to = true, },
                                                }),
                                        semverinc = String,
                                        trimprefix = String,
                                        trimsuffix = String,
                                        unquote = Bool,
                                      },
                                  required = {},
                                }),
                      },
                  required = { kind = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        dependson = js2n.array.ArrayOf String,
                        kind =
                          std.contract.Sequence
                              [ std.enum.TagOrString, [| '"gitea/release" |] ],
                        name = String,
                        scmid = String,
                        spec =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      commitish = String,
                                      description = String,
                                      draft = Bool,
                                      owner = String,
                                      prerelease = Bool,
                                      repository = String,
                                      tag = String,
                                      title = String,
                                      token = String,
                                      url = String,
                                      username = String,
                                      versionfilter =
                                        js2n.record.Record
                                            {
                                              additional = 'None,
                                              patterns = {},
                                              properties =
                                                {
                                                    kind = String,
                                                    pattern = String,
                                                    regex = String,
                                                    strict = Bool,
                                                  },
                                              required = {},
                                            },
                                    },
                                required =
                                  {
                                      owner = true,
                                      repository = true,
                                      url = true,
                                    },
                              },
                        transformers =
                          js2n.array.ArrayOf
                              (js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        addprefix = String,
                                        addsuffix = String,
                                        find = String,
                                        findsubmatch =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      captureindex =
                                                        std.number.Integer,
                                                      pattern = String,
                                                    },
                                                required = { pattern = true, },
                                              },
                                        quote = Bool,
                                        replacer =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      from = String,
                                                      to = String,
                                                    },
                                                required =
                                                  { from = true, to = true, },
                                              },
                                        replacers =
                                          js2n.array.ArrayOf
                                              (js2n.record.Record
                                                {
                                                  additional = 'None,
                                                  patterns = {},
                                                  properties =
                                                    {
                                                        from = String,
                                                        to = String,
                                                      },
                                                  required =
                                                    { from = true, to = true, },
                                                }),
                                        semverinc = String,
                                        trimprefix = String,
                                        trimsuffix = String,
                                        unquote = Bool,
                                      },
                                  required = {},
                                }),
                      },
                  required = { kind = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        dependson = js2n.array.ArrayOf String,
                        kind =
                          std.contract.Sequence
                              [ std.enum.TagOrString, [| '"gitea/tag" |] ],
                        name = String,
                        scmid = String,
                        spec =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      owner = String,
                                      repository = String,
                                      tag = String,
                                      token = String,
                                      url = String,
                                      username = String,
                                      versionfilter =
                                        js2n.record.Record
                                            {
                                              additional = 'None,
                                              patterns = {},
                                              properties =
                                                {
                                                    kind = String,
                                                    pattern = String,
                                                    regex = String,
                                                    strict = Bool,
                                                  },
                                              required = {},
                                            },
                                    },
                                required =
                                  {
                                      owner = true,
                                      repository = true,
                                      url = true,
                                    },
                              },
                        transformers =
                          js2n.array.ArrayOf
                              (js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        addprefix = String,
                                        addsuffix = String,
                                        find = String,
                                        findsubmatch =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      captureindex =
                                                        std.number.Integer,
                                                      pattern = String,
                                                    },
                                                required = { pattern = true, },
                                              },
                                        quote = Bool,
                                        replacer =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      from = String,
                                                      to = String,
                                                    },
                                                required =
                                                  { from = true, to = true, },
                                              },
                                        replacers =
                                          js2n.array.ArrayOf
                                              (js2n.record.Record
                                                {
                                                  additional = 'None,
                                                  patterns = {},
                                                  properties =
                                                    {
                                                        from = String,
                                                        to = String,
                                                      },
                                                  required =
                                                    { from = true, to = true, },
                                                }),
                                        semverinc = String,
                                        trimprefix = String,
                                        trimsuffix = String,
                                        unquote = Bool,
                                      },
                                  required = {},
                                }),
                      },
                  required = { kind = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        dependson = js2n.array.ArrayOf String,
                        kind =
                          std.contract.Sequence
                              [ std.enum.TagOrString, [| 'githubrelease |] ],
                        name = String,
                        scmid = String,
                        spec =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      key = String,
                                      owner = String,
                                      repository = String,
                                      tag = String,
                                      token = String,
                                      typefilter =
                                        js2n.record.Record
                                            {
                                              additional = 'None,
                                              patterns = {},
                                              properties =
                                                {
                                                    draft = Bool,
                                                    latest = Bool,
                                                    prerelease = Bool,
                                                    release = Bool,
                                                  },
                                              required = {},
                                            },
                                      url = String,
                                      username = String,
                                      versionfilter =
                                        js2n.record.Record
                                            {
                                              additional = 'None,
                                              patterns = {},
                                              properties =
                                                {
                                                    kind = String,
                                                    pattern = String,
                                                    regex = String,
                                                    strict = Bool,
                                                  },
                                              required = {},
                                            },
                                    },
                                required =
                                  {
                                      owner = true,
                                      repository = true,
                                      token = true,
                                    },
                              },
                        transformers =
                          js2n.array.ArrayOf
                              (js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        addprefix = String,
                                        addsuffix = String,
                                        find = String,
                                        findsubmatch =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      captureindex =
                                                        std.number.Integer,
                                                      pattern = String,
                                                    },
                                                required = { pattern = true, },
                                              },
                                        quote = Bool,
                                        replacer =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      from = String,
                                                      to = String,
                                                    },
                                                required =
                                                  { from = true, to = true, },
                                              },
                                        replacers =
                                          js2n.array.ArrayOf
                                              (js2n.record.Record
                                                {
                                                  additional = 'None,
                                                  patterns = {},
                                                  properties =
                                                    {
                                                        from = String,
                                                        to = String,
                                                      },
                                                  required =
                                                    { from = true, to = true, },
                                                }),
                                        semverinc = String,
                                        trimprefix = String,
                                        trimsuffix = String,
                                        unquote = Bool,
                                      },
                                  required = {},
                                }),
                      },
                  required = { kind = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        dependson = js2n.array.ArrayOf String,
                        kind =
                          std.contract.Sequence
                              [ std.enum.TagOrString, [| '"gitlab/branch" |] ],
                        name = String,
                        scmid = String,
                        spec =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      branch = String,
                                      owner = String,
                                      repository = String,
                                      token = String,
                                      tokentype = String,
                                      url = String,
                                      username = String,
                                      versionfilter =
                                        js2n.record.Record
                                            {
                                              additional = 'None,
                                              patterns = {},
                                              properties =
                                                {
                                                    kind = String,
                                                    pattern = String,
                                                    regex = String,
                                                    strict = Bool,
                                                  },
                                              required = {},
                                            },
                                    },
                                required = { owner = true, repository = true, },
                              },
                        transformers =
                          js2n.array.ArrayOf
                              (js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        addprefix = String,
                                        addsuffix = String,
                                        find = String,
                                        findsubmatch =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      captureindex =
                                                        std.number.Integer,
                                                      pattern = String,
                                                    },
                                                required = { pattern = true, },
                                              },
                                        quote = Bool,
                                        replacer =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      from = String,
                                                      to = String,
                                                    },
                                                required =
                                                  { from = true, to = true, },
                                              },
                                        replacers =
                                          js2n.array.ArrayOf
                                              (js2n.record.Record
                                                {
                                                  additional = 'None,
                                                  patterns = {},
                                                  properties =
                                                    {
                                                        from = String,
                                                        to = String,
                                                      },
                                                  required =
                                                    { from = true, to = true, },
                                                }),
                                        semverinc = String,
                                        trimprefix = String,
                                        trimsuffix = String,
                                        unquote = Bool,
                                      },
                                  required = {},
                                }),
                      },
                  required = { kind = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        dependson = js2n.array.ArrayOf String,
                        kind =
                          std.contract.Sequence
                              [ std.enum.TagOrString, [| '"gitlab/release" |] ],
                        name = String,
                        scmid = String,
                        spec =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      commitish = String,
                                      description = String,
                                      draft = Bool,
                                      owner = String,
                                      prerelease = Bool,
                                      repository = String,
                                      tag = String,
                                      title = String,
                                      token = String,
                                      tokentype = String,
                                      url = String,
                                      username = String,
                                      versionfilter =
                                        js2n.record.Record
                                            {
                                              additional = 'None,
                                              patterns = {},
                                              properties =
                                                {
                                                    kind = String,
                                                    pattern = String,
                                                    regex = String,
                                                    strict = Bool,
                                                  },
                                              required = {},
                                            },
                                    },
                                required = { owner = true, repository = true, },
                              },
                        transformers =
                          js2n.array.ArrayOf
                              (js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        addprefix = String,
                                        addsuffix = String,
                                        find = String,
                                        findsubmatch =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      captureindex =
                                                        std.number.Integer,
                                                      pattern = String,
                                                    },
                                                required = { pattern = true, },
                                              },
                                        quote = Bool,
                                        replacer =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      from = String,
                                                      to = String,
                                                    },
                                                required =
                                                  { from = true, to = true, },
                                              },
                                        replacers =
                                          js2n.array.ArrayOf
                                              (js2n.record.Record
                                                {
                                                  additional = 'None,
                                                  patterns = {},
                                                  properties =
                                                    {
                                                        from = String,
                                                        to = String,
                                                      },
                                                  required =
                                                    { from = true, to = true, },
                                                }),
                                        semverinc = String,
                                        trimprefix = String,
                                        trimsuffix = String,
                                        unquote = Bool,
                                      },
                                  required = {},
                                }),
                      },
                  required = { kind = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        dependson = js2n.array.ArrayOf String,
                        kind =
                          std.contract.Sequence
                              [ std.enum.TagOrString, [| '"gitlab/tag" |] ],
                        name = String,
                        scmid = String,
                        spec =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      owner = String,
                                      repository = String,
                                      tag = String,
                                      token = String,
                                      tokentype = String,
                                      url = String,
                                      username = String,
                                      versionfilter =
                                        js2n.record.Record
                                            {
                                              additional = 'None,
                                              patterns = {},
                                              properties =
                                                {
                                                    kind = String,
                                                    pattern = String,
                                                    regex = String,
                                                    strict = Bool,
                                                  },
                                              required = {},
                                            },
                                    },
                                required = { owner = true, repository = true, },
                              },
                        transformers =
                          js2n.array.ArrayOf
                              (js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        addprefix = String,
                                        addsuffix = String,
                                        find = String,
                                        findsubmatch =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      captureindex =
                                                        std.number.Integer,
                                                      pattern = String,
                                                    },
                                                required = { pattern = true, },
                                              },
                                        quote = Bool,
                                        replacer =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      from = String,
                                                      to = String,
                                                    },
                                                required =
                                                  { from = true, to = true, },
                                              },
                                        replacers =
                                          js2n.array.ArrayOf
                                              (js2n.record.Record
                                                {
                                                  additional = 'None,
                                                  patterns = {},
                                                  properties =
                                                    {
                                                        from = String,
                                                        to = String,
                                                      },
                                                  required =
                                                    { from = true, to = true, },
                                                }),
                                        semverinc = String,
                                        trimprefix = String,
                                        trimsuffix = String,
                                        unquote = Bool,
                                      },
                                  required = {},
                                }),
                      },
                  required = { kind = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        dependson = js2n.array.ArrayOf String,
                        kind =
                          std.contract.Sequence
                              [ std.enum.TagOrString, [| 'gittag |] ],
                        name = String,
                        scmid = String,
                        spec =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      key = String,
                                      message = String,
                                      password = String,
                                      path = String,
                                      sourcebranch = String,
                                      url = String,
                                      username = String,
                                      versionfilter =
                                        js2n.record.Record
                                            {
                                              additional = 'None,
                                              patterns = {},
                                              properties =
                                                {
                                                    kind = String,
                                                    pattern = String,
                                                    regex = String,
                                                    strict = Bool,
                                                  },
                                              required = {},
                                            },
                                    },
                                required = { url = true, },
                              },
                        transformers =
                          js2n.array.ArrayOf
                              (js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        addprefix = String,
                                        addsuffix = String,
                                        find = String,
                                        findsubmatch =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      captureindex =
                                                        std.number.Integer,
                                                      pattern = String,
                                                    },
                                                required = { pattern = true, },
                                              },
                                        quote = Bool,
                                        replacer =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      from = String,
                                                      to = String,
                                                    },
                                                required =
                                                  { from = true, to = true, },
                                              },
                                        replacers =
                                          js2n.array.ArrayOf
                                              (js2n.record.Record
                                                {
                                                  additional = 'None,
                                                  patterns = {},
                                                  properties =
                                                    {
                                                        from = String,
                                                        to = String,
                                                      },
                                                  required =
                                                    { from = true, to = true, },
                                                }),
                                        semverinc = String,
                                        trimprefix = String,
                                        trimsuffix = String,
                                        unquote = Bool,
                                      },
                                  required = {},
                                }),
                      },
                  required = { kind = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        dependson = js2n.array.ArrayOf String,
                        kind =
                          std.contract.Sequence
                              [ std.enum.TagOrString, [| 'golang |] ],
                        name = String,
                        scmid = String,
                        spec =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      version = String,
                                      versionfilter =
                                        js2n.record.Record
                                            {
                                              additional = 'None,
                                              patterns = {},
                                              properties =
                                                {
                                                    kind = String,
                                                    pattern = String,
                                                    regex = String,
                                                    strict = Bool,
                                                  },
                                              required = {},
                                            },
                                    },
                                required = {},
                              },
                        transformers =
                          js2n.array.ArrayOf
                              (js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        addprefix = String,
                                        addsuffix = String,
                                        find = String,
                                        findsubmatch =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      captureindex =
                                                        std.number.Integer,
                                                      pattern = String,
                                                    },
                                                required = { pattern = true, },
                                              },
                                        quote = Bool,
                                        replacer =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      from = String,
                                                      to = String,
                                                    },
                                                required =
                                                  { from = true, to = true, },
                                              },
                                        replacers =
                                          js2n.array.ArrayOf
                                              (js2n.record.Record
                                                {
                                                  additional = 'None,
                                                  patterns = {},
                                                  properties =
                                                    {
                                                        from = String,
                                                        to = String,
                                                      },
                                                  required =
                                                    { from = true, to = true, },
                                                }),
                                        semverinc = String,
                                        trimprefix = String,
                                        trimsuffix = String,
                                        unquote = Bool,
                                      },
                                  required = {},
                                }),
                      },
                  required = { kind = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        dependson = js2n.array.ArrayOf String,
                        kind =
                          std.contract.Sequence
                              [ std.enum.TagOrString, [| '"golang/gomod" |] ],
                        name = String,
                        scmid = String,
                        spec =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      file = String,
                                      indirect = Bool,
                                      module = String,
                                      version = String,
                                    },
                                required = {},
                              },
                        transformers =
                          js2n.array.ArrayOf
                              (js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        addprefix = String,
                                        addsuffix = String,
                                        find = String,
                                        findsubmatch =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      captureindex =
                                                        std.number.Integer,
                                                      pattern = String,
                                                    },
                                                required = { pattern = true, },
                                              },
                                        quote = Bool,
                                        replacer =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      from = String,
                                                      to = String,
                                                    },
                                                required =
                                                  { from = true, to = true, },
                                              },
                                        replacers =
                                          js2n.array.ArrayOf
                                              (js2n.record.Record
                                                {
                                                  additional = 'None,
                                                  patterns = {},
                                                  properties =
                                                    {
                                                        from = String,
                                                        to = String,
                                                      },
                                                  required =
                                                    { from = true, to = true, },
                                                }),
                                        semverinc = String,
                                        trimprefix = String,
                                        trimsuffix = String,
                                        unquote = Bool,
                                      },
                                  required = {},
                                }),
                      },
                  required = { kind = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        dependson = js2n.array.ArrayOf String,
                        kind =
                          std.contract.Sequence
                              [ std.enum.TagOrString, [| '"golang/module" |] ],
                        name = String,
                        scmid = String,
                        spec =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      module = String,
                                      proxy = String,
                                      version = String,
                                      versionfilter =
                                        js2n.record.Record
                                            {
                                              additional = 'None,
                                              patterns = {},
                                              properties =
                                                {
                                                    kind = String,
                                                    pattern = String,
                                                    regex = String,
                                                    strict = Bool,
                                                  },
                                              required = {},
                                            },
                                    },
                                required = { module = true, },
                              },
                        transformers =
                          js2n.array.ArrayOf
                              (js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        addprefix = String,
                                        addsuffix = String,
                                        find = String,
                                        findsubmatch =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      captureindex =
                                                        std.number.Integer,
                                                      pattern = String,
                                                    },
                                                required = { pattern = true, },
                                              },
                                        quote = Bool,
                                        replacer =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      from = String,
                                                      to = String,
                                                    },
                                                required =
                                                  { from = true, to = true, },
                                              },
                                        replacers =
                                          js2n.array.ArrayOf
                                              (js2n.record.Record
                                                {
                                                  additional = 'None,
                                                  patterns = {},
                                                  properties =
                                                    {
                                                        from = String,
                                                        to = String,
                                                      },
                                                  required =
                                                    { from = true, to = true, },
                                                }),
                                        semverinc = String,
                                        trimprefix = String,
                                        trimsuffix = String,
                                        unquote = Bool,
                                      },
                                  required = {},
                                }),
                      },
                  required = { kind = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        dependson = js2n.array.ArrayOf String,
                        kind =
                          std.contract.Sequence
                              [ std.enum.TagOrString, [| 'hcl |] ],
                        name = String,
                        scmid = String,
                        spec =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      file = String,
                                      files = js2n.array.ArrayOf String,
                                      path = String,
                                      value = String,
                                    },
                                required = {},
                              },
                        transformers =
                          js2n.array.ArrayOf
                              (js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        addprefix = String,
                                        addsuffix = String,
                                        find = String,
                                        findsubmatch =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      captureindex =
                                                        std.number.Integer,
                                                      pattern = String,
                                                    },
                                                required = { pattern = true, },
                                              },
                                        quote = Bool,
                                        replacer =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      from = String,
                                                      to = String,
                                                    },
                                                required =
                                                  { from = true, to = true, },
                                              },
                                        replacers =
                                          js2n.array.ArrayOf
                                              (js2n.record.Record
                                                {
                                                  additional = 'None,
                                                  patterns = {},
                                                  properties =
                                                    {
                                                        from = String,
                                                        to = String,
                                                      },
                                                  required =
                                                    { from = true, to = true, },
                                                }),
                                        semverinc = String,
                                        trimprefix = String,
                                        trimsuffix = String,
                                        unquote = Bool,
                                      },
                                  required = {},
                                }),
                      },
                  required = { kind = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        dependson = js2n.array.ArrayOf String,
                        kind =
                          std.contract.Sequence
                              [ std.enum.TagOrString, [| 'helmchart |] ],
                        name = String,
                        scmid = String,
                        spec =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      appversion = Bool,
                                      file = String,
                                      key = String,
                                      name = String,
                                      password = String,
                                      skippackaging = Bool,
                                      token = String,
                                      url = String,
                                      username = String,
                                      value = String,
                                      version = String,
                                      versionfilter =
                                        js2n.record.Record
                                            {
                                              additional = 'None,
                                              patterns = {},
                                              properties =
                                                {
                                                    kind = String,
                                                    pattern = String,
                                                    regex = String,
                                                    strict = Bool,
                                                  },
                                              required = {},
                                            },
                                      versionincrement = String,
                                    },
                                required = {},
                              },
                        transformers =
                          js2n.array.ArrayOf
                              (js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        addprefix = String,
                                        addsuffix = String,
                                        find = String,
                                        findsubmatch =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      captureindex =
                                                        std.number.Integer,
                                                      pattern = String,
                                                    },
                                                required = { pattern = true, },
                                              },
                                        quote = Bool,
                                        replacer =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      from = String,
                                                      to = String,
                                                    },
                                                required =
                                                  { from = true, to = true, },
                                              },
                                        replacers =
                                          js2n.array.ArrayOf
                                              (js2n.record.Record
                                                {
                                                  additional = 'None,
                                                  patterns = {},
                                                  properties =
                                                    {
                                                        from = String,
                                                        to = String,
                                                      },
                                                  required =
                                                    { from = true, to = true, },
                                                }),
                                        semverinc = String,
                                        trimprefix = String,
                                        trimsuffix = String,
                                        unquote = Bool,
                                      },
                                  required = {},
                                }),
                      },
                  required = { kind = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        dependson = js2n.array.ArrayOf String,
                        kind =
                          std.contract.Sequence
                              [ std.enum.TagOrString, [| 'http |] ],
                        name = String,
                        scmid = String,
                        spec =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      request =
                                        js2n.record.Record
                                            {
                                              additional = 'None,
                                              patterns = {},
                                              properties =
                                                {
                                                    body = String,
                                                    headers =
                                                      js2n.record.Record
                                                          {
                                                            additional =
                                                              'Some String,
                                                            patterns = {},
                                                            properties = {},
                                                            required = {},
                                                          },
                                                    nofollowredirects = Bool,
                                                    verb = String,
                                                  },
                                              required = {},
                                            },
                                      responseasserts =
                                        js2n.record.Record
                                            {
                                              additional = 'None,
                                              patterns = {},
                                              properties =
                                                {
                                                    headers =
                                                      js2n.record.Record
                                                          {
                                                            additional =
                                                              'Some String,
                                                            patterns = {},
                                                            properties = {},
                                                            required = {},
                                                          },
                                                    statuscode =
                                                      std.number.Integer,
                                                  },
                                              required = {},
                                            },
                                      returnresponseheader = String,
                                      url = String,
                                    },
                                required = {},
                              },
                        transformers =
                          js2n.array.ArrayOf
                              (js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        addprefix = String,
                                        addsuffix = String,
                                        find = String,
                                        findsubmatch =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      captureindex =
                                                        std.number.Integer,
                                                      pattern = String,
                                                    },
                                                required = { pattern = true, },
                                              },
                                        quote = Bool,
                                        replacer =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      from = String,
                                                      to = String,
                                                    },
                                                required =
                                                  { from = true, to = true, },
                                              },
                                        replacers =
                                          js2n.array.ArrayOf
                                              (js2n.record.Record
                                                {
                                                  additional = 'None,
                                                  patterns = {},
                                                  properties =
                                                    {
                                                        from = String,
                                                        to = String,
                                                      },
                                                  required =
                                                    { from = true, to = true, },
                                                }),
                                        semverinc = String,
                                        trimprefix = String,
                                        trimsuffix = String,
                                        unquote = Bool,
                                      },
                                  required = {},
                                }),
                      },
                  required = { kind = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        dependson = js2n.array.ArrayOf String,
                        kind =
                          std.contract.Sequence
                              [ std.enum.TagOrString, [| 'jenkins |] ],
                        name = String,
                        scmid = String,
                        spec =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  { release = String, version = String, },
                                required = {},
                              },
                        transformers =
                          js2n.array.ArrayOf
                              (js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        addprefix = String,
                                        addsuffix = String,
                                        find = String,
                                        findsubmatch =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      captureindex =
                                                        std.number.Integer,
                                                      pattern = String,
                                                    },
                                                required = { pattern = true, },
                                              },
                                        quote = Bool,
                                        replacer =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      from = String,
                                                      to = String,
                                                    },
                                                required =
                                                  { from = true, to = true, },
                                              },
                                        replacers =
                                          js2n.array.ArrayOf
                                              (js2n.record.Record
                                                {
                                                  additional = 'None,
                                                  patterns = {},
                                                  properties =
                                                    {
                                                        from = String,
                                                        to = String,
                                                      },
                                                  required =
                                                    { from = true, to = true, },
                                                }),
                                        semverinc = String,
                                        trimprefix = String,
                                        trimsuffix = String,
                                        unquote = Bool,
                                      },
                                  required = {},
                                }),
                      },
                  required = { kind = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        dependson = js2n.array.ArrayOf String,
                        kind =
                          std.contract.Sequence
                              [ std.enum.TagOrString, [| 'json |] ],
                        name = String,
                        scmid = String,
                        spec =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      file = String,
                                      files = js2n.array.ArrayOf String,
                                      key = String,
                                      query = String,
                                      value = String,
                                      versionfilter =
                                        js2n.record.Record
                                            {
                                              additional = 'None,
                                              patterns = {},
                                              properties =
                                                {
                                                    kind = String,
                                                    pattern = String,
                                                    regex = String,
                                                    strict = Bool,
                                                  },
                                              required = {},
                                            },
                                    },
                                required = {},
                              },
                        transformers =
                          js2n.array.ArrayOf
                              (js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        addprefix = String,
                                        addsuffix = String,
                                        find = String,
                                        findsubmatch =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      captureindex =
                                                        std.number.Integer,
                                                      pattern = String,
                                                    },
                                                required = { pattern = true, },
                                              },
                                        quote = Bool,
                                        replacer =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      from = String,
                                                      to = String,
                                                    },
                                                required =
                                                  { from = true, to = true, },
                                              },
                                        replacers =
                                          js2n.array.ArrayOf
                                              (js2n.record.Record
                                                {
                                                  additional = 'None,
                                                  patterns = {},
                                                  properties =
                                                    {
                                                        from = String,
                                                        to = String,
                                                      },
                                                  required =
                                                    { from = true, to = true, },
                                                }),
                                        semverinc = String,
                                        trimprefix = String,
                                        trimsuffix = String,
                                        unquote = Bool,
                                      },
                                  required = {},
                                }),
                      },
                  required = { kind = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        dependson = js2n.array.ArrayOf String,
                        kind =
                          std.contract.Sequence
                              [ std.enum.TagOrString, [| 'maven |] ],
                        name = String,
                        scmid = String,
                        spec =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      artifactid = String,
                                      groupid = String,
                                      repositories = js2n.array.ArrayOf String,
                                      repository = String,
                                      url = String,
                                      version = String,
                                      versionfilter =
                                        js2n.record.Record
                                            {
                                              additional = 'None,
                                              patterns = {},
                                              properties =
                                                {
                                                    kind = String,
                                                    pattern = String,
                                                    regex = String,
                                                    strict = Bool,
                                                  },
                                              required = {},
                                            },
                                    },
                                required = {},
                              },
                        transformers =
                          js2n.array.ArrayOf
                              (js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        addprefix = String,
                                        addsuffix = String,
                                        find = String,
                                        findsubmatch =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      captureindex =
                                                        std.number.Integer,
                                                      pattern = String,
                                                    },
                                                required = { pattern = true, },
                                              },
                                        quote = Bool,
                                        replacer =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      from = String,
                                                      to = String,
                                                    },
                                                required =
                                                  { from = true, to = true, },
                                              },
                                        replacers =
                                          js2n.array.ArrayOf
                                              (js2n.record.Record
                                                {
                                                  additional = 'None,
                                                  patterns = {},
                                                  properties =
                                                    {
                                                        from = String,
                                                        to = String,
                                                      },
                                                  required =
                                                    { from = true, to = true, },
                                                }),
                                        semverinc = String,
                                        trimprefix = String,
                                        trimsuffix = String,
                                        unquote = Bool,
                                      },
                                  required = {},
                                }),
                      },
                  required = { kind = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        dependson = js2n.array.ArrayOf String,
                        kind =
                          std.contract.Sequence
                              [ std.enum.TagOrString, [| 'npm |] ],
                        name = String,
                        scmid = String,
                        spec =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      name = String,
                                      npmrcpath = String,
                                      registrytoken = String,
                                      url = String,
                                      version = String,
                                      versionfilter =
                                        js2n.record.Record
                                            {
                                              additional = 'None,
                                              patterns = {},
                                              properties =
                                                {
                                                    kind = String,
                                                    pattern = String,
                                                    regex = String,
                                                    strict = Bool,
                                                  },
                                              required = {},
                                            },
                                    },
                                required = {},
                              },
                        transformers =
                          js2n.array.ArrayOf
                              (js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        addprefix = String,
                                        addsuffix = String,
                                        find = String,
                                        findsubmatch =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      captureindex =
                                                        std.number.Integer,
                                                      pattern = String,
                                                    },
                                                required = { pattern = true, },
                                              },
                                        quote = Bool,
                                        replacer =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      from = String,
                                                      to = String,
                                                    },
                                                required =
                                                  { from = true, to = true, },
                                              },
                                        replacers =
                                          js2n.array.ArrayOf
                                              (js2n.record.Record
                                                {
                                                  additional = 'None,
                                                  patterns = {},
                                                  properties =
                                                    {
                                                        from = String,
                                                        to = String,
                                                      },
                                                  required =
                                                    { from = true, to = true, },
                                                }),
                                        semverinc = String,
                                        trimprefix = String,
                                        trimsuffix = String,
                                        unquote = Bool,
                                      },
                                  required = {},
                                }),
                      },
                  required = { kind = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        dependson = js2n.array.ArrayOf String,
                        kind =
                          std.contract.Sequence
                              [ std.enum.TagOrString, [| 'shell |] ],
                        name = String,
                        scmid = String,
                        spec =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      changedif =
                                        js2n.OneOf
                                            [
                                              js2n.record.Record
                                                {
                                                  additional = 'None,
                                                  patterns = {},
                                                  properties =
                                                    {
                                                        kind =
                                                          std.contract.Sequence
                                                              [
                                                                std.enum.TagOrString,
                                                                [|
                                                                  '"console/output"
                                                                |]
                                                              ],
                                                        spec = js2n.Always,
                                                      },
                                                  required = {},
                                                },
                                              js2n.record.Record
                                                {
                                                  additional = 'None,
                                                  patterns = {},
                                                  properties =
                                                    {
                                                        kind =
                                                          std.contract.Sequence
                                                              [
                                                                std.enum.TagOrString,
                                                                [| 'exitcode |]
                                                              ],
                                                        spec =
                                                          js2n.record.Record
                                                              {
                                                                additional =
                                                                  'None,
                                                                patterns = {},
                                                                properties =
                                                                  {
                                                                      failure =
                                                                        std.number.Integer,
                                                                      success =
                                                                        std.number.Integer,
                                                                      warning =
                                                                        std.number.Integer,
                                                                    },
                                                                required =
                                                                  {
                                                                      failure =
                                                                        true,
                                                                      success =
                                                                        true,
                                                                      warning =
                                                                        true,
                                                                    },
                                                              },
                                                      },
                                                  required = {},
                                                },
                                              js2n.record.Record
                                                {
                                                  additional = 'None,
                                                  patterns = {},
                                                  properties =
                                                    {
                                                        kind =
                                                          std.contract.Sequence
                                                              [
                                                                std.enum.TagOrString,
                                                                [|
                                                                  '"file/checksum"
                                                                |]
                                                              ],
                                                        spec =
                                                          js2n.record.Record
                                                              {
                                                                additional =
                                                                  'None,
                                                                patterns = {},
                                                                properties =
                                                                  {
                                                                      files =
                                                                        js2n.array.ArrayOf
                                                                            String,
                                                                    },
                                                                required =
                                                                  {
                                                                      files =
                                                                        true,
                                                                    },
                                                              },
                                                      },
                                                  required = {},
                                                }
                                            ],
                                      command = String,
                                      environments =
                                        js2n.array.ArrayOf
                                            (js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      name = String,
                                                      value = String,
                                                    },
                                                required = { name = true, },
                                              }),
                                      shell = String,
                                      workdir = String,
                                    },
                                required = { command = true, },
                              },
                        transformers =
                          js2n.array.ArrayOf
                              (js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        addprefix = String,
                                        addsuffix = String,
                                        find = String,
                                        findsubmatch =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      captureindex =
                                                        std.number.Integer,
                                                      pattern = String,
                                                    },
                                                required = { pattern = true, },
                                              },
                                        quote = Bool,
                                        replacer =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      from = String,
                                                      to = String,
                                                    },
                                                required =
                                                  { from = true, to = true, },
                                              },
                                        replacers =
                                          js2n.array.ArrayOf
                                              (js2n.record.Record
                                                {
                                                  additional = 'None,
                                                  patterns = {},
                                                  properties =
                                                    {
                                                        from = String,
                                                        to = String,
                                                      },
                                                  required =
                                                    { from = true, to = true, },
                                                }),
                                        semverinc = String,
                                        trimprefix = String,
                                        trimsuffix = String,
                                        unquote = Bool,
                                      },
                                  required = {},
                                }),
                      },
                  required = { kind = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        dependson = js2n.array.ArrayOf String,
                        kind =
                          std.contract.Sequence
                              [ std.enum.TagOrString, [| '"stash/branch" |] ],
                        name = String,
                        scmid = String,
                        spec =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      branch = String,
                                      owner = String,
                                      password = String,
                                      repository = String,
                                      token = String,
                                      url = String,
                                      username = String,
                                      versionfilter =
                                        js2n.record.Record
                                            {
                                              additional = 'None,
                                              patterns = {},
                                              properties =
                                                {
                                                    kind = String,
                                                    pattern = String,
                                                    regex = String,
                                                    strict = Bool,
                                                  },
                                              required = {},
                                            },
                                    },
                                required =
                                  {
                                      owner = true,
                                      repository = true,
                                      url = true,
                                    },
                              },
                        transformers =
                          js2n.array.ArrayOf
                              (js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        addprefix = String,
                                        addsuffix = String,
                                        find = String,
                                        findsubmatch =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      captureindex =
                                                        std.number.Integer,
                                                      pattern = String,
                                                    },
                                                required = { pattern = true, },
                                              },
                                        quote = Bool,
                                        replacer =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      from = String,
                                                      to = String,
                                                    },
                                                required =
                                                  { from = true, to = true, },
                                              },
                                        replacers =
                                          js2n.array.ArrayOf
                                              (js2n.record.Record
                                                {
                                                  additional = 'None,
                                                  patterns = {},
                                                  properties =
                                                    {
                                                        from = String,
                                                        to = String,
                                                      },
                                                  required =
                                                    { from = true, to = true, },
                                                }),
                                        semverinc = String,
                                        trimprefix = String,
                                        trimsuffix = String,
                                        unquote = Bool,
                                      },
                                  required = {},
                                }),
                      },
                  required = { kind = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        dependson = js2n.array.ArrayOf String,
                        kind =
                          std.contract.Sequence
                              [ std.enum.TagOrString, [| '"stash/tag" |] ],
                        name = String,
                        scmid = String,
                        spec =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      owner = String,
                                      password = String,
                                      repository = String,
                                      tag = String,
                                      token = String,
                                      url = String,
                                      username = String,
                                      versionfilter =
                                        js2n.record.Record
                                            {
                                              additional = 'None,
                                              patterns = {},
                                              properties =
                                                {
                                                    kind = String,
                                                    pattern = String,
                                                    regex = String,
                                                    strict = Bool,
                                                  },
                                              required = {},
                                            },
                                    },
                                required =
                                  {
                                      owner = true,
                                      repository = true,
                                      url = true,
                                    },
                              },
                        transformers =
                          js2n.array.ArrayOf
                              (js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        addprefix = String,
                                        addsuffix = String,
                                        find = String,
                                        findsubmatch =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      captureindex =
                                                        std.number.Integer,
                                                      pattern = String,
                                                    },
                                                required = { pattern = true, },
                                              },
                                        quote = Bool,
                                        replacer =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      from = String,
                                                      to = String,
                                                    },
                                                required =
                                                  { from = true, to = true, },
                                              },
                                        replacers =
                                          js2n.array.ArrayOf
                                              (js2n.record.Record
                                                {
                                                  additional = 'None,
                                                  patterns = {},
                                                  properties =
                                                    {
                                                        from = String,
                                                        to = String,
                                                      },
                                                  required =
                                                    { from = true, to = true, },
                                                }),
                                        semverinc = String,
                                        trimprefix = String,
                                        trimsuffix = String,
                                        unquote = Bool,
                                      },
                                  required = {},
                                }),
                      },
                  required = { kind = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        dependson = js2n.array.ArrayOf String,
                        kind =
                          std.contract.Sequence
                              [ std.enum.TagOrString, [| 'temurin |] ],
                        name = String,
                        scmid = String,
                        spec =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      architecture = String,
                                      featureversion = std.number.Integer,
                                      imagetype = String,
                                      operatingsystem = String,
                                      platforms = js2n.array.ArrayOf String,
                                      project = String,
                                      releaseline = String,
                                      releasetype = String,
                                      result = String,
                                      specificversion = String,
                                    },
                                required = {},
                              },
                        transformers =
                          js2n.array.ArrayOf
                              (js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        addprefix = String,
                                        addsuffix = String,
                                        find = String,
                                        findsubmatch =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      captureindex =
                                                        std.number.Integer,
                                                      pattern = String,
                                                    },
                                                required = { pattern = true, },
                                              },
                                        quote = Bool,
                                        replacer =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      from = String,
                                                      to = String,
                                                    },
                                                required =
                                                  { from = true, to = true, },
                                              },
                                        replacers =
                                          js2n.array.ArrayOf
                                              (js2n.record.Record
                                                {
                                                  additional = 'None,
                                                  patterns = {},
                                                  properties =
                                                    {
                                                        from = String,
                                                        to = String,
                                                      },
                                                  required =
                                                    { from = true, to = true, },
                                                }),
                                        semverinc = String,
                                        trimprefix = String,
                                        trimsuffix = String,
                                        unquote = Bool,
                                      },
                                  required = {},
                                }),
                      },
                  required = { kind = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        dependson = js2n.array.ArrayOf String,
                        kind =
                          std.contract.Sequence
                              [ std.enum.TagOrString, [| '"terraform/file" |] ],
                        name = String,
                        scmid = String,
                        spec =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      file = String,
                                      files = js2n.array.ArrayOf String,
                                      path = String,
                                      value = String,
                                    },
                                required = {},
                              },
                        transformers =
                          js2n.array.ArrayOf
                              (js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        addprefix = String,
                                        addsuffix = String,
                                        find = String,
                                        findsubmatch =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      captureindex =
                                                        std.number.Integer,
                                                      pattern = String,
                                                    },
                                                required = { pattern = true, },
                                              },
                                        quote = Bool,
                                        replacer =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      from = String,
                                                      to = String,
                                                    },
                                                required =
                                                  { from = true, to = true, },
                                              },
                                        replacers =
                                          js2n.array.ArrayOf
                                              (js2n.record.Record
                                                {
                                                  additional = 'None,
                                                  patterns = {},
                                                  properties =
                                                    {
                                                        from = String,
                                                        to = String,
                                                      },
                                                  required =
                                                    { from = true, to = true, },
                                                }),
                                        semverinc = String,
                                        trimprefix = String,
                                        trimsuffix = String,
                                        unquote = Bool,
                                      },
                                  required = {},
                                }),
                      },
                  required = { kind = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        dependson = js2n.array.ArrayOf String,
                        kind =
                          std.contract.Sequence
                              [ std.enum.TagOrString, [| '"terraform/lock" |] ],
                        name = String,
                        scmid = String,
                        spec =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      file = String,
                                      files = js2n.array.ArrayOf String,
                                      platforms = js2n.array.ArrayOf String,
                                      provider = String,
                                      skipconstraints = Bool,
                                      value = String,
                                    },
                                required = {},
                              },
                        transformers =
                          js2n.array.ArrayOf
                              (js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        addprefix = String,
                                        addsuffix = String,
                                        find = String,
                                        findsubmatch =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      captureindex =
                                                        std.number.Integer,
                                                      pattern = String,
                                                    },
                                                required = { pattern = true, },
                                              },
                                        quote = Bool,
                                        replacer =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      from = String,
                                                      to = String,
                                                    },
                                                required =
                                                  { from = true, to = true, },
                                              },
                                        replacers =
                                          js2n.array.ArrayOf
                                              (js2n.record.Record
                                                {
                                                  additional = 'None,
                                                  patterns = {},
                                                  properties =
                                                    {
                                                        from = String,
                                                        to = String,
                                                      },
                                                  required =
                                                    { from = true, to = true, },
                                                }),
                                        semverinc = String,
                                        trimprefix = String,
                                        trimsuffix = String,
                                        unquote = Bool,
                                      },
                                  required = {},
                                }),
                      },
                  required = { kind = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        dependson = js2n.array.ArrayOf String,
                        kind =
                          std.contract.Sequence
                              [
                                std.enum.TagOrString,
                                [| '"terraform/provider" |]
                              ],
                        name = String,
                        scmid = String,
                        spec =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      file = String,
                                      files = js2n.array.ArrayOf String,
                                      provider = String,
                                      value = String,
                                    },
                                required = {},
                              },
                        transformers =
                          js2n.array.ArrayOf
                              (js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        addprefix = String,
                                        addsuffix = String,
                                        find = String,
                                        findsubmatch =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      captureindex =
                                                        std.number.Integer,
                                                      pattern = String,
                                                    },
                                                required = { pattern = true, },
                                              },
                                        quote = Bool,
                                        replacer =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      from = String,
                                                      to = String,
                                                    },
                                                required =
                                                  { from = true, to = true, },
                                              },
                                        replacers =
                                          js2n.array.ArrayOf
                                              (js2n.record.Record
                                                {
                                                  additional = 'None,
                                                  patterns = {},
                                                  properties =
                                                    {
                                                        from = String,
                                                        to = String,
                                                      },
                                                  required =
                                                    { from = true, to = true, },
                                                }),
                                        semverinc = String,
                                        trimprefix = String,
                                        trimsuffix = String,
                                        unquote = Bool,
                                      },
                                  required = {},
                                }),
                      },
                  required = { kind = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        dependson = js2n.array.ArrayOf String,
                        kind =
                          std.contract.Sequence
                              [
                                std.enum.TagOrString,
                                [| '"terraform/registry" |]
                              ],
                        name = String,
                        scmid = String,
                        spec =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      hostname = String,
                                      name = String,
                                      namespace = String,
                                      rawstring = String,
                                      targetsystem = String,
                                      type = String,
                                      version = String,
                                      versionfilter =
                                        js2n.record.Record
                                            {
                                              additional = 'None,
                                              patterns = {},
                                              properties =
                                                {
                                                    kind = String,
                                                    pattern = String,
                                                    regex = String,
                                                    strict = Bool,
                                                  },
                                              required = {},
                                            },
                                    },
                                required = {},
                              },
                        transformers =
                          js2n.array.ArrayOf
                              (js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        addprefix = String,
                                        addsuffix = String,
                                        find = String,
                                        findsubmatch =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      captureindex =
                                                        std.number.Integer,
                                                      pattern = String,
                                                    },
                                                required = { pattern = true, },
                                              },
                                        quote = Bool,
                                        replacer =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      from = String,
                                                      to = String,
                                                    },
                                                required =
                                                  { from = true, to = true, },
                                              },
                                        replacers =
                                          js2n.array.ArrayOf
                                              (js2n.record.Record
                                                {
                                                  additional = 'None,
                                                  patterns = {},
                                                  properties =
                                                    {
                                                        from = String,
                                                        to = String,
                                                      },
                                                  required =
                                                    { from = true, to = true, },
                                                }),
                                        semverinc = String,
                                        trimprefix = String,
                                        trimsuffix = String,
                                        unquote = Bool,
                                      },
                                  required = {},
                                }),
                      },
                  required = { kind = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        dependson = js2n.array.ArrayOf String,
                        kind =
                          std.contract.Sequence
                              [ std.enum.TagOrString, [| 'toml |] ],
                        name = String,
                        scmid = String,
                        spec =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      createmissingkey = Bool,
                                      file = String,
                                      files = js2n.array.ArrayOf String,
                                      key = String,
                                      query = String,
                                      value = String,
                                      versionfilter =
                                        js2n.record.Record
                                            {
                                              additional = 'None,
                                              patterns = {},
                                              properties =
                                                {
                                                    kind = String,
                                                    pattern = String,
                                                    regex = String,
                                                    strict = Bool,
                                                  },
                                              required = {},
                                            },
                                    },
                                required = {},
                              },
                        transformers =
                          js2n.array.ArrayOf
                              (js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        addprefix = String,
                                        addsuffix = String,
                                        find = String,
                                        findsubmatch =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      captureindex =
                                                        std.number.Integer,
                                                      pattern = String,
                                                    },
                                                required = { pattern = true, },
                                              },
                                        quote = Bool,
                                        replacer =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      from = String,
                                                      to = String,
                                                    },
                                                required =
                                                  { from = true, to = true, },
                                              },
                                        replacers =
                                          js2n.array.ArrayOf
                                              (js2n.record.Record
                                                {
                                                  additional = 'None,
                                                  patterns = {},
                                                  properties =
                                                    {
                                                        from = String,
                                                        to = String,
                                                      },
                                                  required =
                                                    { from = true, to = true, },
                                                }),
                                        semverinc = String,
                                        trimprefix = String,
                                        trimsuffix = String,
                                        unquote = Bool,
                                      },
                                  required = {},
                                }),
                      },
                  required = { kind = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        dependson = js2n.array.ArrayOf String,
                        kind =
                          std.contract.Sequence
                              [ std.enum.TagOrString, [| 'toolversions |] ],
                        name = String,
                        scmid = String,
                        spec =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      createmissingkey = Bool,
                                      file = String,
                                      files = js2n.array.ArrayOf String,
                                      key = String,
                                      value = String,
                                    },
                                required = {},
                              },
                        transformers =
                          js2n.array.ArrayOf
                              (js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        addprefix = String,
                                        addsuffix = String,
                                        find = String,
                                        findsubmatch =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      captureindex =
                                                        std.number.Integer,
                                                      pattern = String,
                                                    },
                                                required = { pattern = true, },
                                              },
                                        quote = Bool,
                                        replacer =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      from = String,
                                                      to = String,
                                                    },
                                                required =
                                                  { from = true, to = true, },
                                              },
                                        replacers =
                                          js2n.array.ArrayOf
                                              (js2n.record.Record
                                                {
                                                  additional = 'None,
                                                  patterns = {},
                                                  properties =
                                                    {
                                                        from = String,
                                                        to = String,
                                                      },
                                                  required =
                                                    { from = true, to = true, },
                                                }),
                                        semverinc = String,
                                        trimprefix = String,
                                        trimsuffix = String,
                                        unquote = Bool,
                                      },
                                  required = {},
                                }),
                      },
                  required = { kind = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        dependson = js2n.array.ArrayOf String,
                        kind =
                          std.contract.Sequence
                              [ std.enum.TagOrString, [| 'xml |] ],
                        name = String,
                        scmid = String,
                        spec =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      file = String,
                                      path = String,
                                      value = String,
                                    },
                                required = {},
                              },
                        transformers =
                          js2n.array.ArrayOf
                              (js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        addprefix = String,
                                        addsuffix = String,
                                        find = String,
                                        findsubmatch =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      captureindex =
                                                        std.number.Integer,
                                                      pattern = String,
                                                    },
                                                required = { pattern = true, },
                                              },
                                        quote = Bool,
                                        replacer =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      from = String,
                                                      to = String,
                                                    },
                                                required =
                                                  { from = true, to = true, },
                                              },
                                        replacers =
                                          js2n.array.ArrayOf
                                              (js2n.record.Record
                                                {
                                                  additional = 'None,
                                                  patterns = {},
                                                  properties =
                                                    {
                                                        from = String,
                                                        to = String,
                                                      },
                                                  required =
                                                    { from = true, to = true, },
                                                }),
                                        semverinc = String,
                                        trimprefix = String,
                                        trimsuffix = String,
                                        unquote = Bool,
                                      },
                                  required = {},
                                }),
                      },
                  required = { kind = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        dependson = js2n.array.ArrayOf String,
                        kind =
                          std.contract.Sequence
                              [ std.enum.TagOrString, [| 'yaml |] ],
                        name = String,
                        scmid = String,
                        spec =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      comment = String,
                                      engine = String,
                                      file = String,
                                      files = js2n.array.ArrayOf String,
                                      key = String,
                                      keyonly = Bool,
                                      searchpattern = Bool,
                                      value = String,
                                    },
                                required = {},
                              },
                        transformers =
                          js2n.array.ArrayOf
                              (js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        addprefix = String,
                                        addsuffix = String,
                                        find = String,
                                        findsubmatch =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      captureindex =
                                                        std.number.Integer,
                                                      pattern = String,
                                                    },
                                                required = { pattern = true, },
                                              },
                                        quote = Bool,
                                        replacer =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      from = String,
                                                      to = String,
                                                    },
                                                required =
                                                  { from = true, to = true, },
                                              },
                                        replacers =
                                          js2n.array.ArrayOf
                                              (js2n.record.Record
                                                {
                                                  additional = 'None,
                                                  patterns = {},
                                                  properties =
                                                    {
                                                        from = String,
                                                        to = String,
                                                      },
                                                  required =
                                                    { from = true, to = true, },
                                                }),
                                        semverinc = String,
                                        trimprefix = String,
                                        trimsuffix = String,
                                        unquote = Bool,
                                      },
                                  required = {},
                                }),
                      },
                  required = { kind = true, },
                }
            ]
        }
        | doc m%"
          "sources" defines the list of Updatecli source definition.
          
          		example:
          		---
          		sources:
          			# Source to retrieve the latest version of nodejs
          			nodejs:
          				name: Get latest nodejs version
          				kind: json
          				spec:
          					file: https://nodejs.org/dist/index.json
          					key: .(lts!=false).version
          		---
        "%
        | optional,
      targets
        | {
          _ | js2n.OneOf
            [
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        dependson = js2n.array.ArrayOf String,
                        dependsonchange = Bool,
                        deprecatedconditionids = js2n.array.ArrayOf String,
                        disableconditions = Bool,
                        disablesourceinput = Bool,
                        kind =
                          std.contract.Sequence
                              [ std.enum.TagOrString, [| '"aws/ami" |] ],
                        name = String,
                        scmid = String,
                        sourceid = String,
                        spec =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      accesskey = String,
                                      dryrun = Bool,
                                      endpoint = String,
                                      filters =
                                        js2n.array.ArrayOf
                                            (js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      name = String,
                                                      values = String,
                                                    },
                                                required = {},
                                              }),
                                      region = String,
                                      secretkey = String,
                                      sortby = String,
                                    },
                                required = {},
                              },
                        transformers =
                          js2n.array.ArrayOf
                              (js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        addprefix = String,
                                        addsuffix = String,
                                        find = String,
                                        findsubmatch =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      captureindex =
                                                        std.number.Integer,
                                                      pattern = String,
                                                    },
                                                required = { pattern = true, },
                                              },
                                        quote = Bool,
                                        replacer =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      from = String,
                                                      to = String,
                                                    },
                                                required =
                                                  { from = true, to = true, },
                                              },
                                        replacers =
                                          js2n.array.ArrayOf
                                              (js2n.record.Record
                                                {
                                                  additional = 'None,
                                                  patterns = {},
                                                  properties =
                                                    {
                                                        from = String,
                                                        to = String,
                                                      },
                                                  required =
                                                    { from = true, to = true, },
                                                }),
                                        semverinc = String,
                                        trimprefix = String,
                                        trimsuffix = String,
                                        unquote = Bool,
                                      },
                                  required = {},
                                }),
                      },
                  required = { kind = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        dependson = js2n.array.ArrayOf String,
                        dependsonchange = Bool,
                        deprecatedconditionids = js2n.array.ArrayOf String,
                        disableconditions = Bool,
                        disablesourceinput = Bool,
                        kind =
                          std.contract.Sequence
                              [ std.enum.TagOrString, [| 'cargopackage |] ],
                        name = String,
                        scmid = String,
                        sourceid = String,
                        spec =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      package = String,
                                      registry =
                                        js2n.record.Record
                                            {
                                              additional = 'None,
                                              patterns = {},
                                              properties =
                                                {
                                                    auth =
                                                      js2n.record.Record
                                                          {
                                                            additional = 'None,
                                                            patterns = {},
                                                            properties =
                                                              {
                                                                  headerformat =
                                                                    String,
                                                                  token =
                                                                    String,
                                                                },
                                                            required = {},
                                                          },
                                                    rootdir = String,
                                                    scmid = String,
                                                    url = String,
                                                  },
                                              required = {},
                                            },
                                      version = String,
                                      versionfilter =
                                        js2n.record.Record
                                            {
                                              additional = 'None,
                                              patterns = {},
                                              properties =
                                                {
                                                    kind = String,
                                                    pattern = String,
                                                    regex = String,
                                                    strict = Bool,
                                                  },
                                              required = {},
                                            },
                                    },
                                required = { package = true, },
                              },
                        transformers =
                          js2n.array.ArrayOf
                              (js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        addprefix = String,
                                        addsuffix = String,
                                        find = String,
                                        findsubmatch =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      captureindex =
                                                        std.number.Integer,
                                                      pattern = String,
                                                    },
                                                required = { pattern = true, },
                                              },
                                        quote = Bool,
                                        replacer =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      from = String,
                                                      to = String,
                                                    },
                                                required =
                                                  { from = true, to = true, },
                                              },
                                        replacers =
                                          js2n.array.ArrayOf
                                              (js2n.record.Record
                                                {
                                                  additional = 'None,
                                                  patterns = {},
                                                  properties =
                                                    {
                                                        from = String,
                                                        to = String,
                                                      },
                                                  required =
                                                    { from = true, to = true, },
                                                }),
                                        semverinc = String,
                                        trimprefix = String,
                                        trimsuffix = String,
                                        unquote = Bool,
                                      },
                                  required = {},
                                }),
                      },
                  required = { kind = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        dependson = js2n.array.ArrayOf String,
                        dependsonchange = Bool,
                        deprecatedconditionids = js2n.array.ArrayOf String,
                        disableconditions = Bool,
                        disablesourceinput = Bool,
                        kind =
                          std.contract.Sequence
                              [ std.enum.TagOrString, [| 'csv |] ],
                        name = String,
                        scmid = String,
                        sourceid = String,
                        spec =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      comma = std.number.Integer,
                                      comment = std.number.Integer,
                                      file = String,
                                      files = js2n.array.ArrayOf String,
                                      key = String,
                                      query = String,
                                      value = String,
                                      versionfilter =
                                        js2n.record.Record
                                            {
                                              additional = 'None,
                                              patterns = {},
                                              properties =
                                                {
                                                    kind = String,
                                                    pattern = String,
                                                    regex = String,
                                                    strict = Bool,
                                                  },
                                              required = {},
                                            },
                                    },
                                required = {},
                              },
                        transformers =
                          js2n.array.ArrayOf
                              (js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        addprefix = String,
                                        addsuffix = String,
                                        find = String,
                                        findsubmatch =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      captureindex =
                                                        std.number.Integer,
                                                      pattern = String,
                                                    },
                                                required = { pattern = true, },
                                              },
                                        quote = Bool,
                                        replacer =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      from = String,
                                                      to = String,
                                                    },
                                                required =
                                                  { from = true, to = true, },
                                              },
                                        replacers =
                                          js2n.array.ArrayOf
                                              (js2n.record.Record
                                                {
                                                  additional = 'None,
                                                  patterns = {},
                                                  properties =
                                                    {
                                                        from = String,
                                                        to = String,
                                                      },
                                                  required =
                                                    { from = true, to = true, },
                                                }),
                                        semverinc = String,
                                        trimprefix = String,
                                        trimsuffix = String,
                                        unquote = Bool,
                                      },
                                  required = {},
                                }),
                      },
                  required = { kind = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        dependson = js2n.array.ArrayOf String,
                        dependsonchange = Bool,
                        deprecatedconditionids = js2n.array.ArrayOf String,
                        disableconditions = Bool,
                        disablesourceinput = Bool,
                        kind =
                          std.contract.Sequence
                              [ std.enum.TagOrString, [| 'dockerdigest |] ],
                        name = String,
                        scmid = String,
                        sourceid = String,
                        spec =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      architecture = String,
                                      digest = String,
                                      hidetag = Bool,
                                      image = String,
                                      password = String,
                                      tag = String,
                                      token = String,
                                      username = String,
                                    },
                                required = {},
                              },
                        transformers =
                          js2n.array.ArrayOf
                              (js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        addprefix = String,
                                        addsuffix = String,
                                        find = String,
                                        findsubmatch =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      captureindex =
                                                        std.number.Integer,
                                                      pattern = String,
                                                    },
                                                required = { pattern = true, },
                                              },
                                        quote = Bool,
                                        replacer =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      from = String,
                                                      to = String,
                                                    },
                                                required =
                                                  { from = true, to = true, },
                                              },
                                        replacers =
                                          js2n.array.ArrayOf
                                              (js2n.record.Record
                                                {
                                                  additional = 'None,
                                                  patterns = {},
                                                  properties =
                                                    {
                                                        from = String,
                                                        to = String,
                                                      },
                                                  required =
                                                    { from = true, to = true, },
                                                }),
                                        semverinc = String,
                                        trimprefix = String,
                                        trimsuffix = String,
                                        unquote = Bool,
                                      },
                                  required = {},
                                }),
                      },
                  required = { kind = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        dependson = js2n.array.ArrayOf String,
                        dependsonchange = Bool,
                        deprecatedconditionids = js2n.array.ArrayOf String,
                        disableconditions = Bool,
                        disablesourceinput = Bool,
                        kind =
                          std.contract.Sequence
                              [ std.enum.TagOrString, [| 'dockerfile |] ],
                        name = String,
                        scmid = String,
                        sourceid = String,
                        spec =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      file = String,
                                      files = js2n.array.ArrayOf String,
                                      instruction =
                                        std.contract.any_of
                                            [
                                              js2n.Null,
                                              Bool,
                                              Number,
                                              String,
                                              { _ | Dyn },
                                              Array Dyn
                                            ],
                                      stage = String,
                                      value = String,
                                    },
                                required = {},
                              },
                        transformers =
                          js2n.array.ArrayOf
                              (js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        addprefix = String,
                                        addsuffix = String,
                                        find = String,
                                        findsubmatch =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      captureindex =
                                                        std.number.Integer,
                                                      pattern = String,
                                                    },
                                                required = { pattern = true, },
                                              },
                                        quote = Bool,
                                        replacer =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      from = String,
                                                      to = String,
                                                    },
                                                required =
                                                  { from = true, to = true, },
                                              },
                                        replacers =
                                          js2n.array.ArrayOf
                                              (js2n.record.Record
                                                {
                                                  additional = 'None,
                                                  patterns = {},
                                                  properties =
                                                    {
                                                        from = String,
                                                        to = String,
                                                      },
                                                  required =
                                                    { from = true, to = true, },
                                                }),
                                        semverinc = String,
                                        trimprefix = String,
                                        trimsuffix = String,
                                        unquote = Bool,
                                      },
                                  required = {},
                                }),
                      },
                  required = { kind = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        dependson = js2n.array.ArrayOf String,
                        dependsonchange = Bool,
                        deprecatedconditionids = js2n.array.ArrayOf String,
                        disableconditions = Bool,
                        disablesourceinput = Bool,
                        kind =
                          std.contract.Sequence
                              [ std.enum.TagOrString, [| 'dockerimage |] ],
                        name = String,
                        scmid = String,
                        sourceid = String,
                        spec =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      architecture = String,
                                      architectures = js2n.array.ArrayOf String,
                                      image = String,
                                      password = String,
                                      tag = String,
                                      tagfilter = String,
                                      token = String,
                                      username = String,
                                      versionfilter =
                                        js2n.record.Record
                                            {
                                              additional = 'None,
                                              patterns = {},
                                              properties =
                                                {
                                                    kind = String,
                                                    pattern = String,
                                                    regex = String,
                                                    strict = Bool,
                                                  },
                                              required = {},
                                            },
                                    },
                                required = {},
                              },
                        transformers =
                          js2n.array.ArrayOf
                              (js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        addprefix = String,
                                        addsuffix = String,
                                        find = String,
                                        findsubmatch =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      captureindex =
                                                        std.number.Integer,
                                                      pattern = String,
                                                    },
                                                required = { pattern = true, },
                                              },
                                        quote = Bool,
                                        replacer =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      from = String,
                                                      to = String,
                                                    },
                                                required =
                                                  { from = true, to = true, },
                                              },
                                        replacers =
                                          js2n.array.ArrayOf
                                              (js2n.record.Record
                                                {
                                                  additional = 'None,
                                                  patterns = {},
                                                  properties =
                                                    {
                                                        from = String,
                                                        to = String,
                                                      },
                                                  required =
                                                    { from = true, to = true, },
                                                }),
                                        semverinc = String,
                                        trimprefix = String,
                                        trimsuffix = String,
                                        unquote = Bool,
                                      },
                                  required = {},
                                }),
                      },
                  required = { kind = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        dependson = js2n.array.ArrayOf String,
                        dependsonchange = Bool,
                        deprecatedconditionids = js2n.array.ArrayOf String,
                        disableconditions = Bool,
                        disablesourceinput = Bool,
                        kind =
                          std.contract.Sequence
                              [ std.enum.TagOrString, [| 'file |] ],
                        name = String,
                        scmid = String,
                        sourceid = String,
                        spec =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      content = String,
                                      file = String,
                                      files = js2n.array.ArrayOf String,
                                      forcecreate = Bool,
                                      line = std.number.Integer,
                                      matchpattern = String,
                                      replacepattern = String,
                                      searchpattern = Bool,
                                    },
                                required = {},
                              },
                        transformers =
                          js2n.array.ArrayOf
                              (js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        addprefix = String,
                                        addsuffix = String,
                                        find = String,
                                        findsubmatch =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      captureindex =
                                                        std.number.Integer,
                                                      pattern = String,
                                                    },
                                                required = { pattern = true, },
                                              },
                                        quote = Bool,
                                        replacer =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      from = String,
                                                      to = String,
                                                    },
                                                required =
                                                  { from = true, to = true, },
                                              },
                                        replacers =
                                          js2n.array.ArrayOf
                                              (js2n.record.Record
                                                {
                                                  additional = 'None,
                                                  patterns = {},
                                                  properties =
                                                    {
                                                        from = String,
                                                        to = String,
                                                      },
                                                  required =
                                                    { from = true, to = true, },
                                                }),
                                        semverinc = String,
                                        trimprefix = String,
                                        trimsuffix = String,
                                        unquote = Bool,
                                      },
                                  required = {},
                                }),
                      },
                  required = { kind = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        dependson = js2n.array.ArrayOf String,
                        dependsonchange = Bool,
                        deprecatedconditionids = js2n.array.ArrayOf String,
                        disableconditions = Bool,
                        disablesourceinput = Bool,
                        kind =
                          std.contract.Sequence
                              [ std.enum.TagOrString, [| 'gitbranch |] ],
                        name = String,
                        scmid = String,
                        sourceid = String,
                        spec =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      branch = String,
                                      key = String,
                                      password = String,
                                      path = String,
                                      sourcebranch = String,
                                      url = String,
                                      username = String,
                                      versionfilter =
                                        js2n.record.Record
                                            {
                                              additional = 'None,
                                              patterns = {},
                                              properties =
                                                {
                                                    kind = String,
                                                    pattern = String,
                                                    regex = String,
                                                    strict = Bool,
                                                  },
                                              required = {},
                                            },
                                    },
                                required = { url = true, },
                              },
                        transformers =
                          js2n.array.ArrayOf
                              (js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        addprefix = String,
                                        addsuffix = String,
                                        find = String,
                                        findsubmatch =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      captureindex =
                                                        std.number.Integer,
                                                      pattern = String,
                                                    },
                                                required = { pattern = true, },
                                              },
                                        quote = Bool,
                                        replacer =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      from = String,
                                                      to = String,
                                                    },
                                                required =
                                                  { from = true, to = true, },
                                              },
                                        replacers =
                                          js2n.array.ArrayOf
                                              (js2n.record.Record
                                                {
                                                  additional = 'None,
                                                  patterns = {},
                                                  properties =
                                                    {
                                                        from = String,
                                                        to = String,
                                                      },
                                                  required =
                                                    { from = true, to = true, },
                                                }),
                                        semverinc = String,
                                        trimprefix = String,
                                        trimsuffix = String,
                                        unquote = Bool,
                                      },
                                  required = {},
                                }),
                      },
                  required = { kind = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        dependson = js2n.array.ArrayOf String,
                        dependsonchange = Bool,
                        deprecatedconditionids = js2n.array.ArrayOf String,
                        disableconditions = Bool,
                        disablesourceinput = Bool,
                        kind =
                          std.contract.Sequence
                              [ std.enum.TagOrString, [| '"gitea/branch" |] ],
                        name = String,
                        scmid = String,
                        sourceid = String,
                        spec =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      branch = String,
                                      owner = String,
                                      repository = String,
                                      token = String,
                                      url = String,
                                      username = String,
                                      versionfilter =
                                        js2n.record.Record
                                            {
                                              additional = 'None,
                                              patterns = {},
                                              properties =
                                                {
                                                    kind = String,
                                                    pattern = String,
                                                    regex = String,
                                                    strict = Bool,
                                                  },
                                              required = {},
                                            },
                                    },
                                required =
                                  {
                                      owner = true,
                                      repository = true,
                                      url = true,
                                    },
                              },
                        transformers =
                          js2n.array.ArrayOf
                              (js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        addprefix = String,
                                        addsuffix = String,
                                        find = String,
                                        findsubmatch =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      captureindex =
                                                        std.number.Integer,
                                                      pattern = String,
                                                    },
                                                required = { pattern = true, },
                                              },
                                        quote = Bool,
                                        replacer =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      from = String,
                                                      to = String,
                                                    },
                                                required =
                                                  { from = true, to = true, },
                                              },
                                        replacers =
                                          js2n.array.ArrayOf
                                              (js2n.record.Record
                                                {
                                                  additional = 'None,
                                                  patterns = {},
                                                  properties =
                                                    {
                                                        from = String,
                                                        to = String,
                                                      },
                                                  required =
                                                    { from = true, to = true, },
                                                }),
                                        semverinc = String,
                                        trimprefix = String,
                                        trimsuffix = String,
                                        unquote = Bool,
                                      },
                                  required = {},
                                }),
                      },
                  required = { kind = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        dependson = js2n.array.ArrayOf String,
                        dependsonchange = Bool,
                        deprecatedconditionids = js2n.array.ArrayOf String,
                        disableconditions = Bool,
                        disablesourceinput = Bool,
                        kind =
                          std.contract.Sequence
                              [ std.enum.TagOrString, [| '"gitea/release" |] ],
                        name = String,
                        scmid = String,
                        sourceid = String,
                        spec =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      commitish = String,
                                      description = String,
                                      draft = Bool,
                                      owner = String,
                                      prerelease = Bool,
                                      repository = String,
                                      tag = String,
                                      title = String,
                                      token = String,
                                      url = String,
                                      username = String,
                                      versionfilter =
                                        js2n.record.Record
                                            {
                                              additional = 'None,
                                              patterns = {},
                                              properties =
                                                {
                                                    kind = String,
                                                    pattern = String,
                                                    regex = String,
                                                    strict = Bool,
                                                  },
                                              required = {},
                                            },
                                    },
                                required =
                                  {
                                      owner = true,
                                      repository = true,
                                      url = true,
                                    },
                              },
                        transformers =
                          js2n.array.ArrayOf
                              (js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        addprefix = String,
                                        addsuffix = String,
                                        find = String,
                                        findsubmatch =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      captureindex =
                                                        std.number.Integer,
                                                      pattern = String,
                                                    },
                                                required = { pattern = true, },
                                              },
                                        quote = Bool,
                                        replacer =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      from = String,
                                                      to = String,
                                                    },
                                                required =
                                                  { from = true, to = true, },
                                              },
                                        replacers =
                                          js2n.array.ArrayOf
                                              (js2n.record.Record
                                                {
                                                  additional = 'None,
                                                  patterns = {},
                                                  properties =
                                                    {
                                                        from = String,
                                                        to = String,
                                                      },
                                                  required =
                                                    { from = true, to = true, },
                                                }),
                                        semverinc = String,
                                        trimprefix = String,
                                        trimsuffix = String,
                                        unquote = Bool,
                                      },
                                  required = {},
                                }),
                      },
                  required = { kind = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        dependson = js2n.array.ArrayOf String,
                        dependsonchange = Bool,
                        deprecatedconditionids = js2n.array.ArrayOf String,
                        disableconditions = Bool,
                        disablesourceinput = Bool,
                        kind =
                          std.contract.Sequence
                              [ std.enum.TagOrString, [| '"gitea/tag" |] ],
                        name = String,
                        scmid = String,
                        sourceid = String,
                        spec =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      owner = String,
                                      repository = String,
                                      tag = String,
                                      token = String,
                                      url = String,
                                      username = String,
                                      versionfilter =
                                        js2n.record.Record
                                            {
                                              additional = 'None,
                                              patterns = {},
                                              properties =
                                                {
                                                    kind = String,
                                                    pattern = String,
                                                    regex = String,
                                                    strict = Bool,
                                                  },
                                              required = {},
                                            },
                                    },
                                required =
                                  {
                                      owner = true,
                                      repository = true,
                                      url = true,
                                    },
                              },
                        transformers =
                          js2n.array.ArrayOf
                              (js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        addprefix = String,
                                        addsuffix = String,
                                        find = String,
                                        findsubmatch =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      captureindex =
                                                        std.number.Integer,
                                                      pattern = String,
                                                    },
                                                required = { pattern = true, },
                                              },
                                        quote = Bool,
                                        replacer =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      from = String,
                                                      to = String,
                                                    },
                                                required =
                                                  { from = true, to = true, },
                                              },
                                        replacers =
                                          js2n.array.ArrayOf
                                              (js2n.record.Record
                                                {
                                                  additional = 'None,
                                                  patterns = {},
                                                  properties =
                                                    {
                                                        from = String,
                                                        to = String,
                                                      },
                                                  required =
                                                    { from = true, to = true, },
                                                }),
                                        semverinc = String,
                                        trimprefix = String,
                                        trimsuffix = String,
                                        unquote = Bool,
                                      },
                                  required = {},
                                }),
                      },
                  required = { kind = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        dependson = js2n.array.ArrayOf String,
                        dependsonchange = Bool,
                        deprecatedconditionids = js2n.array.ArrayOf String,
                        disableconditions = Bool,
                        disablesourceinput = Bool,
                        kind =
                          std.contract.Sequence
                              [ std.enum.TagOrString, [| 'githubrelease |] ],
                        name = String,
                        scmid = String,
                        sourceid = String,
                        spec =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      key = String,
                                      owner = String,
                                      repository = String,
                                      tag = String,
                                      token = String,
                                      typefilter =
                                        js2n.record.Record
                                            {
                                              additional = 'None,
                                              patterns = {},
                                              properties =
                                                {
                                                    draft = Bool,
                                                    latest = Bool,
                                                    prerelease = Bool,
                                                    release = Bool,
                                                  },
                                              required = {},
                                            },
                                      url = String,
                                      username = String,
                                      versionfilter =
                                        js2n.record.Record
                                            {
                                              additional = 'None,
                                              patterns = {},
                                              properties =
                                                {
                                                    kind = String,
                                                    pattern = String,
                                                    regex = String,
                                                    strict = Bool,
                                                  },
                                              required = {},
                                            },
                                    },
                                required =
                                  {
                                      owner = true,
                                      repository = true,
                                      token = true,
                                    },
                              },
                        transformers =
                          js2n.array.ArrayOf
                              (js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        addprefix = String,
                                        addsuffix = String,
                                        find = String,
                                        findsubmatch =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      captureindex =
                                                        std.number.Integer,
                                                      pattern = String,
                                                    },
                                                required = { pattern = true, },
                                              },
                                        quote = Bool,
                                        replacer =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      from = String,
                                                      to = String,
                                                    },
                                                required =
                                                  { from = true, to = true, },
                                              },
                                        replacers =
                                          js2n.array.ArrayOf
                                              (js2n.record.Record
                                                {
                                                  additional = 'None,
                                                  patterns = {},
                                                  properties =
                                                    {
                                                        from = String,
                                                        to = String,
                                                      },
                                                  required =
                                                    { from = true, to = true, },
                                                }),
                                        semverinc = String,
                                        trimprefix = String,
                                        trimsuffix = String,
                                        unquote = Bool,
                                      },
                                  required = {},
                                }),
                      },
                  required = { kind = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        dependson = js2n.array.ArrayOf String,
                        dependsonchange = Bool,
                        deprecatedconditionids = js2n.array.ArrayOf String,
                        disableconditions = Bool,
                        disablesourceinput = Bool,
                        kind =
                          std.contract.Sequence
                              [ std.enum.TagOrString, [| '"gitlab/branch" |] ],
                        name = String,
                        scmid = String,
                        sourceid = String,
                        spec =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      branch = String,
                                      owner = String,
                                      repository = String,
                                      token = String,
                                      tokentype = String,
                                      url = String,
                                      username = String,
                                      versionfilter =
                                        js2n.record.Record
                                            {
                                              additional = 'None,
                                              patterns = {},
                                              properties =
                                                {
                                                    kind = String,
                                                    pattern = String,
                                                    regex = String,
                                                    strict = Bool,
                                                  },
                                              required = {},
                                            },
                                    },
                                required = { owner = true, repository = true, },
                              },
                        transformers =
                          js2n.array.ArrayOf
                              (js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        addprefix = String,
                                        addsuffix = String,
                                        find = String,
                                        findsubmatch =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      captureindex =
                                                        std.number.Integer,
                                                      pattern = String,
                                                    },
                                                required = { pattern = true, },
                                              },
                                        quote = Bool,
                                        replacer =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      from = String,
                                                      to = String,
                                                    },
                                                required =
                                                  { from = true, to = true, },
                                              },
                                        replacers =
                                          js2n.array.ArrayOf
                                              (js2n.record.Record
                                                {
                                                  additional = 'None,
                                                  patterns = {},
                                                  properties =
                                                    {
                                                        from = String,
                                                        to = String,
                                                      },
                                                  required =
                                                    { from = true, to = true, },
                                                }),
                                        semverinc = String,
                                        trimprefix = String,
                                        trimsuffix = String,
                                        unquote = Bool,
                                      },
                                  required = {},
                                }),
                      },
                  required = { kind = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        dependson = js2n.array.ArrayOf String,
                        dependsonchange = Bool,
                        deprecatedconditionids = js2n.array.ArrayOf String,
                        disableconditions = Bool,
                        disablesourceinput = Bool,
                        kind =
                          std.contract.Sequence
                              [ std.enum.TagOrString, [| '"gitlab/release" |] ],
                        name = String,
                        scmid = String,
                        sourceid = String,
                        spec =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      commitish = String,
                                      description = String,
                                      draft = Bool,
                                      owner = String,
                                      prerelease = Bool,
                                      repository = String,
                                      tag = String,
                                      title = String,
                                      token = String,
                                      tokentype = String,
                                      url = String,
                                      username = String,
                                      versionfilter =
                                        js2n.record.Record
                                            {
                                              additional = 'None,
                                              patterns = {},
                                              properties =
                                                {
                                                    kind = String,
                                                    pattern = String,
                                                    regex = String,
                                                    strict = Bool,
                                                  },
                                              required = {},
                                            },
                                    },
                                required = { owner = true, repository = true, },
                              },
                        transformers =
                          js2n.array.ArrayOf
                              (js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        addprefix = String,
                                        addsuffix = String,
                                        find = String,
                                        findsubmatch =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      captureindex =
                                                        std.number.Integer,
                                                      pattern = String,
                                                    },
                                                required = { pattern = true, },
                                              },
                                        quote = Bool,
                                        replacer =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      from = String,
                                                      to = String,
                                                    },
                                                required =
                                                  { from = true, to = true, },
                                              },
                                        replacers =
                                          js2n.array.ArrayOf
                                              (js2n.record.Record
                                                {
                                                  additional = 'None,
                                                  patterns = {},
                                                  properties =
                                                    {
                                                        from = String,
                                                        to = String,
                                                      },
                                                  required =
                                                    { from = true, to = true, },
                                                }),
                                        semverinc = String,
                                        trimprefix = String,
                                        trimsuffix = String,
                                        unquote = Bool,
                                      },
                                  required = {},
                                }),
                      },
                  required = { kind = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        dependson = js2n.array.ArrayOf String,
                        dependsonchange = Bool,
                        deprecatedconditionids = js2n.array.ArrayOf String,
                        disableconditions = Bool,
                        disablesourceinput = Bool,
                        kind =
                          std.contract.Sequence
                              [ std.enum.TagOrString, [| '"gitlab/tag" |] ],
                        name = String,
                        scmid = String,
                        sourceid = String,
                        spec =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      owner = String,
                                      repository = String,
                                      tag = String,
                                      token = String,
                                      tokentype = String,
                                      url = String,
                                      username = String,
                                      versionfilter =
                                        js2n.record.Record
                                            {
                                              additional = 'None,
                                              patterns = {},
                                              properties =
                                                {
                                                    kind = String,
                                                    pattern = String,
                                                    regex = String,
                                                    strict = Bool,
                                                  },
                                              required = {},
                                            },
                                    },
                                required = { owner = true, repository = true, },
                              },
                        transformers =
                          js2n.array.ArrayOf
                              (js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        addprefix = String,
                                        addsuffix = String,
                                        find = String,
                                        findsubmatch =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      captureindex =
                                                        std.number.Integer,
                                                      pattern = String,
                                                    },
                                                required = { pattern = true, },
                                              },
                                        quote = Bool,
                                        replacer =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      from = String,
                                                      to = String,
                                                    },
                                                required =
                                                  { from = true, to = true, },
                                              },
                                        replacers =
                                          js2n.array.ArrayOf
                                              (js2n.record.Record
                                                {
                                                  additional = 'None,
                                                  patterns = {},
                                                  properties =
                                                    {
                                                        from = String,
                                                        to = String,
                                                      },
                                                  required =
                                                    { from = true, to = true, },
                                                }),
                                        semverinc = String,
                                        trimprefix = String,
                                        trimsuffix = String,
                                        unquote = Bool,
                                      },
                                  required = {},
                                }),
                      },
                  required = { kind = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        dependson = js2n.array.ArrayOf String,
                        dependsonchange = Bool,
                        deprecatedconditionids = js2n.array.ArrayOf String,
                        disableconditions = Bool,
                        disablesourceinput = Bool,
                        kind =
                          std.contract.Sequence
                              [ std.enum.TagOrString, [| 'gittag |] ],
                        name = String,
                        scmid = String,
                        sourceid = String,
                        spec =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      key = String,
                                      message = String,
                                      password = String,
                                      path = String,
                                      sourcebranch = String,
                                      url = String,
                                      username = String,
                                      versionfilter =
                                        js2n.record.Record
                                            {
                                              additional = 'None,
                                              patterns = {},
                                              properties =
                                                {
                                                    kind = String,
                                                    pattern = String,
                                                    regex = String,
                                                    strict = Bool,
                                                  },
                                              required = {},
                                            },
                                    },
                                required = { url = true, },
                              },
                        transformers =
                          js2n.array.ArrayOf
                              (js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        addprefix = String,
                                        addsuffix = String,
                                        find = String,
                                        findsubmatch =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      captureindex =
                                                        std.number.Integer,
                                                      pattern = String,
                                                    },
                                                required = { pattern = true, },
                                              },
                                        quote = Bool,
                                        replacer =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      from = String,
                                                      to = String,
                                                    },
                                                required =
                                                  { from = true, to = true, },
                                              },
                                        replacers =
                                          js2n.array.ArrayOf
                                              (js2n.record.Record
                                                {
                                                  additional = 'None,
                                                  patterns = {},
                                                  properties =
                                                    {
                                                        from = String,
                                                        to = String,
                                                      },
                                                  required =
                                                    { from = true, to = true, },
                                                }),
                                        semverinc = String,
                                        trimprefix = String,
                                        trimsuffix = String,
                                        unquote = Bool,
                                      },
                                  required = {},
                                }),
                      },
                  required = { kind = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        dependson = js2n.array.ArrayOf String,
                        dependsonchange = Bool,
                        deprecatedconditionids = js2n.array.ArrayOf String,
                        disableconditions = Bool,
                        disablesourceinput = Bool,
                        kind =
                          std.contract.Sequence
                              [ std.enum.TagOrString, [| 'golang |] ],
                        name = String,
                        scmid = String,
                        sourceid = String,
                        spec =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      version = String,
                                      versionfilter =
                                        js2n.record.Record
                                            {
                                              additional = 'None,
                                              patterns = {},
                                              properties =
                                                {
                                                    kind = String,
                                                    pattern = String,
                                                    regex = String,
                                                    strict = Bool,
                                                  },
                                              required = {},
                                            },
                                    },
                                required = {},
                              },
                        transformers =
                          js2n.array.ArrayOf
                              (js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        addprefix = String,
                                        addsuffix = String,
                                        find = String,
                                        findsubmatch =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      captureindex =
                                                        std.number.Integer,
                                                      pattern = String,
                                                    },
                                                required = { pattern = true, },
                                              },
                                        quote = Bool,
                                        replacer =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      from = String,
                                                      to = String,
                                                    },
                                                required =
                                                  { from = true, to = true, },
                                              },
                                        replacers =
                                          js2n.array.ArrayOf
                                              (js2n.record.Record
                                                {
                                                  additional = 'None,
                                                  patterns = {},
                                                  properties =
                                                    {
                                                        from = String,
                                                        to = String,
                                                      },
                                                  required =
                                                    { from = true, to = true, },
                                                }),
                                        semverinc = String,
                                        trimprefix = String,
                                        trimsuffix = String,
                                        unquote = Bool,
                                      },
                                  required = {},
                                }),
                      },
                  required = { kind = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        dependson = js2n.array.ArrayOf String,
                        dependsonchange = Bool,
                        deprecatedconditionids = js2n.array.ArrayOf String,
                        disableconditions = Bool,
                        disablesourceinput = Bool,
                        kind =
                          std.contract.Sequence
                              [ std.enum.TagOrString, [| '"golang/gomod" |] ],
                        name = String,
                        scmid = String,
                        sourceid = String,
                        spec =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      file = String,
                                      indirect = Bool,
                                      module = String,
                                      version = String,
                                    },
                                required = {},
                              },
                        transformers =
                          js2n.array.ArrayOf
                              (js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        addprefix = String,
                                        addsuffix = String,
                                        find = String,
                                        findsubmatch =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      captureindex =
                                                        std.number.Integer,
                                                      pattern = String,
                                                    },
                                                required = { pattern = true, },
                                              },
                                        quote = Bool,
                                        replacer =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      from = String,
                                                      to = String,
                                                    },
                                                required =
                                                  { from = true, to = true, },
                                              },
                                        replacers =
                                          js2n.array.ArrayOf
                                              (js2n.record.Record
                                                {
                                                  additional = 'None,
                                                  patterns = {},
                                                  properties =
                                                    {
                                                        from = String,
                                                        to = String,
                                                      },
                                                  required =
                                                    { from = true, to = true, },
                                                }),
                                        semverinc = String,
                                        trimprefix = String,
                                        trimsuffix = String,
                                        unquote = Bool,
                                      },
                                  required = {},
                                }),
                      },
                  required = { kind = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        dependson = js2n.array.ArrayOf String,
                        dependsonchange = Bool,
                        deprecatedconditionids = js2n.array.ArrayOf String,
                        disableconditions = Bool,
                        disablesourceinput = Bool,
                        kind =
                          std.contract.Sequence
                              [ std.enum.TagOrString, [| '"golang/module" |] ],
                        name = String,
                        scmid = String,
                        sourceid = String,
                        spec =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      module = String,
                                      proxy = String,
                                      version = String,
                                      versionfilter =
                                        js2n.record.Record
                                            {
                                              additional = 'None,
                                              patterns = {},
                                              properties =
                                                {
                                                    kind = String,
                                                    pattern = String,
                                                    regex = String,
                                                    strict = Bool,
                                                  },
                                              required = {},
                                            },
                                    },
                                required = { module = true, },
                              },
                        transformers =
                          js2n.array.ArrayOf
                              (js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        addprefix = String,
                                        addsuffix = String,
                                        find = String,
                                        findsubmatch =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      captureindex =
                                                        std.number.Integer,
                                                      pattern = String,
                                                    },
                                                required = { pattern = true, },
                                              },
                                        quote = Bool,
                                        replacer =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      from = String,
                                                      to = String,
                                                    },
                                                required =
                                                  { from = true, to = true, },
                                              },
                                        replacers =
                                          js2n.array.ArrayOf
                                              (js2n.record.Record
                                                {
                                                  additional = 'None,
                                                  patterns = {},
                                                  properties =
                                                    {
                                                        from = String,
                                                        to = String,
                                                      },
                                                  required =
                                                    { from = true, to = true, },
                                                }),
                                        semverinc = String,
                                        trimprefix = String,
                                        trimsuffix = String,
                                        unquote = Bool,
                                      },
                                  required = {},
                                }),
                      },
                  required = { kind = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        dependson = js2n.array.ArrayOf String,
                        dependsonchange = Bool,
                        deprecatedconditionids = js2n.array.ArrayOf String,
                        disableconditions = Bool,
                        disablesourceinput = Bool,
                        kind =
                          std.contract.Sequence
                              [ std.enum.TagOrString, [| 'hcl |] ],
                        name = String,
                        scmid = String,
                        sourceid = String,
                        spec =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      file = String,
                                      files = js2n.array.ArrayOf String,
                                      path = String,
                                      value = String,
                                    },
                                required = {},
                              },
                        transformers =
                          js2n.array.ArrayOf
                              (js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        addprefix = String,
                                        addsuffix = String,
                                        find = String,
                                        findsubmatch =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      captureindex =
                                                        std.number.Integer,
                                                      pattern = String,
                                                    },
                                                required = { pattern = true, },
                                              },
                                        quote = Bool,
                                        replacer =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      from = String,
                                                      to = String,
                                                    },
                                                required =
                                                  { from = true, to = true, },
                                              },
                                        replacers =
                                          js2n.array.ArrayOf
                                              (js2n.record.Record
                                                {
                                                  additional = 'None,
                                                  patterns = {},
                                                  properties =
                                                    {
                                                        from = String,
                                                        to = String,
                                                      },
                                                  required =
                                                    { from = true, to = true, },
                                                }),
                                        semverinc = String,
                                        trimprefix = String,
                                        trimsuffix = String,
                                        unquote = Bool,
                                      },
                                  required = {},
                                }),
                      },
                  required = { kind = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        dependson = js2n.array.ArrayOf String,
                        dependsonchange = Bool,
                        deprecatedconditionids = js2n.array.ArrayOf String,
                        disableconditions = Bool,
                        disablesourceinput = Bool,
                        kind =
                          std.contract.Sequence
                              [ std.enum.TagOrString, [| 'helmchart |] ],
                        name = String,
                        scmid = String,
                        sourceid = String,
                        spec =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      appversion = Bool,
                                      file = String,
                                      key = String,
                                      name = String,
                                      password = String,
                                      skippackaging = Bool,
                                      token = String,
                                      url = String,
                                      username = String,
                                      value = String,
                                      version = String,
                                      versionfilter =
                                        js2n.record.Record
                                            {
                                              additional = 'None,
                                              patterns = {},
                                              properties =
                                                {
                                                    kind = String,
                                                    pattern = String,
                                                    regex = String,
                                                    strict = Bool,
                                                  },
                                              required = {},
                                            },
                                      versionincrement = String,
                                    },
                                required = {},
                              },
                        transformers =
                          js2n.array.ArrayOf
                              (js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        addprefix = String,
                                        addsuffix = String,
                                        find = String,
                                        findsubmatch =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      captureindex =
                                                        std.number.Integer,
                                                      pattern = String,
                                                    },
                                                required = { pattern = true, },
                                              },
                                        quote = Bool,
                                        replacer =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      from = String,
                                                      to = String,
                                                    },
                                                required =
                                                  { from = true, to = true, },
                                              },
                                        replacers =
                                          js2n.array.ArrayOf
                                              (js2n.record.Record
                                                {
                                                  additional = 'None,
                                                  patterns = {},
                                                  properties =
                                                    {
                                                        from = String,
                                                        to = String,
                                                      },
                                                  required =
                                                    { from = true, to = true, },
                                                }),
                                        semverinc = String,
                                        trimprefix = String,
                                        trimsuffix = String,
                                        unquote = Bool,
                                      },
                                  required = {},
                                }),
                      },
                  required = { kind = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        dependson = js2n.array.ArrayOf String,
                        dependsonchange = Bool,
                        deprecatedconditionids = js2n.array.ArrayOf String,
                        disableconditions = Bool,
                        disablesourceinput = Bool,
                        kind =
                          std.contract.Sequence
                              [ std.enum.TagOrString, [| 'http |] ],
                        name = String,
                        scmid = String,
                        sourceid = String,
                        spec =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      request =
                                        js2n.record.Record
                                            {
                                              additional = 'None,
                                              patterns = {},
                                              properties =
                                                {
                                                    body = String,
                                                    headers =
                                                      js2n.record.Record
                                                          {
                                                            additional =
                                                              'Some String,
                                                            patterns = {},
                                                            properties = {},
                                                            required = {},
                                                          },
                                                    nofollowredirects = Bool,
                                                    verb = String,
                                                  },
                                              required = {},
                                            },
                                      responseasserts =
                                        js2n.record.Record
                                            {
                                              additional = 'None,
                                              patterns = {},
                                              properties =
                                                {
                                                    headers =
                                                      js2n.record.Record
                                                          {
                                                            additional =
                                                              'Some String,
                                                            patterns = {},
                                                            properties = {},
                                                            required = {},
                                                          },
                                                    statuscode =
                                                      std.number.Integer,
                                                  },
                                              required = {},
                                            },
                                      returnresponseheader = String,
                                      url = String,
                                    },
                                required = {},
                              },
                        transformers =
                          js2n.array.ArrayOf
                              (js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        addprefix = String,
                                        addsuffix = String,
                                        find = String,
                                        findsubmatch =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      captureindex =
                                                        std.number.Integer,
                                                      pattern = String,
                                                    },
                                                required = { pattern = true, },
                                              },
                                        quote = Bool,
                                        replacer =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      from = String,
                                                      to = String,
                                                    },
                                                required =
                                                  { from = true, to = true, },
                                              },
                                        replacers =
                                          js2n.array.ArrayOf
                                              (js2n.record.Record
                                                {
                                                  additional = 'None,
                                                  patterns = {},
                                                  properties =
                                                    {
                                                        from = String,
                                                        to = String,
                                                      },
                                                  required =
                                                    { from = true, to = true, },
                                                }),
                                        semverinc = String,
                                        trimprefix = String,
                                        trimsuffix = String,
                                        unquote = Bool,
                                      },
                                  required = {},
                                }),
                      },
                  required = { kind = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        dependson = js2n.array.ArrayOf String,
                        dependsonchange = Bool,
                        deprecatedconditionids = js2n.array.ArrayOf String,
                        disableconditions = Bool,
                        disablesourceinput = Bool,
                        kind =
                          std.contract.Sequence
                              [ std.enum.TagOrString, [| 'jenkins |] ],
                        name = String,
                        scmid = String,
                        sourceid = String,
                        spec =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  { release = String, version = String, },
                                required = {},
                              },
                        transformers =
                          js2n.array.ArrayOf
                              (js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        addprefix = String,
                                        addsuffix = String,
                                        find = String,
                                        findsubmatch =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      captureindex =
                                                        std.number.Integer,
                                                      pattern = String,
                                                    },
                                                required = { pattern = true, },
                                              },
                                        quote = Bool,
                                        replacer =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      from = String,
                                                      to = String,
                                                    },
                                                required =
                                                  { from = true, to = true, },
                                              },
                                        replacers =
                                          js2n.array.ArrayOf
                                              (js2n.record.Record
                                                {
                                                  additional = 'None,
                                                  patterns = {},
                                                  properties =
                                                    {
                                                        from = String,
                                                        to = String,
                                                      },
                                                  required =
                                                    { from = true, to = true, },
                                                }),
                                        semverinc = String,
                                        trimprefix = String,
                                        trimsuffix = String,
                                        unquote = Bool,
                                      },
                                  required = {},
                                }),
                      },
                  required = { kind = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        dependson = js2n.array.ArrayOf String,
                        dependsonchange = Bool,
                        deprecatedconditionids = js2n.array.ArrayOf String,
                        disableconditions = Bool,
                        disablesourceinput = Bool,
                        kind =
                          std.contract.Sequence
                              [ std.enum.TagOrString, [| 'json |] ],
                        name = String,
                        scmid = String,
                        sourceid = String,
                        spec =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      file = String,
                                      files = js2n.array.ArrayOf String,
                                      key = String,
                                      query = String,
                                      value = String,
                                      versionfilter =
                                        js2n.record.Record
                                            {
                                              additional = 'None,
                                              patterns = {},
                                              properties =
                                                {
                                                    kind = String,
                                                    pattern = String,
                                                    regex = String,
                                                    strict = Bool,
                                                  },
                                              required = {},
                                            },
                                    },
                                required = {},
                              },
                        transformers =
                          js2n.array.ArrayOf
                              (js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        addprefix = String,
                                        addsuffix = String,
                                        find = String,
                                        findsubmatch =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      captureindex =
                                                        std.number.Integer,
                                                      pattern = String,
                                                    },
                                                required = { pattern = true, },
                                              },
                                        quote = Bool,
                                        replacer =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      from = String,
                                                      to = String,
                                                    },
                                                required =
                                                  { from = true, to = true, },
                                              },
                                        replacers =
                                          js2n.array.ArrayOf
                                              (js2n.record.Record
                                                {
                                                  additional = 'None,
                                                  patterns = {},
                                                  properties =
                                                    {
                                                        from = String,
                                                        to = String,
                                                      },
                                                  required =
                                                    { from = true, to = true, },
                                                }),
                                        semverinc = String,
                                        trimprefix = String,
                                        trimsuffix = String,
                                        unquote = Bool,
                                      },
                                  required = {},
                                }),
                      },
                  required = { kind = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        dependson = js2n.array.ArrayOf String,
                        dependsonchange = Bool,
                        deprecatedconditionids = js2n.array.ArrayOf String,
                        disableconditions = Bool,
                        disablesourceinput = Bool,
                        kind =
                          std.contract.Sequence
                              [ std.enum.TagOrString, [| 'maven |] ],
                        name = String,
                        scmid = String,
                        sourceid = String,
                        spec =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      artifactid = String,
                                      groupid = String,
                                      repositories = js2n.array.ArrayOf String,
                                      repository = String,
                                      url = String,
                                      version = String,
                                      versionfilter =
                                        js2n.record.Record
                                            {
                                              additional = 'None,
                                              patterns = {},
                                              properties =
                                                {
                                                    kind = String,
                                                    pattern = String,
                                                    regex = String,
                                                    strict = Bool,
                                                  },
                                              required = {},
                                            },
                                    },
                                required = {},
                              },
                        transformers =
                          js2n.array.ArrayOf
                              (js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        addprefix = String,
                                        addsuffix = String,
                                        find = String,
                                        findsubmatch =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      captureindex =
                                                        std.number.Integer,
                                                      pattern = String,
                                                    },
                                                required = { pattern = true, },
                                              },
                                        quote = Bool,
                                        replacer =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      from = String,
                                                      to = String,
                                                    },
                                                required =
                                                  { from = true, to = true, },
                                              },
                                        replacers =
                                          js2n.array.ArrayOf
                                              (js2n.record.Record
                                                {
                                                  additional = 'None,
                                                  patterns = {},
                                                  properties =
                                                    {
                                                        from = String,
                                                        to = String,
                                                      },
                                                  required =
                                                    { from = true, to = true, },
                                                }),
                                        semverinc = String,
                                        trimprefix = String,
                                        trimsuffix = String,
                                        unquote = Bool,
                                      },
                                  required = {},
                                }),
                      },
                  required = { kind = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        dependson = js2n.array.ArrayOf String,
                        dependsonchange = Bool,
                        deprecatedconditionids = js2n.array.ArrayOf String,
                        disableconditions = Bool,
                        disablesourceinput = Bool,
                        kind =
                          std.contract.Sequence
                              [ std.enum.TagOrString, [| 'npm |] ],
                        name = String,
                        scmid = String,
                        sourceid = String,
                        spec =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      name = String,
                                      npmrcpath = String,
                                      registrytoken = String,
                                      url = String,
                                      version = String,
                                      versionfilter =
                                        js2n.record.Record
                                            {
                                              additional = 'None,
                                              patterns = {},
                                              properties =
                                                {
                                                    kind = String,
                                                    pattern = String,
                                                    regex = String,
                                                    strict = Bool,
                                                  },
                                              required = {},
                                            },
                                    },
                                required = {},
                              },
                        transformers =
                          js2n.array.ArrayOf
                              (js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        addprefix = String,
                                        addsuffix = String,
                                        find = String,
                                        findsubmatch =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      captureindex =
                                                        std.number.Integer,
                                                      pattern = String,
                                                    },
                                                required = { pattern = true, },
                                              },
                                        quote = Bool,
                                        replacer =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      from = String,
                                                      to = String,
                                                    },
                                                required =
                                                  { from = true, to = true, },
                                              },
                                        replacers =
                                          js2n.array.ArrayOf
                                              (js2n.record.Record
                                                {
                                                  additional = 'None,
                                                  patterns = {},
                                                  properties =
                                                    {
                                                        from = String,
                                                        to = String,
                                                      },
                                                  required =
                                                    { from = true, to = true, },
                                                }),
                                        semverinc = String,
                                        trimprefix = String,
                                        trimsuffix = String,
                                        unquote = Bool,
                                      },
                                  required = {},
                                }),
                      },
                  required = { kind = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        dependson = js2n.array.ArrayOf String,
                        dependsonchange = Bool,
                        deprecatedconditionids = js2n.array.ArrayOf String,
                        disableconditions = Bool,
                        disablesourceinput = Bool,
                        kind =
                          std.contract.Sequence
                              [ std.enum.TagOrString, [| 'shell |] ],
                        name = String,
                        scmid = String,
                        sourceid = String,
                        spec =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      changedif =
                                        js2n.OneOf
                                            [
                                              js2n.record.Record
                                                {
                                                  additional = 'None,
                                                  patterns = {},
                                                  properties =
                                                    {
                                                        kind =
                                                          std.contract.Sequence
                                                              [
                                                                std.enum.TagOrString,
                                                                [|
                                                                  '"console/output"
                                                                |]
                                                              ],
                                                        spec = js2n.Always,
                                                      },
                                                  required = {},
                                                },
                                              js2n.record.Record
                                                {
                                                  additional = 'None,
                                                  patterns = {},
                                                  properties =
                                                    {
                                                        kind =
                                                          std.contract.Sequence
                                                              [
                                                                std.enum.TagOrString,
                                                                [| 'exitcode |]
                                                              ],
                                                        spec =
                                                          js2n.record.Record
                                                              {
                                                                additional =
                                                                  'None,
                                                                patterns = {},
                                                                properties =
                                                                  {
                                                                      failure =
                                                                        std.number.Integer,
                                                                      success =
                                                                        std.number.Integer,
                                                                      warning =
                                                                        std.number.Integer,
                                                                    },
                                                                required =
                                                                  {
                                                                      failure =
                                                                        true,
                                                                      success =
                                                                        true,
                                                                      warning =
                                                                        true,
                                                                    },
                                                              },
                                                      },
                                                  required = {},
                                                },
                                              js2n.record.Record
                                                {
                                                  additional = 'None,
                                                  patterns = {},
                                                  properties =
                                                    {
                                                        kind =
                                                          std.contract.Sequence
                                                              [
                                                                std.enum.TagOrString,
                                                                [|
                                                                  '"file/checksum"
                                                                |]
                                                              ],
                                                        spec =
                                                          js2n.record.Record
                                                              {
                                                                additional =
                                                                  'None,
                                                                patterns = {},
                                                                properties =
                                                                  {
                                                                      files =
                                                                        js2n.array.ArrayOf
                                                                            String,
                                                                    },
                                                                required =
                                                                  {
                                                                      files =
                                                                        true,
                                                                    },
                                                              },
                                                      },
                                                  required = {},
                                                }
                                            ],
                                      command = String,
                                      environments =
                                        js2n.array.ArrayOf
                                            (js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      name = String,
                                                      value = String,
                                                    },
                                                required = { name = true, },
                                              }),
                                      shell = String,
                                      workdir = String,
                                    },
                                required = { command = true, },
                              },
                        transformers =
                          js2n.array.ArrayOf
                              (js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        addprefix = String,
                                        addsuffix = String,
                                        find = String,
                                        findsubmatch =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      captureindex =
                                                        std.number.Integer,
                                                      pattern = String,
                                                    },
                                                required = { pattern = true, },
                                              },
                                        quote = Bool,
                                        replacer =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      from = String,
                                                      to = String,
                                                    },
                                                required =
                                                  { from = true, to = true, },
                                              },
                                        replacers =
                                          js2n.array.ArrayOf
                                              (js2n.record.Record
                                                {
                                                  additional = 'None,
                                                  patterns = {},
                                                  properties =
                                                    {
                                                        from = String,
                                                        to = String,
                                                      },
                                                  required =
                                                    { from = true, to = true, },
                                                }),
                                        semverinc = String,
                                        trimprefix = String,
                                        trimsuffix = String,
                                        unquote = Bool,
                                      },
                                  required = {},
                                }),
                      },
                  required = { kind = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        dependson = js2n.array.ArrayOf String,
                        dependsonchange = Bool,
                        deprecatedconditionids = js2n.array.ArrayOf String,
                        disableconditions = Bool,
                        disablesourceinput = Bool,
                        kind =
                          std.contract.Sequence
                              [ std.enum.TagOrString, [| '"stash/branch" |] ],
                        name = String,
                        scmid = String,
                        sourceid = String,
                        spec =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      branch = String,
                                      owner = String,
                                      password = String,
                                      repository = String,
                                      token = String,
                                      url = String,
                                      username = String,
                                      versionfilter =
                                        js2n.record.Record
                                            {
                                              additional = 'None,
                                              patterns = {},
                                              properties =
                                                {
                                                    kind = String,
                                                    pattern = String,
                                                    regex = String,
                                                    strict = Bool,
                                                  },
                                              required = {},
                                            },
                                    },
                                required =
                                  {
                                      owner = true,
                                      repository = true,
                                      url = true,
                                    },
                              },
                        transformers =
                          js2n.array.ArrayOf
                              (js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        addprefix = String,
                                        addsuffix = String,
                                        find = String,
                                        findsubmatch =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      captureindex =
                                                        std.number.Integer,
                                                      pattern = String,
                                                    },
                                                required = { pattern = true, },
                                              },
                                        quote = Bool,
                                        replacer =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      from = String,
                                                      to = String,
                                                    },
                                                required =
                                                  { from = true, to = true, },
                                              },
                                        replacers =
                                          js2n.array.ArrayOf
                                              (js2n.record.Record
                                                {
                                                  additional = 'None,
                                                  patterns = {},
                                                  properties =
                                                    {
                                                        from = String,
                                                        to = String,
                                                      },
                                                  required =
                                                    { from = true, to = true, },
                                                }),
                                        semverinc = String,
                                        trimprefix = String,
                                        trimsuffix = String,
                                        unquote = Bool,
                                      },
                                  required = {},
                                }),
                      },
                  required = { kind = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        dependson = js2n.array.ArrayOf String,
                        dependsonchange = Bool,
                        deprecatedconditionids = js2n.array.ArrayOf String,
                        disableconditions = Bool,
                        disablesourceinput = Bool,
                        kind =
                          std.contract.Sequence
                              [ std.enum.TagOrString, [| '"stash/tag" |] ],
                        name = String,
                        scmid = String,
                        sourceid = String,
                        spec =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      owner = String,
                                      password = String,
                                      repository = String,
                                      tag = String,
                                      token = String,
                                      url = String,
                                      username = String,
                                      versionfilter =
                                        js2n.record.Record
                                            {
                                              additional = 'None,
                                              patterns = {},
                                              properties =
                                                {
                                                    kind = String,
                                                    pattern = String,
                                                    regex = String,
                                                    strict = Bool,
                                                  },
                                              required = {},
                                            },
                                    },
                                required =
                                  {
                                      owner = true,
                                      repository = true,
                                      url = true,
                                    },
                              },
                        transformers =
                          js2n.array.ArrayOf
                              (js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        addprefix = String,
                                        addsuffix = String,
                                        find = String,
                                        findsubmatch =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      captureindex =
                                                        std.number.Integer,
                                                      pattern = String,
                                                    },
                                                required = { pattern = true, },
                                              },
                                        quote = Bool,
                                        replacer =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      from = String,
                                                      to = String,
                                                    },
                                                required =
                                                  { from = true, to = true, },
                                              },
                                        replacers =
                                          js2n.array.ArrayOf
                                              (js2n.record.Record
                                                {
                                                  additional = 'None,
                                                  patterns = {},
                                                  properties =
                                                    {
                                                        from = String,
                                                        to = String,
                                                      },
                                                  required =
                                                    { from = true, to = true, },
                                                }),
                                        semverinc = String,
                                        trimprefix = String,
                                        trimsuffix = String,
                                        unquote = Bool,
                                      },
                                  required = {},
                                }),
                      },
                  required = { kind = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        dependson = js2n.array.ArrayOf String,
                        dependsonchange = Bool,
                        deprecatedconditionids = js2n.array.ArrayOf String,
                        disableconditions = Bool,
                        disablesourceinput = Bool,
                        kind =
                          std.contract.Sequence
                              [ std.enum.TagOrString, [| 'temurin |] ],
                        name = String,
                        scmid = String,
                        sourceid = String,
                        spec =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      architecture = String,
                                      featureversion = std.number.Integer,
                                      imagetype = String,
                                      operatingsystem = String,
                                      platforms = js2n.array.ArrayOf String,
                                      project = String,
                                      releaseline = String,
                                      releasetype = String,
                                      result = String,
                                      specificversion = String,
                                    },
                                required = {},
                              },
                        transformers =
                          js2n.array.ArrayOf
                              (js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        addprefix = String,
                                        addsuffix = String,
                                        find = String,
                                        findsubmatch =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      captureindex =
                                                        std.number.Integer,
                                                      pattern = String,
                                                    },
                                                required = { pattern = true, },
                                              },
                                        quote = Bool,
                                        replacer =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      from = String,
                                                      to = String,
                                                    },
                                                required =
                                                  { from = true, to = true, },
                                              },
                                        replacers =
                                          js2n.array.ArrayOf
                                              (js2n.record.Record
                                                {
                                                  additional = 'None,
                                                  patterns = {},
                                                  properties =
                                                    {
                                                        from = String,
                                                        to = String,
                                                      },
                                                  required =
                                                    { from = true, to = true, },
                                                }),
                                        semverinc = String,
                                        trimprefix = String,
                                        trimsuffix = String,
                                        unquote = Bool,
                                      },
                                  required = {},
                                }),
                      },
                  required = { kind = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        dependson = js2n.array.ArrayOf String,
                        dependsonchange = Bool,
                        deprecatedconditionids = js2n.array.ArrayOf String,
                        disableconditions = Bool,
                        disablesourceinput = Bool,
                        kind =
                          std.contract.Sequence
                              [ std.enum.TagOrString, [| '"terraform/file" |] ],
                        name = String,
                        scmid = String,
                        sourceid = String,
                        spec =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      file = String,
                                      files = js2n.array.ArrayOf String,
                                      path = String,
                                      value = String,
                                    },
                                required = {},
                              },
                        transformers =
                          js2n.array.ArrayOf
                              (js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        addprefix = String,
                                        addsuffix = String,
                                        find = String,
                                        findsubmatch =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      captureindex =
                                                        std.number.Integer,
                                                      pattern = String,
                                                    },
                                                required = { pattern = true, },
                                              },
                                        quote = Bool,
                                        replacer =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      from = String,
                                                      to = String,
                                                    },
                                                required =
                                                  { from = true, to = true, },
                                              },
                                        replacers =
                                          js2n.array.ArrayOf
                                              (js2n.record.Record
                                                {
                                                  additional = 'None,
                                                  patterns = {},
                                                  properties =
                                                    {
                                                        from = String,
                                                        to = String,
                                                      },
                                                  required =
                                                    { from = true, to = true, },
                                                }),
                                        semverinc = String,
                                        trimprefix = String,
                                        trimsuffix = String,
                                        unquote = Bool,
                                      },
                                  required = {},
                                }),
                      },
                  required = { kind = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        dependson = js2n.array.ArrayOf String,
                        dependsonchange = Bool,
                        deprecatedconditionids = js2n.array.ArrayOf String,
                        disableconditions = Bool,
                        disablesourceinput = Bool,
                        kind =
                          std.contract.Sequence
                              [ std.enum.TagOrString, [| '"terraform/lock" |] ],
                        name = String,
                        scmid = String,
                        sourceid = String,
                        spec =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      file = String,
                                      files = js2n.array.ArrayOf String,
                                      platforms = js2n.array.ArrayOf String,
                                      provider = String,
                                      skipconstraints = Bool,
                                      value = String,
                                    },
                                required = {},
                              },
                        transformers =
                          js2n.array.ArrayOf
                              (js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        addprefix = String,
                                        addsuffix = String,
                                        find = String,
                                        findsubmatch =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      captureindex =
                                                        std.number.Integer,
                                                      pattern = String,
                                                    },
                                                required = { pattern = true, },
                                              },
                                        quote = Bool,
                                        replacer =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      from = String,
                                                      to = String,
                                                    },
                                                required =
                                                  { from = true, to = true, },
                                              },
                                        replacers =
                                          js2n.array.ArrayOf
                                              (js2n.record.Record
                                                {
                                                  additional = 'None,
                                                  patterns = {},
                                                  properties =
                                                    {
                                                        from = String,
                                                        to = String,
                                                      },
                                                  required =
                                                    { from = true, to = true, },
                                                }),
                                        semverinc = String,
                                        trimprefix = String,
                                        trimsuffix = String,
                                        unquote = Bool,
                                      },
                                  required = {},
                                }),
                      },
                  required = { kind = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        dependson = js2n.array.ArrayOf String,
                        dependsonchange = Bool,
                        deprecatedconditionids = js2n.array.ArrayOf String,
                        disableconditions = Bool,
                        disablesourceinput = Bool,
                        kind =
                          std.contract.Sequence
                              [
                                std.enum.TagOrString,
                                [| '"terraform/provider" |]
                              ],
                        name = String,
                        scmid = String,
                        sourceid = String,
                        spec =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      file = String,
                                      files = js2n.array.ArrayOf String,
                                      provider = String,
                                      value = String,
                                    },
                                required = {},
                              },
                        transformers =
                          js2n.array.ArrayOf
                              (js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        addprefix = String,
                                        addsuffix = String,
                                        find = String,
                                        findsubmatch =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      captureindex =
                                                        std.number.Integer,
                                                      pattern = String,
                                                    },
                                                required = { pattern = true, },
                                              },
                                        quote = Bool,
                                        replacer =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      from = String,
                                                      to = String,
                                                    },
                                                required =
                                                  { from = true, to = true, },
                                              },
                                        replacers =
                                          js2n.array.ArrayOf
                                              (js2n.record.Record
                                                {
                                                  additional = 'None,
                                                  patterns = {},
                                                  properties =
                                                    {
                                                        from = String,
                                                        to = String,
                                                      },
                                                  required =
                                                    { from = true, to = true, },
                                                }),
                                        semverinc = String,
                                        trimprefix = String,
                                        trimsuffix = String,
                                        unquote = Bool,
                                      },
                                  required = {},
                                }),
                      },
                  required = { kind = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        dependson = js2n.array.ArrayOf String,
                        dependsonchange = Bool,
                        deprecatedconditionids = js2n.array.ArrayOf String,
                        disableconditions = Bool,
                        disablesourceinput = Bool,
                        kind =
                          std.contract.Sequence
                              [
                                std.enum.TagOrString,
                                [| '"terraform/registry" |]
                              ],
                        name = String,
                        scmid = String,
                        sourceid = String,
                        spec =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      hostname = String,
                                      name = String,
                                      namespace = String,
                                      rawstring = String,
                                      targetsystem = String,
                                      type = String,
                                      version = String,
                                      versionfilter =
                                        js2n.record.Record
                                            {
                                              additional = 'None,
                                              patterns = {},
                                              properties =
                                                {
                                                    kind = String,
                                                    pattern = String,
                                                    regex = String,
                                                    strict = Bool,
                                                  },
                                              required = {},
                                            },
                                    },
                                required = {},
                              },
                        transformers =
                          js2n.array.ArrayOf
                              (js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        addprefix = String,
                                        addsuffix = String,
                                        find = String,
                                        findsubmatch =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      captureindex =
                                                        std.number.Integer,
                                                      pattern = String,
                                                    },
                                                required = { pattern = true, },
                                              },
                                        quote = Bool,
                                        replacer =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      from = String,
                                                      to = String,
                                                    },
                                                required =
                                                  { from = true, to = true, },
                                              },
                                        replacers =
                                          js2n.array.ArrayOf
                                              (js2n.record.Record
                                                {
                                                  additional = 'None,
                                                  patterns = {},
                                                  properties =
                                                    {
                                                        from = String,
                                                        to = String,
                                                      },
                                                  required =
                                                    { from = true, to = true, },
                                                }),
                                        semverinc = String,
                                        trimprefix = String,
                                        trimsuffix = String,
                                        unquote = Bool,
                                      },
                                  required = {},
                                }),
                      },
                  required = { kind = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        dependson = js2n.array.ArrayOf String,
                        dependsonchange = Bool,
                        deprecatedconditionids = js2n.array.ArrayOf String,
                        disableconditions = Bool,
                        disablesourceinput = Bool,
                        kind =
                          std.contract.Sequence
                              [ std.enum.TagOrString, [| 'toml |] ],
                        name = String,
                        scmid = String,
                        sourceid = String,
                        spec =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      createmissingkey = Bool,
                                      file = String,
                                      files = js2n.array.ArrayOf String,
                                      key = String,
                                      query = String,
                                      value = String,
                                      versionfilter =
                                        js2n.record.Record
                                            {
                                              additional = 'None,
                                              patterns = {},
                                              properties =
                                                {
                                                    kind = String,
                                                    pattern = String,
                                                    regex = String,
                                                    strict = Bool,
                                                  },
                                              required = {},
                                            },
                                    },
                                required = {},
                              },
                        transformers =
                          js2n.array.ArrayOf
                              (js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        addprefix = String,
                                        addsuffix = String,
                                        find = String,
                                        findsubmatch =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      captureindex =
                                                        std.number.Integer,
                                                      pattern = String,
                                                    },
                                                required = { pattern = true, },
                                              },
                                        quote = Bool,
                                        replacer =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      from = String,
                                                      to = String,
                                                    },
                                                required =
                                                  { from = true, to = true, },
                                              },
                                        replacers =
                                          js2n.array.ArrayOf
                                              (js2n.record.Record
                                                {
                                                  additional = 'None,
                                                  patterns = {},
                                                  properties =
                                                    {
                                                        from = String,
                                                        to = String,
                                                      },
                                                  required =
                                                    { from = true, to = true, },
                                                }),
                                        semverinc = String,
                                        trimprefix = String,
                                        trimsuffix = String,
                                        unquote = Bool,
                                      },
                                  required = {},
                                }),
                      },
                  required = { kind = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        dependson = js2n.array.ArrayOf String,
                        dependsonchange = Bool,
                        deprecatedconditionids = js2n.array.ArrayOf String,
                        disableconditions = Bool,
                        disablesourceinput = Bool,
                        kind =
                          std.contract.Sequence
                              [ std.enum.TagOrString, [| 'toolversions |] ],
                        name = String,
                        scmid = String,
                        sourceid = String,
                        spec =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      createmissingkey = Bool,
                                      file = String,
                                      files = js2n.array.ArrayOf String,
                                      key = String,
                                      value = String,
                                    },
                                required = {},
                              },
                        transformers =
                          js2n.array.ArrayOf
                              (js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        addprefix = String,
                                        addsuffix = String,
                                        find = String,
                                        findsubmatch =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      captureindex =
                                                        std.number.Integer,
                                                      pattern = String,
                                                    },
                                                required = { pattern = true, },
                                              },
                                        quote = Bool,
                                        replacer =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      from = String,
                                                      to = String,
                                                    },
                                                required =
                                                  { from = true, to = true, },
                                              },
                                        replacers =
                                          js2n.array.ArrayOf
                                              (js2n.record.Record
                                                {
                                                  additional = 'None,
                                                  patterns = {},
                                                  properties =
                                                    {
                                                        from = String,
                                                        to = String,
                                                      },
                                                  required =
                                                    { from = true, to = true, },
                                                }),
                                        semverinc = String,
                                        trimprefix = String,
                                        trimsuffix = String,
                                        unquote = Bool,
                                      },
                                  required = {},
                                }),
                      },
                  required = { kind = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        dependson = js2n.array.ArrayOf String,
                        dependsonchange = Bool,
                        deprecatedconditionids = js2n.array.ArrayOf String,
                        disableconditions = Bool,
                        disablesourceinput = Bool,
                        kind =
                          std.contract.Sequence
                              [ std.enum.TagOrString, [| 'xml |] ],
                        name = String,
                        scmid = String,
                        sourceid = String,
                        spec =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      file = String,
                                      path = String,
                                      value = String,
                                    },
                                required = {},
                              },
                        transformers =
                          js2n.array.ArrayOf
                              (js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        addprefix = String,
                                        addsuffix = String,
                                        find = String,
                                        findsubmatch =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      captureindex =
                                                        std.number.Integer,
                                                      pattern = String,
                                                    },
                                                required = { pattern = true, },
                                              },
                                        quote = Bool,
                                        replacer =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      from = String,
                                                      to = String,
                                                    },
                                                required =
                                                  { from = true, to = true, },
                                              },
                                        replacers =
                                          js2n.array.ArrayOf
                                              (js2n.record.Record
                                                {
                                                  additional = 'None,
                                                  patterns = {},
                                                  properties =
                                                    {
                                                        from = String,
                                                        to = String,
                                                      },
                                                  required =
                                                    { from = true, to = true, },
                                                }),
                                        semverinc = String,
                                        trimprefix = String,
                                        trimsuffix = String,
                                        unquote = Bool,
                                      },
                                  required = {},
                                }),
                      },
                  required = { kind = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        dependson = js2n.array.ArrayOf String,
                        dependsonchange = Bool,
                        deprecatedconditionids = js2n.array.ArrayOf String,
                        disableconditions = Bool,
                        disablesourceinput = Bool,
                        kind =
                          std.contract.Sequence
                              [ std.enum.TagOrString, [| 'yaml |] ],
                        name = String,
                        scmid = String,
                        sourceid = String,
                        spec =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      comment = String,
                                      engine = String,
                                      file = String,
                                      files = js2n.array.ArrayOf String,
                                      key = String,
                                      keyonly = Bool,
                                      searchpattern = Bool,
                                      value = String,
                                    },
                                required = {},
                              },
                        transformers =
                          js2n.array.ArrayOf
                              (js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        addprefix = String,
                                        addsuffix = String,
                                        find = String,
                                        findsubmatch =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      captureindex =
                                                        std.number.Integer,
                                                      pattern = String,
                                                    },
                                                required = { pattern = true, },
                                              },
                                        quote = Bool,
                                        replacer =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      from = String,
                                                      to = String,
                                                    },
                                                required =
                                                  { from = true, to = true, },
                                              },
                                        replacers =
                                          js2n.array.ArrayOf
                                              (js2n.record.Record
                                                {
                                                  additional = 'None,
                                                  patterns = {},
                                                  properties =
                                                    {
                                                        from = String,
                                                        to = String,
                                                      },
                                                  required =
                                                    { from = true, to = true, },
                                                }),
                                        semverinc = String,
                                        trimprefix = String,
                                        trimsuffix = String,
                                        unquote = Bool,
                                      },
                                  required = {},
                                }),
                      },
                  required = { kind = true, },
                }
            ]
        }
        | doc m%"
          "targets" defines the list of Updatecli target definition.
          
          		example:
          		---
          		targets:
          		  	default:
          		     	name: 'ci: update Golangci-lint version to {{ source "default" }}'
          		     	kind: yaml
          		     	spec:
          		         	file: .github/workflows/go.yaml
          		         	key: $.jobs.build.steps[2].with.version
          		     	scmid: default
          		     	sourceid: default
          		---
        "%
        | optional,
      version
        | String
        | doc "\"version\" defines the minimum Updatecli version compatible with the manifest"
        | optional,
    }