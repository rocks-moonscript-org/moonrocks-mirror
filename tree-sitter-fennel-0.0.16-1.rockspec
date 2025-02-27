local git_ref = 'cfbfa478dc2dbef267ee94ae4323d9c886f45e94'
local modrev = '0.0.16'
local specrev = '1'

local repo_url = 'https://github.com/alexmozaidze/tree-sitter-fennel'

rockspec_format = '3.0'
package = 'tree-sitter-fennel'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for fennel',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/alexmozaidze/tree-sitter-fennel',
  license = 'UNKNOWN'
}

dependencies = { 'lua >= 5.1' } 

build_dependencies = {
  'luarocks-build-treesitter-parser >= 5.0.0',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-fennel-' .. 'cfbfa478dc2dbef267ee94ae4323d9c886f45e94',
}

build = {
  type = "treesitter-parser",
  lang = "fennel",
  parser = true,
  generate = false,
  generate_from_json = true,
  location = nil,
  copy_directories = { "queries" },
  queries = {
    ["folds.scm"] = [==[
; compounds
[
  (list)
  (table)
  (sequence)
] @fold

; sub-forms / special compounds
[
  (list_binding)
  (table_binding)
  (sequence_binding)
  (table_metadata)
  (sequence_arguments)
  (let_vars)
  (case_guard_or_special)
  (case_guard)
  (case_catch)
] @fold

; forms
[
  (quote_form)
  (unquote_form)
  (local_form)
  (var_form)
  (set_form)
  (global_form)
  (let_form)
  (fn_form)
  (lambda_form)
  (hashfn_form)
  (each_form)
  (collect_form)
  (icollect_form)
  (accumulate_form)
  (for_form)
  (fcollect_form)
  (faccumulate_form)
  (case_form)
  (match_form)
  (case_try_form)
  (match_try_form)
] @fold

; reader macros
(quote_reader_macro
  expression: (_) @fold)

(quasi_quote_reader_macro
  expression: (_) @fold)
]==],
    ["highlights.scm"] = [==[
; Most primitive nodes
(shebang) @keyword.directive

(comment) @comment @spell

[
  "("
  ")"
  "{"
  "}"
  "["
  "]"
] @punctuation.bracket

[
  (nil)
  (nil_binding)
] @constant.builtin

[
  (boolean)
  (boolean_binding)
] @boolean

[
  (number)
  (number_binding)
] @number

[
  (string)
  (string_binding)
] @string

[
  (symbol)
  (symbol_binding)
] @variable

(symbol_option) @keyword.directive

(escape_sequence) @string.escape

(multi_symbol
  "." @punctuation.delimiter
  member: (symbol_fragment) @variable.member)

(list
  call: (symbol) @function.call)

(list
  call: (multi_symbol
    member: (symbol_fragment) @function.call .))

(multi_symbol_method
  ":" @punctuation.delimiter
  method: (symbol_fragment) @function.method.call)

(quasi_quote_reader_macro
  macro: _ @punctuation.special)

(quote_reader_macro
  macro: _ @punctuation.special)

(unquote_reader_macro
  macro: _ @punctuation.special)

(hashfn_reader_macro
  macro: _ @keyword.function)

(sequence_arguments
  (symbol_binding) @variable.parameter)

(sequence_arguments
  (rest_binding
    rhs: (symbol_binding) @variable.parameter))

(docstring) @string.documentation

(fn_form
  name: [
    (symbol) @function
    (multi_symbol
      member: (symbol_fragment) @function .)
  ])

(lambda_form
  name: [
    (symbol) @function
    (multi_symbol
      member: (symbol_fragment) @function .)
  ])

; NOTE: The macro name is highlighted as @variable because it
; gives a nicer contrast instead of everything being the same
; color. Rust queries use this workaround too for `macro_rules!`.
(macro_form
  name: [
    (symbol) @variable
    (multi_symbol
      member: (symbol_fragment) @variable .)
  ])

((symbol) @variable.parameter
  (#any-of? @variable.parameter "$" "$..."))

((symbol) @variable.parameter
  (#lua-match? @variable.parameter "^%$[1-9]$"))

((symbol) @operator
  (#any-of? @operator
    ; arithmetic
    "+" "-" "*" "/" "//" "%" "^"
    ; comparison
    ">" "<" ">=" "<=" "=" "~="
    ; other
    "#" "." "?." ".."))

((symbol) @keyword.operator
  (#any-of? @keyword.operator
    ; comparison
    "not="
    ; boolean
    "and" "or" "not"
    ; bitwise
    "lshift" "rshift" "band" "bor" "bxor" "bnot"
    ; other
    "length"))

(case_guard
  call: (_) @keyword.conditional)

(case_guard_or_special
  call: (_) @keyword.conditional)

((symbol) @keyword.function
  (#any-of? @keyword.function "fn" "lambda" "λ" "hashfn"))

((symbol) @keyword.repeat
  (#any-of? @keyword.repeat "for" "each" "while"))

((symbol) @keyword.conditional
  (#any-of? @keyword.conditional "if" "when" "match" "case" "match-try" "case-try"))

((symbol) @keyword
  (#any-of? @keyword
    "global" "local" "let" "set" "var" "comment" "do" "doc" "eval-compiler" "lua" "macros" "unquote"
    "quote" "tset" "values" "tail!"))

((symbol) @keyword.import
  (#any-of? @keyword.import "require-macros" "import-macros" "include"))

((symbol) @function.macro
  (#any-of? @function.macro
    "collect" "icollect" "fcollect" "accumulate" "faccumulate" "->" "->>" "-?>" "-?>>" "?." "doto"
    "macro" "macrodebug" "partial" "pick-args" "pick-values" "with-open"))

(case_catch
  call: (symbol) @keyword)

(import_macros_form
  imports: (table_binding
    (table_binding_pair
      value: (symbol_binding) @function.macro)))

; TODO: Highlight builtin methods (`table.unpack`, etc) as @function.builtin
([
  (symbol) @module.builtin
  (multi_symbol
    base: (symbol_fragment) @module.builtin)
]
  (#any-of? @module.builtin
    "vim" "_G" "debug" "io" "jit" "math" "os" "package" "string" "table" "utf8"))

([
  (symbol) @variable.builtin
  (multi_symbol
    .
    (symbol_fragment) @variable.builtin)
]
  (#eq? @variable.builtin "arg"))

((symbol) @variable.builtin
  (#eq? @variable.builtin "..."))

((symbol) @constant.builtin
  (#eq? @constant.builtin "_VERSION"))

((symbol) @function.builtin
  (#any-of? @function.builtin
    "assert" "collectgarbage" "dofile" "error" "getmetatable" "ipairs" "load" "loadfile" "next"
    "pairs" "pcall" "print" "rawequal" "rawget" "rawlen" "rawset" "require" "select" "setmetatable"
    "tonumber" "tostring" "type" "warn" "xpcall" "module" "setfenv" "loadstring" "unpack"))
]==],
    ["injections.scm"] = [==[
((comment_body) @injection.content
  (#set! injection.language "comment"))

(list
  call: (multi_symbol) @_vimcmd_identifier
  (#any-of? @_vimcmd_identifier "vim.cmd" "vim.api.nvim_command" "vim.api.nvim_exec2")
  .
  item: (string
    (string_content) @injection.content
    (#set! injection.language "vim")))

; NOTE: Matches *exactly* `ffi.cdef`
(list
  call: (multi_symbol) @_cdef_identifier
  (#eq? @_cdef_identifier "ffi.cdef")
  .
  item: (string
    (string_content) @injection.content
    (#set! injection.language "c")))

(list
  call: (multi_symbol) @_ts_query_identifier
  (#any-of? @_ts_query_identifier "vim.treesitter.query.set" "vim.treesitter.query.parse")
  .
  item: (_)
  .
  item: (_)
  .
  item: (string
    (string_content) @injection.content
    (#set! injection.language "query")))

(list
  call: (multi_symbol) @_vimcmd_identifier
  (#eq? @_vimcmd_identifier "vim.api.nvim_create_autocmd")
  .
  item: (_)
  .
  item: (table
    (table_pair
      key: (string
        (string_content) @_command
        (#eq? @_command "command"))
      value: (string
        (string_content) @injection.content
        (#set! injection.language "vim")))))

(list
  call: (multi_symbol) @_user_cmd
  (#eq? @_user_cmd "vim.api.nvim_create_user_command")
  .
  item: (_)
  .
  item: (string
    (string_content) @injection.content
    (#set! injection.language "vim")))

(list
  call: (multi_symbol) @_user_cmd
  (#eq? @_user_cmd "vim.api.nvim_buf_create_user_command")
  .
  item: (_)
  .
  item: (_)
  .
  item: (string
    (string_content) @injection.content
    (#set! injection.language "vim")))

(list
  call: (multi_symbol) @_map
  (#any-of? @_map "vim.api.nvim_set_keymap" "vim.keymap.set")
  .
  item: (_)
  .
  item: (_)
  .
  item: (string
    (string_content) @injection.content
    (#set! injection.language "vim")))

(list
  call: (multi_symbol) @_map
  (#eq? @_map "vim.api.nvim_buf_set_keymap")
  .
  item: (_)
  .
  item: (_)
  .
  item: (_)
  .
  item: (string
    (string_content) @injection.content
    (#set! injection.language "vim")))

; highlight string as query if starts with `; query`
(string
  (string_content) @injection.content
  (#lua-match? @injection.content "^%s*;+%s?query")
  (#set! injection.language "query"))

; (string.match "123" "%d+")
(list
  call: (multi_symbol
    member: (symbol_fragment) @_func
    .
    (#any-of? @_func "find" "match" "gmatch" "gsub"))
  .
  item: (_)
  .
  item: (string
    (string_content) @injection.content
    (#set! injection.language "luap")
    (#set! injection.include-children)))

; (my-string:match "%d+")
(list
  call: (multi_symbol_method
    method: (symbol_fragment) @_method
    (#any-of? @_method "find" "match" "gmatch" "gsub"))
  .
  item: (string
    (string_content) @injection.content
    (#set! injection.language "luap")
    (#set! injection.include-children)))

; (string.format "pi = %.2f" 3.14159)
(list
  call: (multi_symbol) @_func
  (#eq? @_func "string.format")
  .
  item: (string
    (string_content) @injection.content
    (#set! injection.language "printf")))
]==],
    ["locals.scm"] = [==[
(program) @local.scope

(symbol) @local.reference

[
  (let_form)
  (fn_form)
  (lambda_form)
  (each_form)
  (for_form)
  (collect_form)
  (icollect_form)
  (accumulate_form)
  (for_form)
  (fcollect_form)
  (faccumulate_form)
  (case_form)
  (match_form)
  (case_try_form)
  (match_try_form)
  (if_form)
] @local.scope

(list
  call: (symbol) @_call
  (#any-of? @_call "while" "when" "do")) @local.scope

(fn_form
  name: [
    (symbol) @local.definition.function
    (multi_symbol
      member: (symbol_fragment) @local.definition.function .)
  ]
  args: (sequence_arguments
    (symbol_binding) @local.definition.parameter)
  (#set! definition.function.scope "parent"))

(lambda_form
  name: [
    (symbol) @local.definition.function
    (multi_symbol
      member: (symbol_fragment) @local.definition.function .)
  ]
  args: (sequence_arguments
    (symbol_binding) @local.definition.parameter)
  (#set! definition.function.scope "parent"))

(macro_form
  name: [
    (symbol) @local.definition.function
    (multi_symbol
      member: (symbol_fragment) @local.definition.function .)
  ]
  args: (sequence_arguments
    (symbol_binding) @local.definition.parameter)
  (#set! definition.function.scope "parent"))
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
