# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      dependencies
        | { _ | String }
        | doc m%"
          A dictionary of packages and their versions. Each entry represents a package dependency. A dependency must be a clib package.
          
          https://github.com/clibs/clib/wiki/Explanation-of-clib.json#dependencies
        "%
        | optional,
      description
        | String
        | doc m%"
          A short-and-sweet description of your package.
          
          https://github.com/clibs/clib/wiki/Explanation-of-clib.json#description
        "%
        | optional,
      development
        | { _ | String }
        | doc m%"
          Development dependencies are for testing and development purposes.
          
          https://github.com/clibs/clib/wiki/Explanation-of-clib.json#development
        "%
        | optional,
      install
        | String
        | doc m%"
          Define a script to install your package. This is for executables and libraries only.
          
          https://github.com/clibs/clib/wiki/Explanation-of-clib.json#install
        "%
        | optional,
      keywords
        | Array String
        | doc m%"
          An array of keywords which describe your package.
          
          https://github.com/clibs/clib/wiki/Explanation-of-clib.json#keywords
        "%
        | optional,
      license
        | String
        | doc m%"
          The license your package is released under.
          
          https://github.com/clibs/clib/wiki/Explanation-of-clib.json#license
        "%
        | optional,
      makefile
        | String
        | doc m%"
          Your package's Makefile.
          
          https://github.com/clibs/clib/wiki/Explanation-of-clib.json#makefile
        "%
        | optional,
      name
        | js2n.string.Matches "^[0-9a-z-_]+$"
        | doc m%"
          The name of the package
          
          https://github.com/clibs/clib/wiki/Explanation-of-clib.json#name
        "%
        | optional,
      repo
        | String
        | doc m%"
          he GitHub slug for your package.
          
          https://github.com/clibs/clib/wiki/Explanation-of-clib.json#repo
        "%
        | optional,
      src
        | Array String
        | doc m%"
          An array of source files that make up the implementation of your package.
          
          https://github.com/clibs/clib/wiki/Explanation-of-clib.json#src
        "%
        | optional,
      uninstall
        | String
        | doc m%"
          Define a script to uninstall your package.
          
          https://github.com/clibs/clib/wiki/Explanation-of-clib.json#uninstall
        "%
        | optional,
      version
        | String
        | doc m%"
          The semantic version number of the package. This number should also be a git tag.
          
          https://github.com/clibs/clib/wiki/Explanation-of-clib.json#version
        "%
        | optional,
      ..
    }