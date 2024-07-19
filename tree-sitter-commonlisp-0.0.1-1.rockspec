local git_ref = 'bf2a65b1c119898a1a17389e07f2a399c05cdc0c'
local modrev = '0.0.1'
local specrev = '1'

local repo_url = 'https://github.com/tree-sitter-grammars/tree-sitter-commonlisp'

rockspec_format = '3.0'
package = 'tree-sitter-commonlisp'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for commonlisp',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/tree-sitter-grammars/tree-sitter-commonlisp',
  license = 'UNKNOWN'
}

build_dependencies = {
  'luarocks-build-treesitter-parser >= 4.0.0',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-commonlisp-' .. 'bf2a65b1c119898a1a17389e07f2a399c05cdc0c',
}

build = {
  type = "treesitter-parser",
  lang = "commonlisp",
  parser = true,
  generate = false,
  generate_from_json = true,
  location = nil,
  copy_directories = { "queries" },
  queries = {
    ["folds.scm"] = [==[
(source
  (list_lit) @fold)
]==],
    ["highlights.scm"] = [==[
(sym_lit) @variable

; A highlighting for functions/macros in th cl namespace is available in theHamsta/nvim-treesitter-commonlisp
;(list_lit . (sym_lit) @function.builtin (#cl-standard-function? @function.builtin))
;(list_lit . (sym_lit) @function.builtin (#cl-standard-macro? @function.macro))
(dis_expr) @comment

(defun_keyword) @function.macro

(defun_header
  function_name: (_) @function)

(defun_header
  lambda_list: (list_lit
    (sym_lit) @variable.parameter))

(defun_header
  keyword: (defun_keyword
    "defmethod")
  lambda_list: (list_lit
    (list_lit
      .
      (sym_lit)
      .
      (sym_lit) @string.special.symbol)))

(defun_header
  lambda_list: (list_lit
    (list_lit
      .
      (sym_lit) @variable.parameter
      .
      (_))))

(defun_header
  specifier: (sym_lit) @string.special.symbol)

[
  ":"
  "::"
  "."
] @punctuation.special

[
  (accumulation_verb)
  (for_clause_word)
  "for"
  "and"
  "finally"
  "thereis"
  "always"
  "when"
  "if"
  "unless"
  "else"
  "do"
  "loop"
  "below"
  "in"
  "from"
  "across"
  "repeat"
  "being"
  "into"
  "with"
  "as"
  "while"
  "until"
  "return"
  "initially"
] @function.macro

"=" @operator

(include_reader_macro) @string.special.symbol

[
  "#C"
  "#c"
] @number

[
  (kwd_lit)
  (self_referential_reader_macro)
] @string.special.symbol

(package_lit
  package: (_) @module)

"cl" @module

(str_lit) @string

(num_lit) @number

((sym_lit) @boolean
  (#any-of? @boolean "t" "T"))

(nil_lit) @constant.builtin

(comment) @comment @spell

; dynamic variables
((sym_lit) @variable.builtin
  (#lua-match? @variable.builtin "^[*].+[*]$"))

; quote
(format_specifier) @string.escape

(quoting_lit
  "'" @string.escape)

(syn_quoting_lit
  "`" @string.escape)

(unquoting_lit
  "," @string.escape)

(unquote_splicing_lit
  ",@" @string.escape)

[
  "("
  ")"
] @punctuation.bracket

(block_comment) @comment @spell

(with_clause
  type: (_) @type)

(for_clause
  type: (_) @type)

; defun-like things
(list_lit
  .
  (sym_lit) @function.macro
  .
  (sym_lit) @function
  (#eq? @function.macro "deftest"))

; Macros and Special Operators
(list_lit
  .
  (sym_lit) @function.macro
  ; Generated via https://github.com/theHamsta/nvim-treesitter-commonlisp/blob/22fdc9fd6ed594176cc7299cc6f68dd21c94c63b/scripts/generate-symbols.lisp#L1-L21
  (#any-of? @function.macro
    "do*" "step" "handler-bind" "decf" "prog1" "destructuring-bind" "defconstant" "do" "lambda"
    "with-standard-io-syntax" "case" "restart-bind" "ignore-errors" "with-slots" "prog2" "defclass"
    "define-condition" "print-unreadable-object" "defvar" "when" "with-open-file" "prog" "incf"
    "declaim" "and" "loop-finish" "multiple-value-bind" "pop" "psetf" "defmacro" "with-open-stream"
    "define-modify-macro" "defsetf" "formatter" "call-method" "handler-case" "pushnew" "or"
    "with-hash-table-iterator" "ecase" "cond" "defun" "remf" "ccase" "define-compiler-macro"
    "dotimes" "multiple-value-list" "assert" "deftype" "with-accessors" "trace"
    "with-simple-restart" "do-symbols" "nth-value" "define-symbol-macro" "psetq" "rotatef" "dolist"
    "check-type" "multiple-value-setq" "push" "pprint-pop" "loop" "define-setf-expander"
    "pprint-exit-if-list-exhausted" "with-condition-restarts" "defstruct" "with-input-from-string"
    "with-compilation-unit" "defgeneric" "with-output-to-string" "untrace" "defparameter"
    "ctypecase" "do-external-symbols" "etypecase" "do-all-symbols" "with-package-iterator" "unless"
    "defmethod" "in-package" "defpackage" "return" "typecase" "shiftf" "setf" "pprint-logical-block"
    "time" "restart-case" "prog*" "define-method-combination" "optimize"))

; constant
((sym_lit) @constant
  (#lua-match? @constant "^[+].+[+]$"))

(var_quoting_lit
  marker: "#'" @string.special.symbol
  value: (_) @string.special.symbol)

[
  "#"
  "#p"
  "#P"
] @string.special.symbol

(list_lit
  .
  (sym_lit) @function.builtin
  ; Generated via https://github.com/theHamsta/nvim-treesitter-commonlisp/blob/22fdc9fd6ed594176cc7299cc6f68dd21c94c63b/scripts/generate-symbols.lisp#L1-L21
  (#any-of? @function.builtin
    "apropos-list" "subst" "substitute" "pprint-linear" "file-namestring" "write-char" "do*"
    "slot-exists-p" "file-author" "macro-function" "rassoc" "make-echo-stream"
    "arithmetic-error-operation" "position-if-not" "list" "cdadr" "lisp-implementation-type"
    "vector-push" "let" "length" "string-upcase" "adjoin" "digit-char" "step" "member-if"
    "handler-bind" "lognot" "apply" "gcd" "slot-unbound" "stringp" "values-list" "stable-sort"
    "decode-float" "make-list" "rplaca" "isqrt" "export" "synonym-stream-symbol" "function-keywords"
    "replace" "tanh" "maphash" "code-char" "decf" "array-displacement" "string-not-lessp"
    "slot-value" "remove-if" "cell-error-name" "vectorp" "cdddar" "two-way-stream-output-stream"
    "parse-integer" "get-internal-real-time" "fourth" "make-string" "slot-missing" "byte-size"
    "string-trim" "nstring-downcase" "cdaddr" "<" "labels" "interactive-stream-p" "fifth" "max"
    "logxor" "pathname-name" "function" "realp" "eql" "logand" "short-site-name" "prog1"
    "user-homedir-pathname" "list-all-packages" "exp" "cadar" "read-char-no-hang"
    "package-error-package" "stream-external-format" "bit-andc2" "nsubstitute-if" "mapcar"
    "complement" "load-logical-pathname-translations" "pprint-newline" "oddp" "caaar"
    "destructuring-bind" "copy-alist" "acos" "go" "bit-nor" "defconstant" "fceiling" "tenth"
    "nreverse" "=" "nunion" "slot-boundp" "string>" "count-if" "atom" "char=" "random-state-p"
    "row-major-aref" "bit-andc1" "translate-pathname" "simple-vector-p" "coerce" "substitute-if-not"
    "zerop" "invalid-method-error" "compile" "realpart" "remove-if-not" "pprint-tab"
    "hash-table-rehash-threshold" "invoke-restart" "if" "count" "/=" "do" "initialize-instance"
    "abs" "schar" "simple-condition-format-control" "delete-package" "subst-if" "lambda"
    "hash-table-count" "array-has-fill-pointer-p" "bit" "with-standard-io-syntax" "parse-namestring"
    "proclaim" "array-in-bounds-p" "multiple-value-call" "rplacd" "some" "graphic-char-p"
    "read-from-string" "consp" "cadaar" "acons" "every" "make-pathname" "mask-field" "case"
    "set-macro-character" "bit-and" "restart-bind" "echo-stream-input-stream" "compile-file"
    "fill-pointer" "numberp" "acosh" "array-dimensions" "documentation" "minusp" "inspect"
    "copy-structure" "integer-length" "ensure-generic-function" "char>=" "quote" "lognor"
    "make-two-way-stream" "ignore-errors" "tailp" "with-slots" "fboundp"
    "logical-pathname-translations" "equal" "float-sign" "shadow" "sleep" "numerator" "prog2" "getf"
    "ldb-test" "round" "locally" "echo-stream-output-stream" "log" "get-macro-character"
    "alphanumericp" "find-method" "nintersection" "defclass" "define-condition"
    "print-unreadable-object" "defvar" "broadcast-stream-streams" "floatp" "subst-if-not" "integerp"
    "translate-logical-pathname" "subsetp" "when" "write-string" "with-open-file" "clrhash"
    "apropos" "intern" "min" "string-greaterp" "import" "nset-difference" "prog" "incf"
    "both-case-p" "multiple-value-prog1" "characterp" "streamp" "digit-char-p" "random"
    "string-lessp" "make-string-input-stream" "copy-symbol" "read-sequence" "logcount" "bit-not"
    "boundp" "encode-universal-time" "third" "declaim" "map" "cons" "set-syntax-from-char" "and"
    "cis" "symbol-plist" "loop-finish" "standard-char-p" "multiple-value-bind" "asin" "string" "pop"
    "complex" "fdefinition" "psetf" "type-error-datum" "output-stream-p" "floor" "write-line" "<="
    "defmacro" "rational" "hash-table-test" "with-open-stream" "read-char" "string-capitalize"
    "get-properties" "y-or-n-p" "use-package" "remove" "compiler-macro-function" "read"
    "package-nicknames" "remove-duplicates" "make-load-form-saving-slots" "dribble"
    "define-modify-macro" "make-dispatch-macro-character" "close" "cosh" "open" "finish-output"
    "string-downcase" "car" "nstring-capitalize" "software-type" "read-preserving-whitespace" "cadr"
    "fround" "nsublis" "defsetf" "find-all-symbols" "char>" "no-applicable-method"
    "compute-restarts" "pathname" "bit-orc2" "write-sequence" "pprint-tabular" "symbol-value"
    "char-name" "get-decoded-time" "formatter" "bit-vector-p" "intersection" "pathname-type"
    "clear-input" "call-method" "princ-to-string" "symbolp" "make-load-form" "nsubst"
    "pprint-dispatch" "handler-case" "method-combination-error" "probe-file" "atan" "string<"
    "type-error-expected-type" "pushnew" "unread-char" "print" "or" "with-hash-table-iterator"
    "make-sequence" "ecase" "unwind-protect" "require" "sixth" "get-dispatch-macro-character"
    "char-not-lessp" "read-byte" "tagbody" "file-error-pathname" "catch" "rationalp" "char-downcase"
    "char-int" "array-rank" "cond" "last" "make-string-output-stream" "array-dimension"
    "host-namestring" "input-stream-p" "decode-universal-time" "defun" "eval-when" "char-code"
    "pathname-directory" "evenp" "subseq" "pprint" "ftruncate" "make-instance" "pathname-host"
    "logbitp" "remf" "1+" "copy-pprint-dispatch" "char-upcase" "error" "read-line" "second"
    "make-package" "directory" "special-operator-p" "open-stream-p" "rassoc-if-not" "ccase" "equalp"
    "substitute-if" "*" "char/=" "cdr" "sqrt" "lcm" "logical-pathname" "eval"
    "define-compiler-macro" "nsubstitute-if-not" "mapcon" "imagpart" "set-exclusive-or"
    "simple-condition-format-arguments" "expt" "concatenate" "file-position" "macrolet" "keywordp"
    "hash-table-rehash-size" "+" "eighth" "use-value" "char-equal" "bit-xor" "format" "byte"
    "dotimes" "namestring" "char-not-equal" "multiple-value-list" "assert" "append" "notany" "typep"
    "delete-file" "makunbound" "cdaar" "file-write-date" ">" "cdddr" "write-to-string" "funcall"
    "member-if-not" "deftype" "readtable-case" "with-accessors" "truename" "constantp" "rassoc-if"
    "caaadr" "tree-equal" "nset-exclusive-or" "nsubstitute" "make-instances-obsolete"
    "package-use-list" "invoke-debugger" "provide" "count-if-not" "trace" "logandc1" "nthcdr"
    "char<=" "functionp" "with-simple-restart" "set-dispatch-macro-character" "logorc2" "unexport"
    "rest" "unbound-slot-instance" "make-hash-table" "hash-table-p" "reinitialize-instance" "nth"
    "do-symbols" "nreconc" "macroexpand" "store-value" "float-precision" "remprop" "nth-value"
    "define-symbol-macro" "update-instance-for-redefined-class" "identity" "progv" "progn"
    "return-from" "readtablep" "rem" "symbol-name" "psetq" "wild-pathname-p" "char" "list*" "char<"
    "plusp" "pairlis" "cddar" "pprint-indent" "union" "compiled-function-p" "rotatef" "abort"
    "machine-type" "concatenated-stream-streams" "string-right-trim" "enough-namestring"
    "arithmetic-error-operands" "ceiling" "dolist" "delete" "make-condition" "string-left-trim"
    "integer-decode-float" "check-type" "notevery" "function-lambda-expression" "-"
    "multiple-value-setq" "name-char" "push" "pprint-pop" "compile-file-pathname" "list-length"
    "nstring-upcase" "eq" "find-if" "method-qualifiers" "caadr" "cddr" "string=" "let*"
    "remove-method" "pathname-match-p" "find-package" "truncate" "caaddr" "get-setf-expansion"
    "loop" "define-setf-expander" "caddr" "package-shadowing-symbols" "force-output"
    "slot-makunbound" "string-not-greaterp" "cdadar" "cdaadr" "logandc2" "make-array"
    "merge-pathnames" "sin" "1-" "machine-version" "ffloor" "packagep" "set-pprint-dispatch" "flet"
    "gensym" "pprint-exit-if-list-exhausted" "cos" "get" "mapl" "delete-if"
    "with-condition-restarts" "atanh" "copy-list" "fill" "char-not-greaterp" "bit-orc1" "mod"
    "package-used-by-list" "warn" "add-method" "simple-string-p" "find-restart" "describe"
    "pathname-version" "peek-char" "yes-or-no-p" "complexp" "aref" "not" "position-if" "string>="
    "defstruct" "float-radix" "ninth" "caadar" "subtypep" "set" "butlast" "allocate-instance"
    "with-input-from-string" "assoc" "write" "make-random-state" "bit-eqv" "float-digits"
    "long-site-name" "with-compilation-unit" "delete-duplicates" "make-symbol" "room" "cdar"
    "pprint-fill" "defgeneric" "macroexpand-1" "scale-float" "cdaaar"
    "update-instance-for-different-class" "array-row-major-index" "ed" "file-string-length"
    "ensure-directories-exist" "copy-readtable" "string<=" "seventh" "with-output-to-string"
    "signum" "elt" "untrace" "null" "defparameter" "block" "prin1" "revappend" "gentemp" "ctypecase"
    "ash" "sxhash" "listp" "do-external-symbols" "bit-ior" "etypecase" "sort" "change-class"
    "find-class" "alpha-char-p" "map-into" "terpri" "do-all-symbols" "ldb" "logorc1" "search"
    "fmakunbound" "load" "character" "string-not-equal" "pathnamep" "make-broadcast-stream" "arrayp"
    "mapcan" "cerror" "invoke-restart-interactively" "assoc-if-not" "with-package-iterator"
    "get-internal-run-time" "read-delimited-list" "unless" "lower-case-p" "restart-name" "/" "boole"
    "defmethod" "float" "software-version" "vector-pop" "vector-push-extend" "caar" "ldiff" "member"
    "find-symbol" "reduce" "svref" "describe-object" "logior" "string-equal" "type-of" "position"
    "cddadr" "pathname-device" "get-output-stream-string" "symbol-package" "tan"
    "compute-applicable-methods" "cddddr" "nsubst-if-not" "sublis" "set-difference"
    "two-way-stream-input-stream" "adjustable-array-p" "machine-instance" "signal" "conjugate"
    "caaaar" "endp" "lisp-implementation-version" "cddaar" "package-name" "adjust-array" "bit-nand"
    "gethash" "in-package" "symbol-function" "make-concatenated-stream" "defpackage" "class-of"
    "no-next-method" "logeqv" "deposit-field" "disassemble" "unuse-package" "copy-tree" "find"
    "asinh" "class-name" "rename-file" "values" "print-not-readable-object" "mismatch" "cadadr"
    "shadowing-import" "delete-if-not" "maplist" "listen" "return" "stream-element-type" "unintern"
    "merge" "make-synonym-stream" "prin1-to-string" "nsubst-if" "byte-position" "phase"
    "muffle-warning" "remhash" "continue" "load-time-value" "hash-table-size"
    "upgraded-complex-part-type" "char-lessp" "sbit" "upgraded-array-element-type" "file-length"
    "typecase" "cadddr" "first" "rationalize" "logtest" "find-if-not" "dpb" "mapc" "sinh"
    "char-greaterp" "shiftf" "denominator" "get-universal-time" "nconc" "setf" "lognand"
    "rename-package" "pprint-logical-block" "break" "symbol-macrolet" "the" "fresh-line"
    "clear-output" "assoc-if" "string/=" "princ" "directory-namestring" "stream-error-stream"
    "array-element-type" "setq" "copy-seq" "time" "restart-case" "prog*" "shared-initialize"
    "array-total-size" "simple-bit-vector-p" "define-method-combination" "write-byte" "constantly"
    "caddar" "print-object" "vector" "throw" "reverse" ">=" "upper-case-p" "nbutlast")
  )

(list_lit
  .
  (sym_lit) @operator
  (#match? @operator "^([+*-+=<>]|<=|>=|/=)$"))

((sym_lit) @string.special.symbol
  (#lua-match? @string.special.symbol "^[&]"))

[
  (array_dimension)
  "#0A"
  "#0a"
] @number

(char_lit) @character
]==],
    ["injections.scm"] = [==[
([
  (comment)
  (block_comment)
] @injection.content
  (#set! injection.language "comment"))
]==],
    ["locals.scm"] = [==[
(defun_header
  function_name: (sym_lit) @local.definition.function
  (#set! definition.function.scope "parent"))

(defun_header
  lambda_list: (list_lit
    (sym_lit) @local.definition.parameter))

(defun_header
  keyword: (defun_keyword
    "defmethod")
  lambda_list: (list_lit
    (list_lit
      .
      (sym_lit)
      .
      (sym_lit) @local.definition.type)))

(defun_header
  lambda_list: (list_lit
    (list_lit
      .
      (sym_lit) @local.definition.parameter
      .
      (_))))

(sym_lit) @local.reference

(defun) @local.scope

((list_lit
  .
  (sym_lit) @_defvar
  .
  (sym_lit) @local.definition.var)
  (#match? @_defvar "^(cl:)?(defvar|defparameter)$"))

(list_lit
  .
  (sym_lit) @_deftest
  .
  (sym_lit) @local.definition.function
  (#eq? @_deftest "deftest")) @local.scope

(list_lit
  .
  (sym_lit) @_deftest
  .
  (sym_lit) @local.definition.function
  (#eq? @_deftest "deftest")) @local.scope

(for_clause
  .
  (sym_lit) @local.definition.var)

(with_clause
  .
  (sym_lit) @local.definition.var)

(loop_macro) @local.scope

(list_lit
  .
  (sym_lit) @_let
  (#match? @_let "(cl:|cffi:)?(with-accessors|with-foreign-objects|let[*]?)")
  .
  (list_lit
    (list_lit
      .
      (sym_lit) @local.definition.var))) @local.scope

(list_lit
  .
  (sym_lit) @_let
  (#match? @_let "(cl:|alexandria:)?(with-gensyms|dotimes|with-foreign-object)")
  .
  (list_lit
    .
    (sym_lit) @local.definition.var)) @local.scope

(list_lit
  .
  (kwd_lit) @_import_from
  (#eq? @_import_from ":import-from")
  .
  (_)
  (kwd_lit
    (kwd_symbol) @local.definition.import))

(list_lit
  .
  (kwd_lit) @_import_from
  (#eq? @_import_from ":import-from")
  .
  (_)
  (sym_lit) @local.definition.import)

(list_lit
  .
  (kwd_lit) @_use
  (#eq? @_use ":use")
  (kwd_lit
    (kwd_symbol) @local.definition.import))

(list_lit
  .
  (kwd_lit) @_use
  (#eq? @_use ":use")
  (sym_lit) @local.definition.import)
]==],
  },
  extra_files = {
    ["nvim-treesitter-LICENSE"] = [[
The tree-sitter queries that are bundled with this package
have been borrowed from nvim-treesitter.
See the following license:

                                 Apache License
                           Version 2.0, January 2004
                        http://www.apache.org/licenses/

   TERMS AND CONDITIONS FOR USE, REPRODUCTION, AND DISTRIBUTION

   1. Definitions.

      "License" shall mean the terms and conditions for use, reproduction,
      and distribution as defined by Sections 1 through 9 of this document.

      "Licensor" shall mean the copyright owner or entity authorized by
      the copyright owner that is granting the License.

      "Legal Entity" shall mean the union of the acting entity and all
      other entities that control, are controlled by, or are under common
      control with that entity. For the purposes of this definition,
      "control" means (i) the power, direct or indirect, to cause the
      direction or management of such entity, whether by contract or
      otherwise, or (ii) ownership of fifty percent (50%) or more of the
      outstanding shares, or (iii) beneficial ownership of such entity.

      "You" (or "Your") shall mean an individual or Legal Entity
      exercising permissions granted by this License.

      "Source" form shall mean the preferred form for making modifications,
      including but not limited to software source code, documentation
      source, and configuration files.

      "Object" form shall mean any form resulting from mechanical
      transformation or translation of a Source form, including but
      not limited to compiled object code, generated documentation,
      and conversions to other media types.

      "Work" shall mean the work of authorship, whether in Source or
      Object form, made available under the License, as indicated by a
      copyright notice that is included in or attached to the work
      (an example is provided in the Appendix below).

      "Derivative Works" shall mean any work, whether in Source or Object
      form, that is based on (or derived from) the Work and for which the
      editorial revisions, annotations, elaborations, or other modifications
      represent, as a whole, an original work of authorship. For the purposes
      of this License, Derivative Works shall not include works that remain
      separable from, or merely link (or bind by name) to the interfaces of,
      the Work and Derivative Works thereof.

      "Contribution" shall mean any work of authorship, including
      the original version of the Work and any modifications or additions
      to that Work or Derivative Works thereof, that is intentionally
      submitted to Licensor for inclusion in the Work by the copyright owner
      or by an individual or Legal Entity authorized to submit on behalf of
      the copyright owner. For the purposes of this definition, "submitted"
      means any form of electronic, verbal, or written communication sent
      to the Licensor or its representatives, including but not limited to
      communication on electronic mailing lists, source code control systems,
      and issue tracking systems that are managed by, or on behalf of, the
      Licensor for the purpose of discussing and improving the Work, but
      excluding communication that is conspicuously marked or otherwise
      designated in writing by the copyright owner as "Not a Contribution."

      "Contributor" shall mean Licensor and any individual or Legal Entity
      on behalf of whom a Contribution has been received by Licensor and
      subsequently incorporated within the Work.

   2. Grant of Copyright License. Subject to the terms and conditions of
      this License, each Contributor hereby grants to You a perpetual,
      worldwide, non-exclusive, no-charge, royalty-free, irrevocable
      copyright license to reproduce, prepare Derivative Works of,
      publicly display, publicly perform, sublicense, and distribute the
      Work and such Derivative Works in Source or Object form.

   3. Grant of Patent License. Subject to the terms and conditions of
      this License, each Contributor hereby grants to You a perpetual,
      worldwide, non-exclusive, no-charge, royalty-free, irrevocable
      (except as stated in this section) patent license to make, have made,
      use, offer to sell, sell, import, and otherwise transfer the Work,
      where such license applies only to those patent claims licensable
      by such Contributor that are necessarily infringed by their
      Contribution(s) alone or by combination of their Contribution(s)
      with the Work to which such Contribution(s) was submitted. If You
      institute patent litigation against any entity (including a
      cross-claim or counterclaim in a lawsuit) alleging that the Work
      or a Contribution incorporated within the Work constitutes direct
      or contributory patent infringement, then any patent licenses
      granted to You under this License for that Work shall terminate
      as of the date such litigation is filed.

   4. Redistribution. You may reproduce and distribute copies of the
      Work or Derivative Works thereof in any medium, with or without
      modifications, and in Source or Object form, provided that You
      meet the following conditions:

      (a) You must give any other recipients of the Work or
          Derivative Works a copy of this License; and

      (b) You must cause any modified files to carry prominent notices
          stating that You changed the files; and

      (c) You must retain, in the Source form of any Derivative Works
          that You distribute, all copyright, patent, trademark, and
          attribution notices from the Source form of the Work,
          excluding those notices that do not pertain to any part of
          the Derivative Works; and

      (d) If the Work includes a "NOTICE" text file as part of its
          distribution, then any Derivative Works that You distribute must
          include a readable copy of the attribution notices contained
          within such NOTICE file, excluding those notices that do not
          pertain to any part of the Derivative Works, in at least one
          of the following places: within a NOTICE text file distributed
          as part of the Derivative Works; within the Source form or
          documentation, if provided along with the Derivative Works; or,
          within a display generated by the Derivative Works, if and
          wherever such third-party notices normally appear. The contents
          of the NOTICE file are for informational purposes only and
          do not modify the License. You may add Your own attribution
          notices within Derivative Works that You distribute, alongside
          or as an addendum to the NOTICE text from the Work, provided
          that such additional attribution notices cannot be construed
          as modifying the License.

      You may add Your own copyright statement to Your modifications and
      may provide additional or different license terms and conditions
      for use, reproduction, or distribution of Your modifications, or
      for any such Derivative Works as a whole, provided Your use,
      reproduction, and distribution of the Work otherwise complies with
      the conditions stated in this License.

   5. Submission of Contributions. Unless You explicitly state otherwise,
      any Contribution intentionally submitted for inclusion in the Work
      by You to the Licensor shall be under the terms and conditions of
      this License, without any additional terms or conditions.
      Notwithstanding the above, nothing herein shall supersede or modify
      the terms of any separate license agreement you may have executed
      with Licensor regarding such Contributions.

   6. Trademarks. This License does not grant permission to use the trade
      names, trademarks, service marks, or product names of the Licensor,
      except as required for reasonable and customary use in describing the
      origin of the Work and reproducing the content of the NOTICE file.

   7. Disclaimer of Warranty. Unless required by applicable law or
      agreed to in writing, Licensor provides the Work (and each
      Contributor provides its Contributions) on an "AS IS" BASIS,
      WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or
      implied, including, without limitation, any warranties or conditions
      of TITLE, NON-INFRINGEMENT, MERCHANTABILITY, or FITNESS FOR A
      PARTICULAR PURPOSE. You are solely responsible for determining the
      appropriateness of using or redistributing the Work and assume any
      risks associated with Your exercise of permissions under this License.

   8. Limitation of Liability. In no event and under no legal theory,
      whether in tort (including negligence), contract, or otherwise,
      unless required by applicable law (such as deliberate and grossly
      negligent acts) or agreed to in writing, shall any Contributor be
      liable to You for damages, including any direct, indirect, special,
      incidental, or consequential damages of any character arising as a
      result of this License or out of the use or inability to use the
      Work (including but not limited to damages for loss of goodwill,
      work stoppage, computer failure or malfunction, or any and all
      other commercial damages or losses), even if such Contributor
      has been advised of the possibility of such damages.

   9. Accepting Warranty or Additional Liability. While redistributing
      the Work or Derivative Works thereof, You may choose to offer,
      and charge a fee for, acceptance of support, warranty, indemnity,
      or other liability obligations and/or rights consistent with this
      License. However, in accepting such obligations, You may act only
      on Your own behalf and on Your sole responsibility, not on behalf
      of any other Contributor, and only if You agree to indemnify,
      defend, and hold each Contributor harmless for any liability
      incurred by, or claims asserted against, such Contributor by reason
      of your accepting any such warranty or additional liability.

   END OF TERMS AND CONDITIONS

   APPENDIX: How to apply the Apache License to your work.

      To apply the Apache License to your work, attach the following
      boilerplate notice, with the fields enclosed by brackets "[]"
      replaced with your own identifying information. (Don't include
      the brackets!)  The text should be enclosed in the appropriate
      comment syntax for the file format. We also recommend that a
      file or class name and description of purpose be included on the
      same "printed page" as the copyright notice for easier
      identification within third-party archives.

   Copyright [yyyy] [name of copyright owner]

   Licensed under the Apache License, Version 2.0 (the "License");
   you may not use this file except in compliance with the License.
   You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

   Unless required by applicable law or agreed to in writing, software
   distributed under the License is distributed on an "AS IS" BASIS,
   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
   See the License for the specific language governing permissions and
   limitations under the License.
]],
  },
}
