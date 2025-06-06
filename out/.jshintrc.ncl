# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      asi
        | Bool
        | doc "Suppresses warnings about missing semicolons"
        | optional,
      bitwise
        | Bool
        | doc "Prohibit the use of bitwise operators (&, |, ^, etc.)"
        | optional,
      boss
        | Bool
        | doc "Suppresses warnings about the use of assignments in cases where comparisons are expected"
        | optional,
      browser
        | Bool
        | doc "[Environment] Web Browser (window, document, etc)"
        | optional,
      browserify | Bool | doc "[Environment] Browserify" | optional,
      couch | Bool | doc "[Environment] CouchDB" | optional,
      curly
        | Bool
        | doc "Requires you to always put curly braces around blocks in loops and conditionals"
        | optional,
      debug
        | Bool
        | doc "Suppresses warnings about the `debugger` statements in your code"
        | optional,
      devel
        | Bool
        | doc "[Environment] Development/debugging (alert, confirm, etc)"
        | optional,
      dojo | Bool | doc "[Environment] Dojo Toolkit" | optional,
      elision
        | Bool
        | doc "Tells JSHint that your code uses ES3 array elision elements, or empty elements"
        | optional,
      eqeqeq
        | Bool
        | doc "Prohibits the use of `==` and `!=` in favor of `===` and `!==`"
        | optional,
      eqnull
        | Bool
        | doc "Suppresses warnings about `== null` comparisons"
        | optional,
      esversion
        | std.number.Integer
        | js2n.Enum [ 3, 5, 6, 7, 8, 9, 10, 11 ]
        | doc "The ECMAScript version to which the code must adhere"
        | optional,
      evil
        | Bool
        | doc "Suppresses warnings about the use of `eval`"
        | optional,
      expr
        | Bool
        | doc "Suppresses warnings about the use of expressions where normally you would expect to see assignments or function calls"
        | optional,
      extends
        | String
        | doc "Specify the path to another configuration file to use as a base, relative to the current file"
        | optional,
      forin
        | Bool
        | doc "Requires all `for in` loops to filter object's items with obj.hasOwnProperty()"
        | optional,
      freeze
        | Bool
        | doc "Prohibits overwriting prototypes of native objects such as Array, Date and so on"
        | optional,
      funcscope
        | Bool
        | doc "Suppresses warnings about declaring variables inside of control structures while accessing them later from the outside"
        | optional,
      futurehostile
        | Bool
        | doc "Enables warnings about the use of identifiers which are defined in future versions of JavaScript"
        | optional,
      globals
        | { _ | Bool }
        | doc "Specify a white list of global variables that are not formally defined in the source code"
        | optional,
      iterator
        | Bool
        | doc "Suppresses warnings about the __iterator__ property."
        | optional,
      jasmine
        | Bool
        | doc "[Environment] Jasmine unit testing framework"
        | optional,
      jquery | Bool | doc "[Environment] jQuery" | optional,
      lastsemic
        | Bool
        | doc "Suppresses warnings about missing semicolons, but only when the semicolon is omitted for the last statement in a one-line block"
        | optional,
      latedef
        | js2n.Enum [ true, false, "nofunc" ]
        | doc "Prohibits the use of a variable before it was defined"
        | optional,
      leanswitch
        | Bool
        | doc "Prohibits unnecessary clauses within `switch` statements"
        | optional,
      loopfunc
        | Bool
        | doc "Suppresses warnings about functions inside of loops"
        | optional,
      maxcomplexity
        | std.contract.any_of [ Bool, std.number.Integer ]
        | doc "Max cyclomatic complexity per function"
        | optional,
      maxdepth
        | std.contract.any_of [ Bool, std.number.Integer ]
        | doc "Max depth of nested blocks"
        | optional,
      maxerr
        | std.number.Integer
        | doc "Maximum amount of warnings JSHint will produce before giving up"
        | optional,
      maxparams
        | std.contract.any_of [ Bool, std.number.Integer ]
        | doc "Max number of formal parameters allowed per function"
        | optional,
      maxstatements
        | std.contract.any_of [ Bool, std.number.Integer ]
        | doc "Max number statements per function"
        | optional,
      mocha
        | Bool
        | doc "[Environment] Mocha unit testing framework"
        | optional,
      module | Bool | doc "[Environment] ES6 module" | optional,
      mootools | Bool | doc "[Environment] MooTools" | optional,
      moz
        | Bool
        | doc "Tells JSHint that your code uses Mozilla JavaScript extensions"
        | optional,
      noarg
        | Bool
        | doc "Prohibits the use of `arguments.caller` and `arguments.callee`"
        | optional,
      nocomma | Bool | doc "Prohibits the use of the comma operator" | optional,
      node | Bool | doc "[Environment] Node.js" | optional,
      nonbsp
        | Bool
        | doc "Warns about `non-breaking whitespace` characters"
        | optional,
      nonew
        | Bool
        | doc "Prohibits the use of constructors for side-effects (without assignment)"
        | optional,
      nonstandard
        | Bool
        | doc "[Environment] Widely adopted globals (escape, unescape, etc)"
        | optional,
      noreturnawait
        | Bool
        | doc "Async functions resolve on their return value. In most cases, this makes returning the result of an AwaitExpression (which is itself a Promise instance) unnecessary"
        | optional,
      notypeof
        | Bool
        | doc "Suppresses warnings about invalid `typeof`operator values"
        | optional,
      noyield
        | Bool
        | doc "Suppresses warnings about generator functions with no `yield` statement in them"
        | optional,
      overrides
        | { _ | { _ | Dyn } }
        | doc "Specify the options that should only be applied to files matching a given path pattern"
        | optional,
      phantom
        | Bool
        | doc "[Environment] PhantomJS runtime environment"
        | optional,
      plusplus | Bool | doc "Prohibits the use of `++` and `--`" | optional,
      proto
        | Bool
        | doc "Suppresses warnings about the `__proto__` property"
        | optional,
      prototypejs
        | Bool
        | doc "[Environment] Prototype JavaScript framework"
        | optional,
      regexpu
        | Bool
        | doc "Enables warnings for regular expressions which do not include the 'u' flag"
        | optional,
      rhino | Bool | doc "[Environment] Rhino" | optional,
      scripturl
        | Bool
        | doc "Suppresses warnings about the use of script-targeted URLs"
        | optional,
      shadow
        | js2n.Enum [ true, false, "inner", "outer" ]
        | doc "Suppresses warnings about variable shadowing. i.e. declaring a variable that had been already declared somewhere in the outer scope"
        | optional,
      shelljs
        | Bool
        | doc "[Environment] Defines globals exposed by the ShellJS library"
        | optional,
      singleGroups
        | Bool
        | doc "Prohibits the use of the grouping operator when it is not strictly required."
        | optional,
      strict
        | js2n.Enum [ true, false, "implied", "global", "func" ]
        | doc "Requires all code to run in ES5 strict mode"
        | optional,
      supernew
        | Bool
        | doc "Suppresses warnings about constructions like `new function () { ... };` and `new Object;`"
        | optional,
      trailingcomma
        | Bool
        | doc "Warns when a comma is not placed after the last element in an array or object literal"
        | optional,
      typed
        | Bool
        | doc "[Environment] Defines globals for typed array constructors"
        | optional,
      undef
        | Bool
        | doc "Prohibits the use of explicitly undeclared variables"
        | optional,
      unused
        | js2n.Enum [ true, false, "vars", "strict" ]
        | doc "Warns when you define and never use your variables"
        | optional,
      validthis
        | Bool
        | doc "Suppresses warnings about possible strict violations when the code is running in strict mode and you use `this` in a non-constructor function"
        | optional,
      varstmt
        | Bool
        | doc "Forbids the use of VariableStatements (`var`) in favor of `let` and `const`"
        | optional,
      withstmt
        | Bool
        | doc "Suppresses warnings about the use of the `with` statement"
        | optional,
      worker | Bool | doc "[Environment] Web Workers" | optional,
      wsh | Bool | doc "[Environment] Windows Scripting Host" | optional,
      yui | Bool | doc "[Environment] Yahoo User Interface" | optional,
      ..
    }