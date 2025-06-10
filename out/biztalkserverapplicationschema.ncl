# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      Assemblies
        | Array
          {
            Name
              | String
              | doc "Filename of the Referenced Assembly."
              | optional,
            Path
              | js2n.string.Matches "\\w+[\\\\](\\w+\\.)*\\w+\\.dll"
              | doc "Relative output filepath for the Unmanaged Referenced Assembly. \r\nExample: bins\\\\bts1.dll"
              | optional,
            ..
          }
        | doc "Array of Reference Assemblies to be deployed."
        | optional,
      BindingsFiles
        | Array
          {
            Name | String | doc "Filename of the Bindings File." | optional,
            Path
              | js2n.string.Matches "\\w+[\\\\](\\w+\\.)*\\w+\\.xml"
              | doc "Relative output filepath for the Bindings File.\r\nExample: bindings\\\\binding1.xml"
              | optional,
            ..
          }
        | doc "Array of Binding Files used in Deployment.",
      BizTalkAssemblies
        | Array
          {
            Name
              | String
              | doc "Filename of the BizTalk Referenced Assembly."
              | optional,
            Path
              | js2n.string.Matches "\\w+[\\\\](\\w+\\.)*\\w+\\.dll"
              | doc "Relative output filepath for the Referenced Assembly. \r\nExample: bins\\\\bts1.dll"
              | optional,
            ..
          }
        | doc "Array of BizTalk Reference Assemblies to be deployed.",
      DeploymentSequence
        | Array String
        | doc "Sequence of Binding Files, Reference Assemblies, Pre-Processing and Post-Processing Scripts used in Deployment.",
      Files
        | Array
          {
            Name | String | doc "Name of the File" | optional,
            Path
              | js2n.string.Matches "\\w+[\\\\](\\w+\\.)*\\w+\\.\\w+"
              | doc "Relative output filepath for the Files.\r\nExample: File\\\\File.txt"
              | optional,
            ..
          }
        | doc "File used in Deployment."
        | optional,
      PostProcessingScripts
        | Array
          {
            Arguments
              | js2n.string.Matches "\\w+(,\\w+)*"
              | doc "Arguments for the Post Processing Script .\r\nExample: arg1,arg2"
              | optional,
            Name
              | String
              | doc "Filename of the Post Processing Script."
              | optional,
            Path
              | js2n.string.Matches "\\w+[\\\\](\\w+\\.)*\\w+\\.\\w+"
              | doc "Relative output filepath for the Post Processing Script.\r\nExample: Script\\\\Script1.vbs"
              | optional,
            ..
          }
        | doc "Post-Processing Scripts used in Deployment."
        | optional,
      PreProcessingScripts
        | Array
          {
            Arguments
              | js2n.string.Matches "\\w+(,\\w+)*"
              | doc "Arguments for the Pre Processing Script .\r\nExample: arg1,arg2"
              | optional,
            Name
              | String
              | doc "Filename of the Pre Processing Script."
              | optional,
            Path
              | js2n.string.Matches "\\w+[\\\\](\\w+\\.)*\\w+\\.\\w+"
              | doc "Relative output filepath for the Pre Processing Script.\r\nExample: bins\\\\Script1.vbs"
              | optional,
            ..
          }
        | doc "Pre-Processing Scripts used in Deployment."
        | optional,
      ..
    }