local git_ref = '4f93826aeb31066eb241f4ccbca61f052239803f'
local modrev = '0.0.26'
local specrev = '1'

local repo_url = 'https://github.com/vlang/v-analyzer'

rockspec_format = '3.0'
package = 'tree-sitter-v'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for v',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/vlang/v-analyzer',
  license = 'UNKNOWN'
}

dependencies = { 'lua >= 5.1' } 

build_dependencies = {
  'luarocks-build-treesitter-parser >= 5.0.0',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'v-analyzer-' .. '4f93826aeb31066eb241f4ccbca61f052239803f',
}

build = {
  type = "treesitter-parser",
  lang = "v",
  parser = true,
  generate = false,
  generate_from_json = false,
  location = "tree_sitter_v",
  copy_directories = { "queries" },
  queries = {
    ["folds.scm"] = [==[
[
  (function_declaration)
  (const_declaration)
  (type_declaration)
  (import_declaration)
  (if_expression)
  (struct_declaration)
] @fold
]==],
    ["highlights.scm"] = [==[
(shebang) @keyword.directive

; Includes
[
  "import"
  "module"
] @keyword.import

; Keywords
[
  "asm"
  "assert"
  "const"
  "defer"
  "goto"
  "sql"
  "unsafe"
] @keyword

[
  "enum"
  "union"
  "struct"
  "interface"
  "type"
] @keyword.type

[
  "as"
  "in"
  "!in"
  "or"
  "is"
  "!is"
] @keyword.operator

[
  "match"
  "if"
  "$if"
  "else"
  "$else"
  "select"
] @keyword.conditional

[
  "for"
  "$for"
  "continue"
  "break"
] @keyword.repeat

"fn" @keyword.function

"return" @keyword.return

[
  "__global"
  "shared"
  "static"
  "const"
] @keyword.modifier

[
  "pub"
  "mut"
] @keyword.modifier

[
  "go"
  "spawn"
  "lock"
  "rlock"
] @keyword.coroutine

; Variables
(identifier) @variable

; Namespace
(module_clause
  (identifier) @module)

(import_path
  (import_name) @module)

(import_alias
  (import_name) @module)

; Literals
[
  (true)
  (false)
] @boolean

(interpreted_string_literal) @string

(string_interpolation) @none

; Types
(struct_declaration
  name: (identifier) @type)

(enum_declaration
  name: (identifier) @type)

(interface_declaration
  name: (identifier) @type)

(type_declaration
  name: (identifier) @type)

(type_reference_expression
  (identifier) @type)

; Labels
(label_reference) @label

; Fields
(selector_expression
  field: (reference_expression
    (identifier) @variable.member))

(field_name) @variable.member

(struct_field_declaration
  name: (identifier) @variable.member)

; Parameters
(parameter_declaration
  name: (identifier) @variable.parameter)

(receiver
  name: (identifier) @variable.parameter)

; Constants
((identifier) @constant
  (#has-ancestor? @constant compile_time_if_expression))

(enum_fetch
  (reference_expression) @constant)

(enum_field_definition
  (identifier) @constant)

(const_definition
  name: (identifier) @constant)

((identifier) @variable.builtin
  (#any-of? @variable.builtin "err" "macos" "linux" "windows"))

; Attributes
(attribute) @attribute

; Functions
(function_declaration
  name: (identifier) @function)

(function_declaration
  receiver: (receiver)
  name: (identifier) @function.method)

(call_expression
  name: (selector_expression
    field: (reference_expression) @function.method.call))

(call_expression
  name: (reference_expression) @function.call)

((identifier) @function.builtin
  (#any-of? @function.builtin
    "eprint" "eprintln" "error" "exit" "panic" "print" "println" "after" "after_char" "all"
    "all_after" "all_after_last" "all_before" "all_before_last" "any" "ascii_str" "before" "bool"
    "byte" "byterune" "bytes" "bytestr" "c_error_number_str" "capitalize" "clear" "clone"
    "clone_to_depth" "close" "code" "compare" "compare_strings" "contains" "contains_any"
    "contains_any_substr" "copy" "count" "cstring_to_vstring" "delete" "delete_last" "delete_many"
    "ends_with" "eprint" "eprintln" "eq_epsilon" "error" "error_with_code" "exit" "f32" "f32_abs"
    "f32_max" "f32_min" "f64" "f64_max" "fields" "filter" "find_between" "first" "flush_stderr"
    "flush_stdout" "free" "gc_check_leaks" "get_str_intp_u32_format" "get_str_intp_u64_format"
    "grow_cap" "grow_len" "hash" "hex" "hex2" "hex_full" "i16" "i64" "i8" "index" "index_after"
    "index_any" "index_byte" "insert" "int" "is_alnum" "is_bin_digit" "is_capital" "is_digit"
    "is_hex_digit" "is_letter" "is_lower" "is_oct_digit" "is_space" "is_title" "is_upper" "isnil"
    "join" "join_lines" "keys" "last" "last_index" "last_index_byte" "length_in_bytes" "limit"
    "malloc" "malloc_noscan" "map" "match_glob" "memdup" "memdup_noscan" "move" "msg" "panic"
    "panic_error_number" "panic_lasterr" "panic_optional_not_set" "parse_int" "parse_uint"
    "pointers" "pop" "prepend" "print" "print_backtrace" "println" "proc_pidpath" "ptr_str"
    "push_many" "realloc_data" "reduce" "repeat" "repeat_to_depth" "replace" "replace_each"
    "replace_once" "reverse" "reverse_in_place" "runes" "sort" "sort_by_len" "sort_ignore_case"
    "sort_with_compare" "split" "split_any" "split_into_lines" "split_nth" "starts_with"
    "starts_with_capital" "str" "str_escaped" "str_intp" "str_intp_g32" "str_intp_g64"
    "str_intp_rune" "str_intp_sq" "str_intp_sub" "strg" "string_from_wide" "string_from_wide2"
    "strip_margin" "strip_margin_custom" "strlong" "strsci" "substr" "substr_ni" "substr_with_check"
    "title" "to_lower" "to_upper" "to_wide" "tos" "tos2" "tos3" "tos4" "tos5" "tos_clone" "trim"
    "trim_left" "trim_pr" "try_pop" "try_push" "utf32_decode_to_buffer" "utf32_to_str"
    "utf32_to_str_no_malloc" "utf8_char_len" "utf8_getchar" "utf8_str_len" "utf8_str_visible_length"
    "utf8_to_utf32" "v_realloc" "vbytes" "vcalloc" "vcalloc_noscan" "vmemcmp" "vmemcpy" "vmemmove"
    "vmemset" "vstring" "vstring_literal" "vstring_literal_with_len" "vstring_with_len" "vstrlen"
    "vstrlen_char" "winapi_lasterr_str"))

; Operators
[
  "++"
  "--"
  "+"
  "-"
  "*"
  "/"
  "%"
  "~"
  "&"
  "|"
  "^"
  "!"
  "&&"
  "||"
  "!="
  "<<"
  ">>"
  "<"
  ">"
  "<="
  ">="
  "+="
  "-="
  "*="
  "/="
  "&="
  "|="
  "^="
  "<<="
  ">>="
  "="
  ":="
  "=="
  "?"
  "<-"
  "$"
  ".."
  "..."
] @operator

; Punctuation
[
  "."
  ","
  ":"
  ";"
] @punctuation.delimiter

[
  "("
  ")"
  "{"
  "}"
  "["
  "]"
] @punctuation.bracket

; Literals
(int_literal) @number

(float_literal) @number.float

[
  (c_string_literal)
  (raw_string_literal)
  (interpreted_string_literal)
  (string_interpolation)
  (rune_literal)
] @string

(string_interpolation
  (interpolation_opening) @punctuation.bracket
  (interpolation_expression) @none
  (interpolation_closing) @punctuation.bracket)

(escape_sequence) @string.escape

[
  (true)
  (false)
] @boolean

(nil) @constant.builtin

(none) @variable.builtin

; Comments
[
  (line_comment)
  (block_comment)
] @comment @spell

(_
  (line_comment)+ @comment.documentation
  .
  [
    (function_declaration)
    (type_declaration)
    (enum_declaration)
  ])
]==],
    ["indents.scm"] = [==[
[
  (import_declaration)
  (const_declaration)
  (type_declaration)
  (type_initializer)
  (block)
  (map_init_expression)
  (call_expression)
  (parameter_list)
] @indent.begin

"}" @indent.branch

(parameter_list
  ")" @indent.branch)

[
  (line_comment)
  (block_comment)
] @indent.ignore
]==],
    ["injections.scm"] = [==[
([
  (line_comment)
  (block_comment)
] @injection.content
  (#set! injection.language "comment"))

; asm_statement if asm ever highlighted :)
; #include <...>
((hash_statement) @injection.content
  (#set! injection.language "c"))

; regex for the methods defined in `re` module
((call_expression
  name: (selector_expression
    field: (reference_expression
      (identifier) @_re))
  arguments: (argument_list
    (argument
      (literal
        (raw_string_literal) @injection.content
        (#offset! @injection.content 0 2 0 -1)))))
  (#any-of? @_re "regex_base" "regex_opt" "compile_opt")
  (#set! injection.language "regex"))
]==],
    ["locals.scm"] = [==[
(function_declaration
  name: (identifier) @local.definition.function) ;@function

(var_declaration
  var_list: (expression_list
    (reference_expression
      (identifier) @local.definition.var)))

(function_declaration
  name: (identifier) @local.definition.function)

(const_declaration
  (const_definition
    name: (identifier) @local.definition.var))

(identifier) @local.reference

((call_expression
  name: (reference_expression
    (identifier)) @local.reference)
  (#set! reference.kind "call"))

((call_expression
  name: (selector_expression
    field: (reference_expression
      (identifier) @local.definition.function)))
  (#set! reference.kind "call"))

(source_file) @local.scope

(function_declaration) @local.scope

(if_expression) @local.scope

(block) @local.scope

(for_statement) @local.scope
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
