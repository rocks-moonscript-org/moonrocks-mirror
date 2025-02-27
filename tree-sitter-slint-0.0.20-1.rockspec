local git_ref = '34ccfd58d3baee7636f62d9326f32092264e8407'
local modrev = '0.0.20'
local specrev = '1'

local repo_url = 'https://github.com/slint-ui/tree-sitter-slint'

rockspec_format = '3.0'
package = 'tree-sitter-slint'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for slint',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/slint-ui/tree-sitter-slint',
  license = 'UNKNOWN'
}

dependencies = { 'lua >= 5.1' } 

build_dependencies = {
  'luarocks-build-treesitter-parser >= 5.0.0',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-slint-' .. '34ccfd58d3baee7636f62d9326f32092264e8407',
}

build = {
  type = "treesitter-parser",
  lang = "slint",
  parser = true,
  generate = false,
  generate_from_json = false,
  location = nil,
  copy_directories = { "queries" },
  queries = {
    ["folds.scm"] = [==[
[
  (anon_struct_block)
  (block)
  (callback_event)
  (component)
  (enum_block)
  (function_definition)
  (global_definition)
  (imperative_block)
  (struct_block)
] @fold
]==],
    ["highlights.scm"] = [==[
(comment) @comment @spell

; Different types:
(string_value) @string @spell

(escape_sequence) @string.escape

(color_value) @constant

[
  (children_identifier)
  (easing_kind_identifier)
] @constant.builtin

(bool_value) @boolean

[
  (int_value)
  (physical_length_value)
] @number

[
  (angle_value)
  (duration_value)
  (float_value)
  (length_value)
  (percent_value)
  (relative_font_size_value)
] @number.float

(purity) @keyword.modifier

(function_visibility) @keyword.modifier

(property_visibility) @keyword.modifier

(builtin_type_identifier) @type.builtin

(reference_identifier) @variable.builtin

(type
  [
    (type_list)
    (user_type_identifier)
    (anon_struct_block)
  ]) @type

(user_type_identifier) @type

(enum_block
  (user_type_identifier) @constant)

; Functions and callbacks
(argument) @variable.parameter

(function_call
  name: (_) @function.call)

; definitions
(callback
  name: (_) @function)

(callback_alias
  name: (_) @function)

(callback_event
  name: (simple_identifier) @function.call)

(component
  id: (_) @variable)

(enum_definition
  name: (_) @type)

(function_definition
  name: (_) @function)

(struct_definition
  name: (_) @type)

(typed_identifier
  type: (_) @type)

; Operators
(binary_expression
  op: (_) @operator)

(unary_expression
  op: (_) @operator)

[
  (comparison_operator)
  (mult_prec_operator)
  (add_prec_operator)
  (unary_prec_operator)
  (assignment_prec_operator)
] @operator

[
  ":="
  "=>"
  "->"
  "<=>"
] @operator

; Punctuation
[
  ";"
  "."
  ","
  ":"
] @punctuation.delimiter

[
  "("
  ")"
  "["
  "]"
  "{"
  "}"
] @punctuation.bracket

(property
  [
    "<"
    ">"
  ] @punctuation.bracket)

; Properties, Variables and Constants:
(component
  id: (simple_identifier) @constant)

(property
  name: (simple_identifier) @property)

(binding_alias
  name: (simple_identifier) @property)

(binding
  name: (simple_identifier) @property)

(struct_block
  (simple_identifier) @variable.member)

(anon_struct_block
  (simple_identifier) @variable.member)

(property_assignment
  property: (simple_identifier) @property)

(states_definition
  name: (simple_identifier) @variable)

(callback
  name: (simple_identifier) @variable)

(typed_identifier
  name: (_) @variable)

(simple_indexed_identifier
  name: (simple_identifier) @variable
  index_var: (simple_identifier) @variable)

(expression
  (simple_identifier) @variable)

(member_access
  member: (expression
    (simple_identifier) @property))

(states_definition
  name: (simple_identifier) @constant)

; Attributes:
[
  (linear_gradient_identifier)
  (radial_gradient_identifier)
  (radial_gradient_kind)
] @attribute

(image_call
  "@image-url" @attribute)

(tr
  "@tr" @attribute)

; Keywords:
(animate_option_identifier) @keyword

(export) @keyword.import

(if_statement
  "if" @keyword.conditional)

(if_expr
  [
    "if"
    "else"
  ] @keyword.conditional)

(ternary_expression
  [
    "?"
    ":"
  ] @keyword.conditional.ternary)

(animate_statement
  "animate" @keyword)

(callback
  "callback" @keyword)

(component_definition
  [
    "component"
    "inherits"
  ] @keyword)

(enum_definition
  "enum" @keyword.type)

(for_loop
  [
    "for"
    "in"
  ] @keyword.repeat)

(function_definition
  "function" @keyword.function)

(global_definition
  "global" @keyword)

(imperative_block
  "return" @keyword.return)

(import_statement
  [
    "import"
    "from"
  ] @keyword.import)

(import_type
  "as" @keyword.import)

(property
  "property" @keyword)

(states_definition
  [
    "states"
    "when"
  ] @keyword)

(struct_definition
  "struct" @keyword.type)

(transitions_definition
  [
    "transitions"
    "in"
    "out"
  ] @keyword)
]==],
    ["indents.scm"] = [==[
[
  (arguments)
  (block)
  (enum_block)
  (global_block)
  (imperative_block)
  (struct_block)
  (typed_identifier)
] @indent.begin

([
  (block)
  (enum_block)
  (global_block)
  (imperative_block)
  (struct_block)
]
  "}" @indent.end)

([
  (arguments)
  (typed_identifier)
]
  ")" @indent.end)

(string_value) @indent.auto
]==],
    ["injections.scm"] = [==[
((comment) @injection.content
  (#set! injection.language "comment"))
]==],
    ["locals.scm"] = [==[
[
  (anon_struct_block)
  (block)
  (callback_event)
  (component)
  (enum_block)
  (function_definition)
  (global_definition)
  (imperative_block)
  (struct_block)
] @local.scope

(anon_struct_block
  (_) @local.definition.field)

(argument) @local.definition.var

(callback
  name: (_) @local.definition.field)

(component_definition
  name: (_) @local.definition.type)

(enum_definition
  name: (_) @local.definition.type)

(enum_block
  (_) @local.definition.field)

(function_definition
  name: (_) @local.definition.function)

(global_definition
  name: (_) @local.definition.type)

(import_type
  import_name: (_)
  !local_name) @local.definition.import

(import_type
  import_name: (_)
  local_name: (_) @local.definition.import)

(property
  name: (_) @local.definition.field)

(struct_block
  (_) @local.definition.field)

(struct_definition
  name: (_) @local.definition.type)

(typed_identifier
  name: (_) @local.definition.var)

(argument
  (_) @local.reference)

(binary_expression
  left: (_) @local.reference)

(binary_expression
  right: (_) @local.reference)

(callback_event
  name: (_) @local.reference)

(component
  type: (_) @local.reference
  (#set! reference.kind "type"))

(component_definition
  base_type: (_) @local.reference
  (#set! reference.kind "type"))

(function_call
  name: (_) @local.reference)

(index_op
  index: (_) @local.reference)

(index_op
  left: (_) @local.reference)

(member_access
  base: (_) @local.reference)

(member_access
  member: (_) @local.reference)

(parens_op
  left: (_) @local.reference)

(property
  type: (_) @local.reference
  (#set! reference.kind "type"))

(property_assignment
  property: (_) @local.reference
  (#set! reference.kind "field"))

(property_assignment
  value: (_) @local.reference)

(struct_block
  (_) @local.reference
  (#set! reference.kind "type"))

(tr
  percent: (_) @local.reference)

(typed_identifier
  type: (_) @local.reference
  (#set! reference.kind "type"))

(unary_expression
  left: (_) @local.reference)
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
