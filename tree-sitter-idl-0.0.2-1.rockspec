local git_ref = '92bb2f3bb0514d56be61f2131e950da1c913c7f2'
local modrev = '0.0.2'
local specrev = '1'

local repo_url = 'https://github.com/cathaysia/tree-sitter-idl'

rockspec_format = '3.0'
package = 'tree-sitter-idl'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for idl',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/cathaysia/tree-sitter-idl',
  license = 'UNKNOWN'
}

build_dependencies = {
  'luarocks-build-treesitter-parser >= 4.0.0',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-idl-' .. '92bb2f3bb0514d56be61f2131e950da1c913c7f2',
}

build = {
  type = "treesitter-parser",
  lang = "idl",
  parser = true,
  generate = false,
  generate_from_json = false,
  location = nil,
  copy_directories = { "queries" },
  queries = {
    ["highlights.scm"] = [==[
; https://neovim.io/doc/user/treesitter.html#treesitter-highlight-groups
(comment) @comment @spell

[
  "enum"
  "struct"
  "union"
  "bitmask"
  "bitset"
  "@annotation"
  "exception"
  "typedef"
  "home"
  "typeid"
  "typeprefix"
  (interface_kind)
  (value_kind)
  "component"
  "porttype"
  "connector"
  "eventtype"
  "valuetype"
] @keyword.type

(import_dcl
  "import" @keyword.directive)

[
  "module"
  "attribute"
  "factory"
  "manages"
] @keyword

[
  "const"
  "readonly"
  "abstract"
  "custom"
  "supports"
  "provides"
  "uses"
  "port"
  "mirrorport"
  "emits"
  "publishes"
  "consumes"
  "primarykey"
  "finder"
] @keyword.modifier

[
  "SEQUENTIAL"
  "HASH"
  "FINAL"
  "APPENDABLE"
  "MUTABLE"
  "c"
  "c++"
  "java"
  "idl"
  "*"
  "BEGIN_FILE"
  "BEFORE_DECLARATION"
  "BEGIN_DECLARATION"
  "END_DECLARATION"
  "AFTER_DECLARATION"
  "END_FILE"
  "CORBA"
  "DDS"
] @constant

[
  "switch"
  "case"
  "default"
] @keyword.conditional

[
  "void"
  (signed_short_int)
  (signed_long_int)
  (signed_longlong_int)
  (unsigned_tiny_int)
  (boolean_type)
  (fixed_pt_const_type)
  (octet_type)
  (signed_tiny_int)
  (unsigned_short_int)
  (unsigned_long_int)
  (unsigned_longlong_int)
  (floating_pt_type)
  (char_type)
  (string_type)
  (any_type)
  (fixed_pt_type)
  (sequence_type)
  (map_type)
  (object_type)
  (value_base_type)
] @type.builtin

(escape_sequence) @string.escape

(scoped_name) @type

(boolean_literal) @boolean

(integer_literal) @number

[
  (floating_pt_literal)
  (fixed_pt_literal)
] @number.float

(char_literal) @character

(string_literal) @string

[
  "("
  ")"
  "["
  "]"
  "<"
  ">"
  "{"
  "}"
] @punctuation.bracket

[
  "-"
  "*"
  "+"
  "="
  "<<"
  ">>"
  "%"
  "~"
  "|"
  "^"
  "&"
] @operator

[
  "::"
  ";"
  ":"
  ","
] @punctuation.delimiter

(readonly_attr_declarator
  (simple_declarator) @variable.member)

(attr_declarator
  (simple_declarator) @variable.member)

(annotation_appl
  "@" @attribute)

(annotation_appl_custom_body
  (scoped_name) @attribute)

(annotation_appl_builtin_body
  (_
    [
      "id"
      "autoid"
      "optional"
      "position"
      "value"
      "extensibility"
      "final"
      "appendable"
      "mutable"
      "key"
      "must_understand"
      "default_literal"
      "default"
      "range"
      "min"
      "max"
      "unit"
      "bit_bound"
      "external"
      "nested"
      "verbatim"
      "service"
      "oneway"
      "ami"
    ] @attribute.builtin))

(min_expr
  "min" @attribute.builtin)

(max_expr
  "max" @attribute.builtin)

(op_dcl
  (identifier) @function.method)

(type_declarator
  (simple_type_spec) @type)

(type_declarator
  (any_declarators) @variable.member)

(param_dcl
  (simple_declarator) @variable.parameter)

(raises_expr
  "raises" @keyword.exception
  (scoped_name
    (identifier) @type))

(param_dcl
  (param_attribute) @keyword.modifier)

(preproc_call
  directive: (preproc_directive) @keyword.directive
  argument: (_) @constant)

(module_dcl
  (identifier) @module)

(struct_def
  (identifier) @type
  parent: (scoped_name)? @type)

(enum_dcl
  (enumerator
    (identifier) @constant))

(annotation_dcl
  (identifier) @type)

(struct_forward_dcl
  (identifier) @type)

(bitmask_dcl
  (identifier) @type)

(bitset_dcl
  (identifier) @type
  (scoped_name)* @type)

(enum_dcl
  (identifier) @type)

(union_forward_dcl
  (identifier) @type)

(interface_forward_dcl
  (identifier) @type)

(interface_header
  (identifier) @type)

(interface_inheritance_spec
  (interface_name) @type)

(union_def
  (identifier) @type
  (switch_type_spec) @type)

(except_dcl
  (identifier) @type)

(annotation_member_type) @type

(bitfield
  (bitfield_spec
    "bitfield" @keyword.modifier
    (positive_int_const) @number
    (destination_type)? @type)
  (identifier)* @variable.member)

(bit_value) @constant

(annotation_member
  (annotation_member_type) @type
  (simple_declarator) @property)

(const_dcl
  (const_type) @type
  (identifier) @constant)

(case_label
  (const_expr) @constant)

(simple_type_spec
  (scoped_name
    (identifier) @type))

(annotation_appl_param
  (identifier) @attribute)

(home_header
  (identifier) @type)

(factory_dcl
  (identifier) @type)

(factory_param_dcl
  "in" @keyword.modifier)

(op_oneway_dcl
  "oneway" @keyword.modifier
  (identifier) @function.method)

(in_param_dcl
  "in" @keyword.modifier)

(context_expr
  "context" @keyword.modifier)

(get_excep_expr
  "getraises" @keyword.exception)

(set_excep_expr
  "setraises" @keyword.exception)

(value_header
  (identifier) @type)

(value_abs_def
  (identifier) @type)

(value_forward_dcl
  (identifier) @type)

(value_box_def
  (identifier) @type)

(provides_dcl
  (interface_type) @type
  (identifier) @variable.member)

(uses_dcl
  (identifier) @variable.member)

(component_forward_dcl
  (identifier) @type)

(component_header
  (identifier) @type)

(porttype_forward_dcl
  (identifier) @type)

(porttype_def
  (identifier) @type)

(port_dcl
  (identifier) @variable.member)

(connector_header
  (identifier) @type)

(emits_dcl
  (identifier) @variable.member)

(publishes_dcl
  (identifier) @variable.member)

(consumes_dcl
  (identifier) @variable.member)

(event_forward_dcl
  (identifier) @type)

(event_header
  (identifier) @type)

(event_abs_def
  (identifier) @type)

(template_module_dcl
  (identifier) @type)

(formal_parameter
  (formal_parameter_type) @type
  (identifier) @variable.member)

(init_param_dcl
  "in" @keyword.modifier
  (simple_declarator) @variable.parameter)

(finder_dcl
  (identifier) @function.method)

(member
  identifier: (declarators) @variable.member)

(factory_param_dcl
  (simple_declarator) @variable.parameter)

(element_spec
  (declarator) @variable.member)

(preproc_include
  (keyword_include) @type
  path: (_) @string)

(system_lib_string
  "<" @string
  ">" @string)

(extend_annotation_appl
  "//@" @attribute
  (annotation_appl_custom_body))

(extend_annotation_appl
  "//@" @attribute.builtin
  (annotation_appl_builtin_body))
]==],
    ["indents.scm"] = [==[
";" @indent.end

"}" @indent.branch

(definition) @indent.begin

[
  (preproc_define)
  (preproc_include)
] @indent.ignore
]==],
    ["injections.scm"] = [==[
((comment) @injection.content
  (#lua-match? @injection.content "/[*\/][!*\/]<?[^a-zA-Z]")
  (#set! injection.language "doxygen"))

((comment) @injection.content
  (#not-lua-match? @injection.content "/[*\/][!*\/]<?[^a-zA-Z]")
  (#not-lua-match? @injection.content "//@[a-zA-Z]")
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
