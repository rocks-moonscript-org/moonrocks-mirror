local git_ref = '6238f609bea233040fe927858156dee5515a0745'
local modrev = '0.0.3'
local specrev = '1'

local repo_url = 'https://github.com/tree-sitter-grammars/tree-sitter-cairo'

rockspec_format = '3.0'
package = 'tree-sitter-cairo'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for cairo',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/tree-sitter-grammars/tree-sitter-cairo',
  license = 'UNKNOWN'
}

dependencies = { 'lua >= 5.1' } 

build_dependencies = {
  'luarocks-build-treesitter-parser >= 5.0.0',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-cairo-' .. '6238f609bea233040fe927858156dee5515a0745',
}

build = {
  type = "treesitter-parser",
  lang = "cairo",
  parser = true,
  generate = false,
  generate_from_json = false,
  location = nil,
  copy_directories = { "queries" },
  queries = {
    ["folds.scm"] = [==[
[
  (mod_item)
  (struct_item)
  (trait_item)
  (enum_item)
  (impl_item)
  (type_item)
  (use_declaration)
  (let_declaration)
  (namespace_definition)
  (arguments)
  (implicit_arguments)
  (tuple_type)
  (import_statement)
  (attribute_statement)
  (with_statement)
  (if_statement)
  (function_definition)
  (struct_definition)
  (loop_expression)
  (if_expression)
  (match_expression)
  (call_expression)
  (tuple_expression)
  (attribute_item)
] @fold
]==],
    ["highlights.scm"] = [==[
; Preproc
[
  "%builtins"
  "%lang"
] @keyword.directive

; Includes
(import_statement
  [
    "from"
    "import"
  ] @keyword.import
  module_name: (dotted_name
    (identifier) @module .))

[
  "as"
  "use"
  "mod"
] @keyword.import

; Variables
(identifier) @variable

; Namespaces
(namespace_definition
  (identifier) @module)

(mod_item
  name: (identifier) @module)

(use_list
  (self) @module)

(scoped_use_list
  (self) @module)

(scoped_identifier
  path: (identifier) @module)

(scoped_identifier
  (scoped_identifier
    name: (identifier) @module))

(scoped_type_identifier
  path: (identifier) @module)

((scoped_identifier
  path: (identifier) @type)
  (#lua-match? @type "^[A-Z]"))

((scoped_identifier
  name: (identifier) @type)
  (#lua-match? @type "^[A-Z]"))

((scoped_identifier
  name: (identifier) @constant)
  (#lua-match? @constant "^[A-Z][A-Z%d_]*$"))

((scoped_identifier
  path: (identifier) @type
  name: (identifier) @constant)
  (#lua-match? @type "^[A-Z]")
  (#lua-match? @constant "^[A-Z]"))

((scoped_type_identifier
  path: (identifier) @type
  name: (type_identifier) @constant)
  (#lua-match? @type "^[A-Z]")
  (#lua-match? @constant "^[A-Z]"))

(scoped_use_list
  path: (identifier) @module)

(scoped_use_list
  path: (scoped_identifier
    (identifier) @module))

(use_list
  (scoped_identifier
    (identifier) @module
    .
    (_)))

(use_list
  (identifier) @type
  (#lua-match? @type "^[A-Z]"))

(use_as_clause
  alias: (identifier) @type
  (#lua-match? @type "^[A-Z]"))

; Keywords
[
  ; 0.x
  "using"
  "let"
  "const"
  "local"
  "rel"
  "abs"
  "dw"
  "alloc_locals"
  (inst_ret)
  "with_attr"
  "with"
  "call"
  "nondet"
  ; 1.0
  "impl"
  "implicits"
  "of"
  "ref"
  "mut"
] @keyword

[
  "struct"
  "enum"
  "namespace"
  "type"
  "trait"
] @keyword.type

[
  "func"
  "fn"
  "end"
] @keyword.function

"return" @keyword.return

[
  "cast"
  "new"
  "and"
] @keyword.operator

[
  "tempvar"
  "extern"
] @keyword.modifier

[
  "if"
  "else"
  "match"
] @keyword.conditional

"loop" @keyword.repeat

[
  "assert"
  "static_assert"
  "nopanic"
] @keyword.exception

; Fields
(implicit_arguments
  (typed_identifier
    (identifier) @variable.member))

(member_expression
  "."
  (identifier) @variable.member)

(call_expression
  (assignment_expression
    left: (identifier) @variable.member))

(tuple_expression
  (assignment_expression
    left: (identifier) @variable.member))

(field_identifier) @variable.member

(shorthand_field_initializer
  (identifier) @variable.member)

; Parameters
(arguments
  (typed_identifier
    (identifier) @variable.parameter))

(call_expression
  (tuple_expression
    (assignment_expression
      left: (identifier) @variable.parameter)))

(return_type
  (tuple_type
    (named_type
      .
      (identifier) @variable.parameter)))

(parameter
  (identifier) @variable.parameter)

; Builtins
(builtin_directive
  (identifier) @variable.builtin)

(lang_directive
  (identifier) @variable.builtin)

[
  "ap"
  "fp"
  (self)
] @variable.builtin

; Functions
(function_definition
  "func"
  (identifier) @function)

(function_definition
  "fn"
  (identifier) @function)

(function_signature
  "fn"
  (identifier) @function)

(extern_function_statement
  (identifier) @function)

(call_expression
  function: (identifier) @function.call)

(call_expression
  function: (scoped_identifier
    (identifier) @function.call .))

(call_expression
  function: (field_expression
    field: (field_identifier) @function.call))

"jmp" @function.builtin

; Types
(struct_definition
  .
  (identifier) @type
  (typed_identifier
    (identifier) @variable.member)?)

(named_type
  (identifier) @type .)

[
  (builtin_type)
  (primitive_type)
] @type.builtin

((identifier) @type
  (#lua-match? @type "^[A-Z][a-zA-Z0-9_]*$"))

(type_identifier) @type

; Constants
((identifier) @constant
  (#lua-match? @constant "^[A-Z_][A-Z0-9_]*$"))

(enum_variant
  name: (identifier) @constant)

(call_expression
  function: (scoped_identifier
    "::"
    name: (identifier) @constant)
  (#lua-match? @constant "^[A-Z]"))

((match_arm
  pattern: (match_pattern
    (identifier) @constant))
  (#lua-match? @constant "^[A-Z]"))

((match_arm
  pattern: (match_pattern
    (scoped_identifier
      name: (identifier) @constant)))
  (#lua-match? @constant "^[A-Z]"))

((identifier) @constant.builtin
  (#any-of? @constant.builtin "Some" "None" "Ok" "Err"))

; Constructors
(unary_expression
  "new"
  (call_expression
    .
    (identifier) @constructor))

((call_expression
  .
  (identifier) @constructor)
  (#lua-match? @constructor "^%u"))

; Attributes
(decorator
  "@" @attribute
  (identifier) @attribute)

(attribute_item
  (identifier) @function.macro)

(attribute_item
  (scoped_identifier
    (identifier) @function.macro .))

; Labels
(label
  .
  (identifier) @label)

(inst_jmp_to_label
  "jmp"
  .
  (identifier) @label)

(inst_jnz_to_label
  "jmp"
  .
  (identifier) @label)

; Operators
[
  "+"
  "-"
  "*"
  "/"
  "**"
  "=="
  "!="
  "&"
  "="
  "++"
  "+="
  "@"
  "!"
  "~"
  ".."
  "&&"
  "||"
  "^"
  "<"
  "<="
  ">"
  ">="
  "<<"
  ">>"
  "%"
  "-="
  "*="
  "/="
  "%="
  "&="
  "|="
  "^="
  "<<="
  ">>="
  "?"
] @operator

; Literals
(number) @number

(boolean) @boolean

[
  (string)
  (short_string)
] @string

; Punctuation
(attribute_item
  "#" @punctuation.special)

[
  "."
  ","
  ":"
  ";"
  "->"
  "=>"
  "::"
] @punctuation.delimiter

[
  "{"
  "}"
  "("
  ")"
  "["
  "]"
  "%{"
  "%}"
] @punctuation.bracket

(type_parameters
  [
    "<"
    ">"
  ] @punctuation.bracket)

(type_arguments
  [
    "<"
    ">"
  ] @punctuation.bracket)

; Comment
(comment) @comment @spell
]==],
    ["indents.scm"] = [==[
[
  (mod_item)
  (struct_item)
  (enum_item)
  (impl_item)
  (struct_expression)
  (match_expression)
  (tuple_expression)
  (match_arm)
  (match_block)
  (call_expression)
  (assignment_expression)
  (arguments)
  (block)
  (use_list)
  (field_declaration_list)
  (enum_variant_list)
  (tuple_pattern)
] @indent.begin

(import_statement
  "(") @indent.begin

(block
  "}" @indent.end)

(enum_item
  body: (enum_variant_list
    "}" @indent.end))

(match_expression
  body: (match_block
    "}" @indent.end))

(mod_item
  body: (declaration_list
    "}" @indent.end))

(struct_item
  body: (field_declaration_list
    "}" @indent.end))

(trait_item
  body: (declaration_list
    "}" @indent.end))

[
  ")"
  "]"
  "}"
] @indent.branch

[
  (comment)
  (string)
  (short_string)
] @indent.ignore
]==],
    ["injections.scm"] = [==[
((python_code) @injection.content
  (#set! injection.language "python"))

((comment) @injection.content
  (#set! injection.language "comment"))
]==],
    ["locals.scm"] = [==[
; References
(identifier) @local.reference

((type_identifier) @local.reference
  (#set! reference.kind "type"))

((field_identifier) @local.reference
  (#set! reference.kind "field"))

; Scopes
[
  (program)
  (block)
  (function_definition)
  (loop_expression)
  (if_expression)
  (match_expression)
  (match_arm)
  (struct_item)
  (enum_item)
  (impl_item)
] @local.scope

(use_declaration
  argument: (scoped_identifier
    name: (identifier) @local.definition.import))

(use_as_clause
  alias: (identifier) @local.definition.import)

(use_list
  (identifier) @local.definition.import) ; use std::process::{Child, Command, Stdio};

; Functions
(function_definition
  (identifier) @local.definition.function)

(function_definition
  (identifier) @local.definition.method
  (parameter
    (self)))

; Function with parameters, defines parameters
(parameter
  [
    (identifier)
    (self)
  ] @local.definition.parameter)

; Types
(struct_item
  name: (type_identifier) @local.definition.type)

(constrained_type_parameter
  left: (type_identifier) @local.definition.type) ; the P in  remove_file<P: AsRef<Path>>(path: P)

(enum_item
  name: (type_identifier) @local.definition.type)

; Module
(mod_item
  name: (identifier) @local.definition.namespace)

; Variables
(assignment_expression
  left: (identifier) @local.definition.var)
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
