local git_ref = 'ca4785b47a4ff15653f0408a49c764dec533e0d3'
local modrev = '0.0.32'
local specrev = '1'

local repo_url = 'https://github.com/sogaiu/tree-sitter-janet-simple'

rockspec_format = '3.0'
package = 'tree-sitter-janet_simple'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for janet_simple',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/sogaiu/tree-sitter-janet-simple',
  license = 'UNKNOWN'
}

dependencies = { 'lua >= 5.1' } 

build_dependencies = {
  'luarocks-build-treesitter-parser >= 5.0.0',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-janet-simple-' .. 'ca4785b47a4ff15653f0408a49c764dec533e0d3',
}

build = {
  type = "treesitter-parser",
  lang = "janet_simple",
  parser = true,
  generate = false,
  generate_from_json = false,
  location = nil,
  copy_directories = { "queries" },
  queries = {
    ["folds.scm"] = [==[
(source
  (par_tup_lit) @fold)
]==],
    ["highlights.scm"] = [==[
; >> Literals
(kwd_lit) @string.special.symbol

(str_lit) @string

(long_str_lit) @string

(buf_lit) @string

(long_buf_lit) @string

(num_lit) @number

(bool_lit) @boolean

(nil_lit) @constant.builtin

(comment) @comment @spell

[
  "{"
  "@{"
  "}"
  "["
  "@["
  "]"
  "("
  "@("
  ")"
] @punctuation.bracket

; >> Symbols
; General symbol highlighting
(sym_lit) @variable

; General function calls
(par_tup_lit
  .
  (sym_lit) @function.call)

(short_fn_lit
  .
  (sym_lit) @function.call)

; Quoted symbols
(quote_lit
  (sym_lit) @string.special.symbol)

(qq_lit
  (sym_lit) @string.special.symbol)

; Dynamic variables
((sym_lit) @variable.builtin
  (#lua-match? @variable.builtin "^[*].+[*]$"))

; Comment
((sym_lit) @comment
  (#any-of? @comment "comment"))

; Special forms and builtin macros
;
; # special forms were manually added at the beginning
;
; # for macros
; (each name (all-bindings)
;   (when-let [info (dyn (symbol name))]
;     (when (info :macro)
;       (print name))))
((sym_lit) @function.macro
  (#any-of? @function.macro
    ; special forms
    "break" "def" "do" "fn" "if" "quasiquote" "quote" "set" "splice" "unquote" "upscope" "var"
    "while"
    ; macros
    "%=" "*=" "++" "+=" "--" "-=" "->" "->>" "-?>" "-?>>" "/=" "and" "as->" "as-macro" "as?->"
    "assert" "case" "catseq" "chr" "comment" "compif" "comptime" "compwhen" "cond" "coro" "def-"
    "default" "defdyn" "defer" "defmacro" "defmacro-" "defn" "defn-" "delay" "doc" "each" "eachk"
    "eachp" "edefer" "ev/do-thread" "ev/gather" "ev/spawn" "ev/spawn-thread" "ev/with-deadline"
    "ev/with-lock" "ev/with-rlock" "ev/with-wlock" "ffi/defbind" "ffi/defbind-alias" "fiber-fn"
    "for" "forever" "forv" "generate" "if-let" "if-not" "if-with" "import" "juxt" "label" "let"
    "loop" "match" "or" "prompt" "protect" "repeat" "seq" "short-fn" "tabseq" "toggle" "tracev"
    "try" "unless" "use" "var-" "varfn" "when" "when-let" "when-with" "with" "with-dyns" "with-env"
    "with-syms" "with-vars"
    ; obsolete builtin macros
    "eachy"))

; All builtin functions
;
; (each name (all-bindings)
;   (when-let [info (dyn (symbol name))]
;     (when (and (nil? (info :macro))
;                (or (function? (info :value))
;                    (cfunction? (info :value))))
;       (print name))))
((sym_lit) @function.builtin
  (#any-of? @function.builtin
    "%" "*" "+" "-" "/" "<" "<=" "=" ">" ">="
    ; debugging -- start janet with -d and use (debug) to see these
    ".break" ".breakall" ".bytecode" ".clear" ".clearall" ".disasm" ".fiber" ".fn" ".frame"
    ".locals" ".next" ".nextc" ".ppasm" ".signal" ".slot" ".slots" ".source" ".stack" ".step"
    ; back to regularly scheduled program
    "abstract?" "accumulate" "accumulate2" "all" "all-bindings" "all-dynamics" "any?" "apply"
    "array" "array/clear" "array/concat" "array/ensure" "array/fill" "array/insert" "array/new"
    "array/new-filled" "array/peek" "array/pop" "array/push" "array/remove" "array/slice"
    "array/trim" "array/weak" "array?" "asm" "bad-compile" "bad-parse" "band" "blshift" "bnot"
    "boolean?" "bor" "brshift" "brushift" "buffer" "buffer/bit" "buffer/bit-clear" "buffer/bit-set"
    "buffer/bit-toggle" "buffer/blit" "buffer/clear" "buffer/fill" "buffer/format"
    "buffer/format-at" "buffer/from-bytes" "buffer/new" "buffer/new-filled" "buffer/popn"
    "buffer/push" "buffer/push-at" "buffer/push-byte" "buffer/push-float32" "buffer/push-float64"
    "buffer/push-string" "buffer/push-uint16" "buffer/push-uint32" "buffer/push-uint64"
    "buffer/push-word" "buffer/slice" "buffer/trim" "buffer?" "bundle/add" "bundle/add-directory"
    "bundle/add-file" "bundle/install" "bundle/installed?" "bundle/list" "bundle/manifest"
    "bundle/prune" "bundle/reinstall" "bundle/topolist" "bundle/uninstall" "bundle/update-all"
    "bxor" "bytes?" "cancel" "cfunction?" "cli-main" "cmp" "comp" "compare" "compare<" "compare<="
    "compare=" "compare>" "compare>=" "compile" "complement" "count" "curenv" "debug"
    "debug/arg-stack" "debug/break" "debug/fbreak" "debug/lineage" "debug/stack" "debug/stacktrace"
    "debug/step" "debug/unbreak" "debug/unfbreak" "debugger" "debugger-on-status" "dec" "deep-not="
    "deep=" "defglobal" "describe" "dictionary?" "disasm" "distinct" "div" "doc*" "doc-format"
    "doc-of" "dofile" "drop" "drop-until" "drop-while" "dyn" "eflush" "empty?" "env-lookup" "eprin"
    "eprinf" "eprint" "eprintf" "error" "errorf" "ev/acquire-lock" "ev/acquire-rlock"
    "ev/acquire-wlock" "ev/all-tasks" "ev/call" "ev/cancel" "ev/capacity" "ev/chan" "ev/chan-close"
    "ev/chunk" "ev/close" "ev/count" "ev/deadline" "ev/full" "ev/give" "ev/give-supervisor" "ev/go"
    "ev/lock" "ev/read" "ev/release-lock" "ev/release-rlock" "ev/release-wlock" "ev/rselect"
    "ev/rwlock" "ev/select" "ev/sleep" "ev/take" "ev/thread" "ev/thread-chan" "ev/write" "eval"
    "eval-string" "even?" "every?" "extreme" "false?" "ffi/align" "ffi/call"
    "ffi/calling-conventions" "ffi/close" "ffi/context" "ffi/free" "ffi/jitfn" "ffi/lookup"
    "ffi/malloc" "ffi/native" "ffi/pointer-buffer" "ffi/pointer-cfunction" "ffi/read"
    "ffi/signature" "ffi/size" "ffi/struct" "ffi/trampoline" "ffi/write" "fiber/can-resume?"
    "fiber/current" "fiber/getenv" "fiber/last-value" "fiber/maxstack" "fiber/new" "fiber/root"
    "fiber/setenv" "fiber/setmaxstack" "fiber/status" "fiber?" "file/close" "file/flush"
    "file/lines" "file/open" "file/read" "file/seek" "file/tell" "file/temp" "file/write" "filter"
    "find" "find-index" "first" "flatten" "flatten-into" "flush" "flycheck" "freeze" "frequencies"
    "from-pairs" "function?" "gccollect" "gcinterval" "gcsetinterval" "gensym" "get" "get-in"
    "getline" "getproto" "group-by" "has-key?" "has-value?" "hash" "idempotent?" "identity"
    "import*" "in" "inc" "index-of" "indexed?" "int/s64" "int/to-bytes" "int/to-number" "int/u64"
    "int?" "interleave" "interpose" "invert" "juxt*" "keep" "keep-syntax" "keep-syntax!" "keys"
    "keyword" "keyword/slice" "keyword?" "kvs" "last" "length" "lengthable?" "load-image" "macex"
    "macex1" "maclintf" "make-env" "make-image" "map" "mapcat" "marshal" "math/abs" "math/acos"
    "math/acosh" "math/asin" "math/asinh" "math/atan" "math/atan2" "math/atanh" "math/cbrt"
    "math/ceil" "math/cos" "math/cosh" "math/erf" "math/erfc" "math/exp" "math/exp2" "math/expm1"
    "math/floor" "math/frexp" "math/gamma" "math/gcd" "math/hypot" "math/lcm" "math/ldexp"
    "math/log" "math/log-gamma" "math/log10" "math/log1p" "math/log2" "math/next" "math/pow"
    "math/random" "math/rng" "math/rng-buffer" "math/rng-int" "math/rng-uniform" "math/round"
    "math/seedrandom" "math/sin" "math/sinh" "math/sqrt" "math/tan" "math/tanh" "math/trunc" "max"
    "max-of" "mean" "memcmp" "merge" "merge-into" "merge-module" "min" "min-of" "mod"
    "module/add-paths" "module/expand-path" "module/find" "module/value" "nan?" "nat?" "native"
    "neg?" "net/accept" "net/accept-loop" "net/address" "net/address-unpack" "net/chunk" "net/close"
    "net/connect" "net/flush" "net/listen" "net/localname" "net/peername" "net/read" "net/recv-from"
    "net/send-to" "net/server" "net/setsockopt" "net/shutdown" "net/write" "next" "nil?" "not"
    "not=" "number?" "odd?" "one?" "os/arch" "os/cd" "os/chmod" "os/clock" "os/compiler"
    "os/cpu-count" "os/cryptorand" "os/cwd" "os/date" "os/dir" "os/environ" "os/execute" "os/exit"
    "os/getenv" "os/isatty" "os/link" "os/lstat" "os/mkdir" "os/mktime" "os/open" "os/perm-int"
    "os/perm-string" "os/pipe" "os/posix-exec" "os/posix-fork" "os/proc-close" "os/proc-kill"
    "os/proc-wait" "os/readlink" "os/realpath" "os/rename" "os/rm" "os/rmdir" "os/setenv"
    "os/setlocale" "os/shell" "os/sigaction" "os/sleep" "os/spawn" "os/stat" "os/strftime"
    "os/symlink" "os/time" "os/touch" "os/umask" "os/which" "pairs" "parse" "parse-all"
    "parser/byte" "parser/clone" "parser/consume" "parser/eof" "parser/error" "parser/flush"
    "parser/has-more" "parser/insert" "parser/new" "parser/produce" "parser/state" "parser/status"
    "parser/where" "partial" "partition" "partition-by" "peg/compile" "peg/find" "peg/find-all"
    "peg/match" "peg/replace" "peg/replace-all" "pos?" "postwalk" "pp" "prewalk" "prin" "prinf"
    "print" "printf" "product" "propagate" "put" "put-in" "quit" "range" "reduce" "reduce2" "repl"
    "require" "resume" "return" "reverse" "reverse!" "run-context" "sandbox" "scan-number" "setdyn"
    "signal" "slice" "slurp" "some" "sort" "sort-by" "sorted" "sorted-by" "spit" "string"
    "string/ascii-lower" "string/ascii-upper" "string/bytes" "string/check-set" "string/find"
    "string/find-all" "string/format" "string/from-bytes" "string/has-prefix?" "string/has-suffix?"
    "string/join" "string/repeat" "string/replace" "string/replace-all" "string/reverse"
    "string/slice" "string/split" "string/trim" "string/triml" "string/trimr" "string?" "struct"
    "struct/getproto" "struct/proto-flatten" "struct/to-table" "struct/with-proto" "struct?" "sum"
    "symbol" "symbol/slice" "symbol?" "table" "table/clear" "table/clone" "table/getproto"
    "table/new" "table/proto-flatten" "table/rawget" "table/setproto" "table/to-struct" "table/weak"
    "table/weak-keys" "table/weak-values" "table?" "take" "take-until" "take-while" "thaw" "trace"
    "true?" "truthy?" "tuple" "tuple/brackets" "tuple/setmap" "tuple/slice" "tuple/sourcemap"
    "tuple/type" "tuple?" "type" "unmarshal" "untrace" "update" "update-in" "values" "varglobal"
    "walk" "warn-compile" "xprin" "xprinf" "xprint" "xprintf" "yield" "zero?" "zipcoll"
    ; XXX: obsolete
    "tarray/buffer" "tarray/copy-bytes" "tarray/length" "tarray/new" "tarray/properties"
    "tarray/slice" "tarray/swap-bytes" "thread/close" "thread/current" "thread/exit" "thread/new"
    "thread/receive" "thread/send"))
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
