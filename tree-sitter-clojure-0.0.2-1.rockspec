local git_ref = 'f4236d4da8aa92bc105d9c118746474c608e6af7'
local modrev = '0.0.2'
local specrev = '1'

local repo_url = 'https://github.com/sogaiu/tree-sitter-clojure'

rockspec_format = '3.0'
package = 'tree-sitter-clojure'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for clojure',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/sogaiu/tree-sitter-clojure',
  license = 'UNKNOWN'
}

dependencies = { 'lua >= 5.1' } 

build_dependencies = {
  'luarocks-build-treesitter-parser >= 5.0.0',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-clojure-' .. 'f4236d4da8aa92bc105d9c118746474c608e6af7',
}

build = {
  type = "treesitter-parser",
  lang = "clojure",
  parser = true,
  generate = false,
  generate_from_json = false,
  location = nil,
  copy_directories = { "queries" },
  queries = {
    ["folds.scm"] = [==[
(source
  (list_lit) @fold)
]==],
    ["highlights.scm"] = [==[
; >> Explanation
; Parsers for lisps are a bit weird in that they just return the raw forms.
; This means we have to do a bit of extra work in the queries to get things
; highlighted as they should be.
;
; For the most part this means that some things have to be assigned multiple
; groups.
; By doing this we can add a basic capture and then later refine it with more
; specialized captures.
; This can mean that sometimes things are highlighted weirdly because they
; have multiple highlight groups applied to them.
; >> Literals
((dis_expr) @comment
  (#set! "priority" 105)
  ; Higher priority to mark the whole sexpr as a comment
  )

(kwd_lit) @string.special.symbol

(str_lit) @string

(num_lit) @number

(char_lit) @character

(bool_lit) @boolean

(nil_lit) @constant.builtin

(comment) @comment @spell

(regex_lit) @string.regexp

[
  "'"
  "`"
] @string.escape

[
  "~"
  "~@"
  "#"
] @punctuation.special

[
  "{"
  "}"
  "["
  "]"
  "("
  ")"
] @punctuation.bracket

; >> Symbols
; General symbol highlighting
(sym_lit) @variable

; General function calls
(list_lit
  .
  (sym_lit) @function.call)

(anon_fn_lit
  .
  (sym_lit) @function.call)

; Quoted symbols
(quoting_lit
  (sym_lit) @string.special.symbol)

(syn_quoting_lit
  (sym_lit) @string.special.symbol)

; Used in destructure pattern
((sym_lit) @variable.parameter
  (#lua-match? @variable.parameter "^[&]"))

; Inline function variables
((sym_lit) @variable.builtin
  (#lua-match? @variable.builtin "^%%%d*$"))

((sym_lit) @variable.builtin
  (#eq? @variable.builtin "%&"))

; Constructor
((sym_lit) @constructor
  (#lua-match? @constructor "^-%>[^>].*"))

; Builtin dynamic variables
((sym_lit) @variable.builtin
  (#any-of? @variable.builtin
    "*agent*" "*allow-unresolved-vars*" "*assert*" "*clojure-version*" "*command-line-args*"
    "*compile-files*" "*compile-path*" "*compiler-options*" "*data-readers*"
    "*default-data-reader-fn*" "*err*" "*file*" "*flush-on-newline*" "*fn-loader*" "*in*"
    "*math-context*" "*ns*" "*out*" "*print-dup*" "*print-length*" "*print-level*" "*print-meta*"
    "*print-namespace-maps*" "*print-readably*" "*read-eval*" "*reader-resolver*" "*source-path*"
    "*suppress-read*" "*unchecked-math*" "*use-context-classloader*" "*verbose-defrecords*"
    "*warn-on-reflection*"))

; Builtin repl variables
((sym_lit) @variable.builtin
  (#any-of? @variable.builtin "*1" "*2" "*3" "*e"))

; Types
(sym_lit
  name: (sym_name) @_name
  (#lua-match? @_name "^[%u][^/%s]*$")) @type

; Symbols with `.` but not `/`
(sym_lit
  !namespace
  name: (sym_name) @_name
  (#lua-match? @_name "^[^.]+[.]")) @type

; Interop
; (.instanceMember instance args*)
; (.instanceMember Classname args*)
((sym_lit
  name: (sym_name) @_name) @function.method
  (#lua-match? @_name "^%.[^-]"))

; (.-instanceField instance)
((sym_name) @variable.member
  (#lua-match? @variable.member "^%.%-%S*"))

;  Classname/staticField
(sym_lit
  namespace: (sym_ns) @_namespace
  (#lua-match? @_namespace "^[%u]%S*$")) @variable.member

; (Classname/staticMethod args*)
(list_lit
  .
  (sym_lit
    namespace: (sym_ns) @_namespace
    (#lua-match? @_namespace "^%u")) @function.method)

; TODO: Special casing for the `.` macro
; Operators
((sym_lit) @operator
  (#any-of? @operator "*" "*'" "+" "+'" "-" "-'" "/" "<" "<=" ">" ">=" "=" "=="))

((sym_lit) @keyword.operator
  (#any-of? @keyword.operator "not" "not=" "and" "or"))

; Definition functions
((sym_lit) @keyword
  (#any-of? @keyword
    "def" "defonce" "defrecord" "defmacro" "definline" "definterface" "defmulti" "defmethod"
    "defstruct" "defprotocol" "deftype"))

((sym_lit) @keyword
  (#eq? @keyword "declare"))

((sym_name) @keyword.coroutine
  (#any-of? @keyword.coroutine
    "alts!" "alts!!" "await" "await-for" "await1" "chan" "close!" "future" "go" "sync" "thread"
    "timeout" "<!" "<!!" ">!" ">!!"))

((sym_lit
  name: (sym_name) @_keyword.function.name) @keyword.function
  (#any-of? @_keyword.function.name "defn" "defn-" "fn" "fn*"))

; Comment
((sym_lit) @comment
  (#eq? @comment "comment"))

; Conditionals
((sym_lit) @keyword.conditional
  (#any-of? @keyword.conditional "case" "cond" "cond->" "cond->>" "condp"))

((sym_lit) @keyword.conditional
  (#any-of? @keyword.conditional "if" "if-let" "if-not" "if-some"))

((sym_lit) @keyword.conditional
  (#any-of? @keyword.conditional "when" "when-first" "when-let" "when-not" "when-some"))

; Repeats
((sym_lit) @keyword.repeat
  (#any-of? @keyword.repeat "doseq" "dotimes" "for" "loop" "recur" "while"))

; Exception
((sym_lit) @keyword.exception
  (#any-of? @keyword.exception "throw" "try" "catch" "finally"))

; Includes
((sym_lit) @keyword.import
  (#any-of? @keyword.import "ns" "import" "require" "use"))

; Builtin macros
; TODO: Do all these items belong here?
((sym_lit
  name: (sym_name) @function.macro)
  (#any-of? @function.macro
    "." ".." "->" "->>" "amap" "areduce" "as->" "assert" "binding" "bound-fn" "delay" "do" "dosync"
    "doto" "extend-protocol" "extend-type" "gen-class" "gen-interface" "io!" "lazy-cat" "lazy-seq"
    "let" "letfn" "locking" "memfn" "monitor-enter" "monitor-exit" "proxy" "proxy-super" "pvalues"
    "refer-clojure" "reify" "set!" "some->" "some->>" "time" "unquote" "unquote-splicing" "var"
    "vswap!" "with-bindings" "with-in-str" "with-loading-context" "with-local-vars" "with-open"
    "with-out-str" "with-precision" "with-redefs"))

; All builtin functions
; (->> (ns-publics *ns*)
;      (keep (fn [[s v]] (when-not (:macro (meta v)) s)))
;      sort
;      clojure.pprint/pprint))
; ...and then lots of manual filtering...
((sym_lit
  name: (sym_name) @function.builtin)
  (#any-of? @function.builtin
    "->ArrayChunk" "->Eduction" "->Vec" "->VecNode" "->VecSeq" "-cache-protocol-fn" "-reset-methods"
    "PrintWriter-on" "StackTraceElement->vec" "Throwable->map" "accessor" "aclone" "add-classpath"
    "add-tap" "add-watch" "agent" "agent-error" "agent-errors" "aget" "alength" "alias" "all-ns"
    "alter" "alter-meta!" "alter-var-root" "ancestors" "any?" "apply" "array-map" "aset"
    "aset-boolean" "aset-byte" "aset-char" "aset-double" "aset-float" "aset-int" "aset-long"
    "aset-short" "assoc" "assoc!" "assoc-in" "associative?" "atom" "bases" "bean" "bigdec" "bigint"
    "biginteger" "bit-and" "bit-and-not" "bit-clear" "bit-flip" "bit-not" "bit-or" "bit-set"
    "bit-shift-left" "bit-shift-right" "bit-test" "bit-xor" "boolean" "boolean-array" "boolean?"
    "booleans" "bound-fn*" "bound?" "bounded-count" "butlast" "byte" "byte-array" "bytes" "bytes?"
    "cast" "cat" "char" "char-array" "char-escape-string" "char-name-string" "char?" "chars" "chunk"
    "chunk-append" "chunk-buffer" "chunk-cons" "chunk-first" "chunk-next" "chunk-rest"
    "chunked-seq?" "class" "class?" "clear-agent-errors" "clojure-version" "coll?" "commute" "comp"
    "comparator" "compare" "compare-and-set!" "compile" "complement" "completing" "concat" "conj"
    "conj!" "cons" "constantly" "construct-proxy" "contains?" "count" "counted?" "create-ns"
    "create-struct" "cycle" "dec" "dec'" "decimal?" "dedupe" "default-data-readers" "delay?"
    "deliver" "denominator" "deref" "derive" "descendants" "destructure" "disj" "disj!" "dissoc"
    "dissoc!" "distinct" "distinct?" "doall" "dorun" "double" "double-array" "eduction" "empty"
    "empty?" "ensure" "ensure-reduced" "enumeration-seq" "error-handler" "error-mode" "eval" "even?"
    "every-pred" "every?" "extend" "extenders" "extends?" "false?" "ffirst" "file-seq" "filter"
    "filterv" "find" "find-keyword" "find-ns" "find-protocol-impl" "find-protocol-method" "find-var"
    "first" "flatten" "float" "float-array" "float?" "floats" "flush" "fn?" "fnext" "fnil" "force"
    "format" "frequencies" "future-call" "future-cancel" "future-cancelled?" "future-done?"
    "future?" "gensym" "get" "get-in" "get-method" "get-proxy-class" "get-thread-bindings"
    "get-validator" "group-by" "halt-when" "hash" "hash-combine" "hash-map" "hash-ordered-coll"
    "hash-set" "hash-unordered-coll" "ident?" "identical?" "identity" "ifn?" "in-ns" "inc" "inc'"
    "indexed?" "init-proxy" "inst-ms" "inst-ms*" "inst?" "instance?" "int" "int-array" "int?"
    "integer?" "interleave" "intern" "interpose" "into" "into-array" "ints" "isa?" "iterate"
    "iterator-seq" "juxt" "keep" "keep-indexed" "key" "keys" "keyword" "keyword?" "last" "line-seq"
    "list" "list*" "list?" "load" "load-file" "load-reader" "load-string" "loaded-libs" "long"
    "long-array" "longs" "macroexpand" "macroexpand-1" "make-array" "make-hierarchy" "map"
    "map-entry?" "map-indexed" "map?" "mapcat" "mapv" "max" "max-key" "memoize" "merge" "merge-with"
    "meta" "method-sig" "methods" "min" "min-key" "mix-collection-hash" "mod" "munge" "name"
    "namespace" "namespace-munge" "nat-int?" "neg-int?" "neg?" "newline" "next" "nfirst" "nil?"
    "nnext" "not-any?" "not-empty" "not-every?" "ns-aliases" "ns-imports" "ns-interns" "ns-map"
    "ns-name" "ns-publics" "ns-refers" "ns-resolve" "ns-unalias" "ns-unmap" "nth" "nthnext"
    "nthrest" "num" "number?" "numerator" "object-array" "odd?" "parents" "partial" "partition"
    "partition-all" "partition-by" "pcalls" "peek" "persistent!" "pmap" "pop" "pop!"
    "pop-thread-bindings" "pos-int?" "pos?" "pr" "pr-str" "prefer-method" "prefers"
    "primitives-classnames" "print" "print-ctor" "print-dup" "print-method" "print-simple"
    "print-str" "printf" "println" "println-str" "prn" "prn-str" "promise" "proxy-call-with-super"
    "proxy-mappings" "proxy-name" "push-thread-bindings" "qualified-ident?" "qualified-keyword?"
    "qualified-symbol?" "quot" "rand" "rand-int" "rand-nth" "random-sample" "range" "ratio?"
    "rational?" "rationalize" "re-find" "re-groups" "re-matcher" "re-matches" "re-pattern" "re-seq"
    "read" "read+string" "read-line" "read-string" "reader-conditional" "reader-conditional?"
    "realized?" "record?" "reduce" "reduce-kv" "reduced" "reduced?" "reductions" "ref"
    "ref-history-count" "ref-max-history" "ref-min-history" "ref-set" "refer"
    "release-pending-sends" "rem" "remove" "remove-all-methods" "remove-method" "remove-ns"
    "remove-tap" "remove-watch" "repeat" "repeatedly" "replace" "replicate" "requiring-resolve"
    "reset!" "reset-meta!" "reset-vals!" "resolve" "rest" "restart-agent" "resultset-seq" "reverse"
    "reversible?" "rseq" "rsubseq" "run!" "satisfies?" "second" "select-keys" "send" "send-off"
    "send-via" "seq" "seq?" "seqable?" "seque" "sequence" "sequential?" "set"
    "set-agent-send-executor!" "set-agent-send-off-executor!" "set-error-handler!" "set-error-mode!"
    "set-validator!" "set?" "short" "short-array" "shorts" "shuffle" "shutdown-agents"
    "simple-ident?" "simple-keyword?" "simple-symbol?" "slurp" "some" "some-fn" "some?" "sort"
    "sort-by" "sorted-map" "sorted-map-by" "sorted-set" "sorted-set-by" "sorted?" "special-symbol?"
    "spit" "split-at" "split-with" "str" "string?" "struct" "struct-map" "subs" "subseq" "subvec"
    "supers" "swap!" "swap-vals!" "symbol" "symbol?" "tagged-literal" "tagged-literal?" "take"
    "take-last" "take-nth" "take-while" "tap>" "test" "the-ns" "thread-bound?" "to-array"
    "to-array-2d" "trampoline" "transduce" "transient" "tree-seq" "true?" "type" "unchecked-add"
    "unchecked-add-int" "unchecked-byte" "unchecked-char" "unchecked-dec" "unchecked-dec-int"
    "unchecked-divide-int" "unchecked-double" "unchecked-float" "unchecked-inc" "unchecked-inc-int"
    "unchecked-int" "unchecked-long" "unchecked-multiply" "unchecked-multiply-int"
    "unchecked-negate" "unchecked-negate-int" "unchecked-remainder-int" "unchecked-short"
    "unchecked-subtract" "unchecked-subtract-int" "underive" "unquote" "unquote-splicing"
    "unreduced" "unsigned-bit-shift-right" "update" "update-in" "update-proxy" "uri?" "uuid?" "val"
    "vals" "var-get" "var-set" "var?" "vary-meta" "vec" "vector" "vector-of" "vector?" "volatile!"
    "volatile?" "vreset!" "with-bindings*" "with-meta" "with-redefs-fn" "xml-seq" "zero?" "zipmap"
    ; earlier
    "drop" "drop-last" "drop-while" "double?" "doubles" "ex-data" "ex-info"
    ; 1.10
    "ex-cause" "ex-message"
    ; 1.11
    "NaN?" "abs" "infinite?" "iteration" "random-uuid" "parse-boolean" "parse-double" "parse-long"
    "parse-uuid" "seq-to-map-for-destructuring" "update-keys" "update-vals"
    ; 1.12
    "partitionv" "partitionv-all" "splitv-at"))

; >> Context based highlighting
; def-likes
; Correctly highlight docstrings
;(list_lit
;.
;(sym_lit) @_keyword ; Don't really want to highlight twice
;(#any-of? @_keyword
;"def" "defonce" "defrecord" "defmacro" "definline"
;"defmulti" "defmethod" "defstruct" "defprotocol"
;"deftype")
;.
;(sym_lit)
;.
; TODO: Add @comment highlight
;(str_lit)?
;.
;(_))
; Function definitions
(list_lit
  .
  ((sym_lit
    name: (sym_name) @_keyword.function.name)
    (#any-of? @_keyword.function.name "defn" "defn-" "fn" "fn*"))
  .
  (sym_lit)? @function
  .
  ; TODO: Add @comment highlight
  (str_lit)?)

; TODO: Fix parameter highlighting
;       I think there's a bug here in nvim-treesitter
; TODO: Reproduce bug and file ticket
;.
;[(vec_lit
;  (sym_lit)* @variable.parameter)
; (list_lit
;  (vec_lit
;   (sym_lit)* @variable.parameter))])
;[((list_lit
;   (vec_lit
;    (sym_lit) @variable.parameter)
;   (_)
;  +
; ((vec_lit
;   (sym_lit) @variable.parameter)
;  (_)))
; Meta punctuation
; NOTE: When the above `Function definitions` query captures the
;       the @function it also captures the child meta_lit
;       We capture the meta_lit symbol (^) after so that the later
;       highlighting overrides the former
"^" @punctuation.special

; namespaces
(list_lit
  .
  (sym_lit) @_include
  (#eq? @_include "ns")
  .
  (sym_lit) @module)
]==],
    ["injections.scm"] = [==[
((comment) @injection.content
  (#set! injection.language "comment"))
]==],
    ["locals.scm"] = [==[
; placeholder file to get incremental selection to work
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
