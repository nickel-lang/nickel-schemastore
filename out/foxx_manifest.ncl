# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      author
        | String
        | doc "The full name of the author of the service (i.e. you). This will be shown in the web interface."
        | optional,
      configuration
        | {
          _ | {
            "default"
              | std.contract.any_of
                [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ]
              | doc "The default value for this option in plain JSON. Can be omitted to provide no default value."
              | optional,
            description
              | String
              | doc "A human-readable description of the option."
              | optional,
            required
              | Bool
              | doc "Whether the service can not function without this option. Defaults to true unless a default value is provided."
              | optional,
            type
              | std.enum.TagOrString
              | [|
                'bool,
                'int,
                'password,
                'json,
                'string,
                'number,
                'boolean,
                'integer
              |]
              | doc "The type of value expected for this option.",
            ..
          }
        }
        | doc "An object defining the configuration options this service requires."
        | optional,
      contributors
        | Array String
        | doc "A list of names of people that have contributed to the development of the service in some way. This will be shown in the web interface."
        | optional,
      defaultDocument
        | String
        | doc "If specified, the / (root) route of the service will automatically redirect to the given relative path, e.g. \"index.html\"."
        | optional,
      dependencies
        | {
          _ | std.contract.any_of
            [
              String,
              {
                description
                  | String
                  | doc "A description of how the API is used or why it is needed."
                  | optional,
                multiple
                  | Bool
                  | doc "Whether the dependency can be specified more than once."
                  | optional,
                name
                  | String
                  | doc "Name of the API the service expects."
                  | optional,
                required
                  | Bool
                  | doc "Whether the service can not function without this dependency."
                  | optional,
                version
                  | String
                  | doc "The semantic version ranges of the API the service expects."
                  | optional,
                ..
              }
            ]
        }
        | doc "The dependencies this service uses, i.e. which APIs its dependencies need to be compatible with."
        | optional,
      description
        | String
        | doc "A human-readable description of the service. This will be shown in the web interface."
        | optional,
      engines
        | js2n.record.Record
          {
            additional = 'Some String,
            patterns = {},
            properties = { arangodb = String, },
            required = {},
          }
        | doc "An object indicating the semantic version ranges of ArangoDB (or compatible environments) the service will be compatible with."
        | optional,
      files
        | {
          _ | std.contract.any_of
            [
              String,
              {
                gzip
                  | Bool
                  | doc "If set to true the file will be served with gzip-encoding if supported by the client. This can be useful when serving text files like client-side JavaScript, CSS or HTML."
                  | optional,
                path
                  | String
                  | doc "Relative path of the file or folder within the service.",
                type
                  | String
                  | doc "The MIME content type of the file. Defaults to an intelligent guess based on the filename's extension."
                  | optional,
                ..
              }
            ]
        }
        | doc "An object defining file assets served by this service."
        | optional,
      keywords
        | Array String
        | doc "A list of keywords that help categorize this service. This is used by the Foxx Store installers to organize services."
        | optional,
      lib
        | String
        | doc "The relative path to the Foxx JavaScript files in the service, e.g. \"lib\". Defaults to the folder containing this manifest."
        | optional,
      license
        | String
        | doc "A string identifying the license under which the service is published, ideally in the form of an SPDX license identifier. This will be shown in the web interface."
        | optional,
      main
        | String
        | doc "The relative path to the main entry point of this service (relative to lib), e.g. \"index.js\"."
        | optional,
      name
        | String
        | doc "The name of the Foxx service. This will be shown in the web interface."
        | optional,
      provides
        | { _ | String }
        | doc "The dependencies this provides, i.e. which APIs it claims to be compatible with."
        | optional,
      scripts
        | { _ | String }
        | doc "An object defining named scripts provided by this service, which can either be used directly or as queued jobs by other services."
        | optional,
      tests
        | std.contract.any_of [ String, Array String ]
        | doc "A path/pattern or list of paths/patterns of JavaScript tests provided for this service."
        | optional,
      thumbnail
        | String
        | doc "The filename of a thumbnail that will be used alongside the service in the web interface. This should be a JPEG or PNG image that looks good at sizes 50x50 and 160x160."
        | optional,
      version
        | String
        | doc "The version number of the Foxx service. The version number must follow the semantic versioning format. This will be shown in the web interface."
        | optional,
      ..
    }