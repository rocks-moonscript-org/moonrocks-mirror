local git_ref = '302fab443c2237e3b8fb3e991454db0e442af130'
local modrev = '0.0.14'
local specrev = '1'

local repo_url = 'https://github.com/c3lang/tree-sitter-c3'

rockspec_format = '3.0'
package = 'tree-sitter-c3'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for c3',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/c3lang/tree-sitter-c3',
  license = 'UNKNOWN'
}

dependencies = { 'lua >= 5.1' } 

build_dependencies = {
  'luarocks-build-treesitter-parser >= 6.0.2',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
}

build = {
  type = "treesitter-parser",
  lang = "c3",
  parser = true,
  generate = false,
  generate_from_json = false,
  location = nil,
  copy_directories = { "queries" },
  queries = {
    ["folds.scm"] = [==[
[
  ; Top-level declarations
  (bitstruct_declaration)
  (enum_declaration)
  (faultdef_declaration)
  (func_definition)
  (import_declaration)+
  (interface_declaration)
  (macro_declaration)
  (struct_declaration)
  ; Statements
  (asm_block_stmt)
  (case_stmt)
  (defer_stmt)
  (do_stmt)
  (for_stmt)
  (foreach_stmt)
  (if_stmt)
  (switch_stmt)
  (while_stmt)
  (ct_for_stmt)
  (ct_foreach_stmt)
  (ct_switch_stmt)
  (ct_case_stmt)
  (ct_if_stmt)
  (ct_else_stmt)
  ; Comments
  (block_comment)
  (doc_comment)
  ; Initializer list
  (initializer_list)
] @fold

(compound_stmt
  (compound_stmt) @fold)
]==],
    ["highlights.scm"] = [==[
; Punctuation
[
  "("
  ")"
  "["
  "]"
  "{"
  "}"
  "[<"
  ">]"
] @punctuation.bracket

[
  ";"
  ","
  ":"
  "::"
] @punctuation.delimiter

; Constant
(const_ident) @constant

[
  "true"
  "false"
] @boolean

"null" @constant.builtin

; Variable
[
  (ident)
  (ct_ident)
  (hash_ident)
] @variable

; 1) Member
(field_expr
  field: (access_ident
    (ident) @variable.member))

(struct_member_declaration
  (ident) @variable.member)

(struct_member_declaration
  (identifier_list
    (ident) @variable.member))

(bitstruct_member_declaration
  (ident) @variable.member)

(initializer_list
  (initializer_element
    (param_path
      (param_path_element
        (access_ident
          (ident) @variable.member)))))

; 2) Parameter
(param
  name: (_) @variable.parameter)

(trailing_block_param
  (at_ident) @variable.parameter)

(call_arg_list
  (call_arg
    name: (_) @variable.parameter))

(enum_param
  (ident) @variable.parameter)

; Keyword (from `c3c --list-keywords`)
[
  "alias"
  "asm"
  "attrdef"
  "catch"
  "defer"
  "try"
  "var"
] @keyword

[
  "$alignof"
  "$assert"
  "$assignable"
  "$case"
  "$default"
  "$defined"
  "$echo"
  "$else"
  "$embed"
  "$endfor"
  "$endforeach"
  "$endif"
  "$endswitch"
  "$eval"
  "$evaltype"
  "$error"
  "$exec"
  "$extnameof"
  "$feature"
  "$for"
  "$foreach"
  "$if"
  "$include"
  "$is_const"
  "$kindof"
  "$nameof"
  "$offsetof"
  "$qnameof"
  "$sizeof"
  "$stringify"
  "$switch"
  "$typefrom"
  "$typeof"
  "$vacount"
  "$vatype"
  "$vaconst"
  "$vaarg"
  "$vaexpr"
  "$vasplat"
] @keyword.directive

"assert" @keyword.debug

"fn" @keyword.function

"macro" @keyword.function

"return" @keyword.return

[
  "import"
  "module"
] @keyword.import

[
  "bitstruct"
  "enum"
  "faultdef"
  "interface"
  "struct"
  "typedef"
  "union"
] @keyword.type

[
  "case"
  "default"
  "else"
  "if"
  "nextcase"
  "switch"
] @keyword.conditional

[
  "break"
  "continue"
  "do"
  "for"
  "foreach"
  "foreach_r"
  "while"
] @keyword.repeat

[
  "const"
  "extern"
  "inline"
  "static"
  "tlocal"
] @keyword.modifier

; Operator (from `c3c --list-operators`)
[
  "&"
  "!"
  "~"
  "|"
  "^"
  "="
  ">"
  "/"
  "."
  "<"
  "-"
  "%"
  "+"
  "?"
  "*"
  "&&"
  "!!"
  "&="
  "|="
  "^="
  "/="
  ".."
  "?:"
  "=="
  ">="
  "=>"
  "<="
  "-="
  "--"
  "%="
  "*="
  "!="
  "||"
  "+="
  "++"
  "??"
  "<<"
  ">>"
  "..."
  "<<="
  ">>="
  "&&&"
  "+++"
  "|||"
  "???"
  "+++="
] @operator

(range_expr
  ":" @operator)

(foreach_cond
  ":" @operator)

(ct_foreach_cond
  ":" @operator)

(ternary_expr
  [
    "?"
    "???"
    ":"
  ] @keyword.conditional.ternary)

(elvis_orelse_expr
  [
    "?:"
    "??"
  ] @keyword.conditional.ternary)

; Literal
(integer_literal) @number

(real_literal) @number.float

(char_literal) @character

(bytes_literal) @number

; String
(string_literal) @string

(raw_string_literal) @string

; Escape Sequence
(escape_sequence) @string.escape

; Builtin (constants)
(builtin_const) @constant.builtin

; Type Property (from `c3c --list-type-properties`)
(type_access_expr
  (access_ident
    (ident) @variable.builtin
    (#any-of? @variable.builtin
      "alignof" "associated" "elements" "extnameof" "from_ordinal" "get" "inf" "is_eq" "is_ordered"
      "is_substruct" "len" "lookup" "lookup_field" "max" "membersof" "methodsof" "min" "nan" "inner"
      "kindof" "names" "nameof" "params" "paramsof" "parentof" "qnameof" "returns" "sizeof" "set"
      "tagof" "has_tagof" "values" "typeid")))

; Label
[
  (label)
  (label_target)
] @label

; Module
(module_resolution
  (ident) @module)

(module_declaration
  (path_ident
    (ident) @module))

(import_path
  (path_ident
    (ident) @module))

; Attribute
(attribute
  name: (at_ident) @attribute)

(at_type_ident) @attribute

(call_inline_attributes
  (at_ident) @attribute)

(type_suffix
  (at_ident) @attribute)

(asm_block_stmt
  (at_ident) @attribute)

; Type
[
  (type_ident)
  (ct_type_ident)
] @type

(base_type_name) @type.builtin

; Function Definition
(func_header
  name: (_) @function)

(func_header
  method_type: (_)
  name: (_) @function.method)

(macro_header
  name: (_) @function)

(macro_header
  method_type: (_)
  name: (_) @function.method)

; Function Call
(call_expr
  function: (ident_expr
    [
      (ident)
      (at_ident)
    ] @function.call))

(call_expr
  function: (trailing_generic_expr
    argument: (ident_expr
      [
        (ident)
        (at_ident)
      ] @function.call)))

; Method call
(call_expr
  function: (field_expr
    field: (access_ident
      [
        (ident)
        (at_ident)
      ] @function.method.call)))

; Method on type
(call_expr
  function: (type_access_expr
    field: (access_ident
      [
        (ident)
        (at_ident)
      ] @function.method.call)))

; Builtin call
(call_expr
  function: (builtin) @function.builtin)

; Asm
(asm_instr
  [
    (ident)
    "int"
  ] @function.builtin)

(asm_expr
  [
    (ct_ident)
    (ct_const_ident)
  ] @variable.builtin)

; Comment
[
  (line_comment)
  (block_comment)
] @comment @spell

(doc_comment) @comment.documentation

(doc_comment_text) @spell

(doc_comment_contract
  name: (_) @attribute)

(doc_comment_contract
  parameter: [
    (ident)
    (ct_ident)
    (hash_ident)
  ] @variable.parameter
  (#set! priority 110))

(doc_comment_contract
  [
    ":"
    "?"
  ] @comment.documentation
  (#set! priority 110))

(doc_comment_contract
  description: (_) @comment.documentation
  (#set! priority 110))
]==],
    ["indents.scm"] = [==[
[
  (compound_stmt)
  (initializer_list)
  (implies_body)
  (struct_body)
  (bitstruct_body)
  (enum_body)
  (interface_body)
  (switch_body)
  (ct_if_stmt)
  (ct_for_stmt)
  (ct_foreach_stmt)
  (ct_switch_stmt)
] @indent.begin

([
  (case_stmt)
  (default_stmt)
  (ct_case_stmt)
] @indent.begin
  (#set! indent.immediate 1))

(expr_stmt
  ";" @indent.end) @indent.begin

(declaration
  ";" @indent.end) @indent.begin

(const_declaration
  ";" @indent.end) @indent.begin

(return_stmt
  ";" @indent.end) @indent.begin

(faultdef_declaration
  ";" @indent.end) @indent.begin

(macro_func_body
  ";" @indent.end)

[
  ")"
  "}"
  "$endfor"
  "$endforeach"
  "$endswitch"
  "$endif"
] @indent.branch @indent.end

"$else" @indent.branch

([
  (func_param_list)
  (macro_param_list)
  (enum_param_list)
  (attribute_param_list)
  (call_arg_list)
  (paren_cond)
  (for_cond)
  (foreach_cond)
  (paren_expr)
] @indent.align
  (#set! indent.open_delimiter "(")
  (#set! indent.close_delimiter ")"))

[
  (block_comment)
  (doc_comment)
  (raw_string_literal)
  (bytes_literal)
] @indent.auto

(string_literal) @indent.ignore
]==],
    ["injections.scm"] = [==[
([
  (line_comment)
  (block_comment)
] @injection.content
  (#set! injection.language "comment"))
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
