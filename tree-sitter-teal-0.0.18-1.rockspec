local git_ref = '19b02da829d1721a521bf7b802eb80a50bd53aab'
local modrev = '0.0.18'
local specrev = '1'

local repo_url = 'https://github.com/euclidianAce/tree-sitter-teal'

rockspec_format = '3.0'
package = 'tree-sitter-teal'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for teal',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/euclidianAce/tree-sitter-teal',
  license = 'UNKNOWN'
}

dependencies = { 'lua >= 5.1' } 

build_dependencies = {
  'luarocks-build-treesitter-parser >= 5.0.0',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-teal-' .. '19b02da829d1721a521bf7b802eb80a50bd53aab',
}

build = {
  type = "treesitter-parser",
  lang = "teal",
  parser = true,
  generate = true,
  generate_from_json = false,
  location = nil,
  copy_directories = { "queries" },
  queries = {
    ["folds.scm"] = [==[
[
  (do_statement)
  (numeric_for_statement)
  (generic_for_statement)
  (while_statement)
  (repeat_statement)
  (if_statement)
  (function_statement)
  (record_declaration)
  (enum_declaration)
  (anon_function)
  (table_constructor)
] @fold
]==],
    ["highlights.scm"] = [==[
; Primitives
(boolean) @boolean

(comment) @comment @spell

((comment) @comment.documentation
  (#lua-match? @comment.documentation "^[-][-][-]"))

((comment) @comment.documentation
  (#lua-match? @comment.documentation "^[-][-](%s?)@"))

(shebang_comment) @keyword.directive

(identifier) @variable

((identifier) @variable.builtin
  (#eq? @variable.builtin "self"))

(nil) @constant.builtin

(number) @number

(string) @string

(table_constructor
  [
    "{"
    "}"
  ] @constructor)

(varargs
  "..." @constant.builtin)

[
  ","
  "."
  ":"
  ";"
] @punctuation.delimiter

(escape_sequence) @string.escape

(format_specifier) @string.escape

; Basic statements/Keywords
[
  "if"
  "then"
  "elseif"
  "else"
] @keyword.conditional

[
  "for"
  "while"
  "repeat"
  "until"
] @keyword.repeat

"return" @keyword.return

[
  "in"
  "local"
  (break)
  (goto)
  "do"
  "end"
] @keyword

(label) @label

; Global isn't a real keyword, but it gets special treatment in these places
(var_declaration
  "global" @keyword)

(type_declaration
  "global" @keyword)

(function_statement
  "global" @keyword)

(record_declaration
  "global" @keyword)

(enum_declaration
  "global" @keyword)

; Ops
(bin_op
  (op) @operator)

(unary_op
  (op) @operator)

[
  "="
  "as"
] @operator

; Functions
(function_statement
  "function" @keyword.function
  .
  name: (_) @function)

(anon_function
  "function" @keyword.function)

(function_body
  "end" @keyword.function)

(arg
  name: (identifier) @variable.parameter)

(function_signature
  (arguments
    .
    (arg
      name: (identifier) @variable.builtin))
  (#eq? @variable.builtin "self"))

(typeargs
  "<" @punctuation.bracket
  .
  (_) @variable.parameter
  .
  (","
    .
    (_) @variable.parameter)*
  .
  ">" @punctuation.bracket)

(function_call
  (identifier) @function
  .
  (arguments))

(function_call
  (index
    (_)
    key: (identifier) @function)
  .
  (arguments))

(function_call
  (method_index
    (_)
    key: (identifier) @function)
  .
  (arguments))

; Types
(record_declaration
  .
  "record" @keyword.type
  name: (identifier) @type)

(anon_record
  .
  "record" @keyword.type)

(record_body
  (record_declaration
    .
    "record" @keyword.type
    .
    name: (identifier) @type))

(record_body
  (enum_declaration
    .
    "enum" @keyword.type
    .
    name: (identifier) @type))

(record_body
  (typedef
    .
    "type" @keyword
    .
    name: (identifier) @type
    .
    "="))

(record_body
  (metamethod
    "metamethod" @keyword))

(record_body
  (userdata) @keyword)

(enum_declaration
  "enum" @keyword.type
  name: (identifier) @type)

(type_declaration
  "type" @keyword)

(type_declaration
  (identifier) @type)

(simple_type
  name: (identifier) @type)

(type_index
  (identifier) @type)

(type_union
  "|" @operator)

(function_type
  "function" @type)

; The rest of it
(var_declaration
  declarators: (var_declarators
    (var
      name: (identifier) @variable)))

(var_declaration
  declarators: (var_declarators
    (var
      "<" @punctuation.bracket
      .
      attribute: (attribute) @attribute
      .
      ">" @punctuation.bracket)))

[
  "("
  ")"
  "["
  "]"
  "{"
  "}"
] @punctuation.bracket
]==],
    ["indents.scm"] = [==[
[
  (record_declaration)
  (anon_function)
  (function_body)
  (table_constructor)
  (if_statement)
  (return_statement)
  (while_statement)
] @indent.begin

[
  "{"
  "}"
  "("
  ")"
  "end"
  "then"
] @indent.branch
]==],
    ["injections.scm"] = [==[
((function_call
  (index
    (identifier) @_cdef_identifier)
  (arguments
    (string) @injection.content))
  (#eq? @_cdef_identifier "cdef")
  (#lua-match? @injection.content "^[\"']")
  (#offset! @injection.content 0 1 0 -1)
  (#set! injection.language "c"))

((function_call
  (index
    (identifier) @_cdef_identifier)
  (arguments
    (string) @injection.content))
  (#eq? @_cdef_identifier "cdef")
  (#lua-match? @injection.content "^%[%[")
  (#offset! @injection.content 0 2 0 -2)
  (#set! injection.language "c"))

; string.format('...')
((function_call
  (index
    (identifier) @_base
    key: (identifier) @_entry)
  (arguments
    .
    (string) @injection.content))
  (#eq? @_base "string")
  (#eq? @_entry "format")
  (#set! injection.language "printf"))

; ('...'):format()
((function_call
  (method_index
    (parenthesized_expression
      (string) @printf)
    key: (identifier) @_func))
  (#eq? @_func "format")
  (#set! injection.language "printf"))

((comment) @injection.content
  (#set! injection.language "comment"))
]==],
    ["locals.scm"] = [==[
(var_declaration
  declarators: (var_declarators
    (var
      (identifier)) @local.definition.var))

(var_assignment
  variables: (assignment_variables
    (var
      (identifier) @local.definition.var) @local.definition.associated))

(arg
  name: (identifier) @local.definition.parameter)

(anon_function) @local.scope

(function_statement
  (function_name) @local.definition.function) @local.scope

(program) @local.scope

(if_statement) @local.scope

(generic_for_statement
  (for_body) @local.scope)

(numeric_for_statement
  (for_body) @local.scope)

(repeat_statement) @local.scope

(while_statement
  (while_body) @local.scope)

(do_statement) @local.scope

(identifier) @local.reference
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
