local git_ref = '576d8097e495b411f31daaee28cb34c1752ac702'
local modrev = '0.0.3'
local specrev = '1'

local repo_url = 'https://github.com/tree-sitter/tree-sitter-java'

rockspec_format = '3.0'
package = 'tree-sitter-java'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for java',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/tree-sitter/tree-sitter-java',
  license = 'UNKNOWN'
}

dependencies = { 'lua >= 5.1' } 

build_dependencies = {
  'luarocks-build-treesitter-parser >= 5.0.0',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-java-' .. '576d8097e495b411f31daaee28cb34c1752ac702',
}

build = {
  type = "treesitter-parser",
  lang = "java",
  parser = true,
  generate = false,
  generate_from_json = false,
  location = nil,
  copy_directories = { "queries" },
  queries = {
    ["folds.scm"] = [==[
[
  (block)
  (class_body)
  (constructor_declaration)
  (argument_list)
  (annotation_argument_list)
  (import_declaration)+
] @fold
]==],
    ["highlights.scm"] = [==[
; CREDITS @maxbrunsfeld (maxbrunsfeld@gmail.com)
; Variables
(identifier) @variable

; Methods
(method_declaration
  name: (identifier) @function.method)

(method_invocation
  name: (identifier) @function.method.call)

(super) @function.builtin

; Parameters
(formal_parameter
  name: (identifier) @variable.parameter)

(catch_formal_parameter
  name: (identifier) @variable.parameter)

(spread_parameter
  (variable_declarator
    name: (identifier) @variable.parameter)) ; int... foo

; Lambda parameter
(inferred_parameters
  (identifier) @variable.parameter) ; (x,y) -> ...

(lambda_expression
  parameters: (identifier) @variable.parameter) ; x -> ...

; Operators
[
  "+"
  ":"
  "++"
  "-"
  "--"
  "&"
  "&&"
  "|"
  "||"
  "!"
  "!="
  "=="
  "*"
  "/"
  "%"
  "<"
  "<="
  ">"
  ">="
  "="
  "-="
  "+="
  "*="
  "/="
  "%="
  "->"
  "^"
  "^="
  "&="
  "|="
  "~"
  ">>"
  ">>>"
  "<<"
  "::"
] @operator

; Types
(interface_declaration
  name: (identifier) @type)

(annotation_type_declaration
  name: (identifier) @type)

(class_declaration
  name: (identifier) @type)

(record_declaration
  name: (identifier) @type)

(enum_declaration
  name: (identifier) @type)

(constructor_declaration
  name: (identifier) @type)

(compact_constructor_declaration
  name: (identifier) @type)

(type_identifier) @type

((type_identifier) @type.builtin
  (#eq? @type.builtin "var"))

((method_invocation
  object: (identifier) @type)
  (#lua-match? @type "^[A-Z]"))

((method_reference
  .
  (identifier) @type)
  (#lua-match? @type "^[A-Z]"))

((field_access
  object: (identifier) @type)
  (#lua-match? @type "^[A-Z]"))

(scoped_identifier
  (identifier) @type
  (#lua-match? @type "^[A-Z]"))

; Fields
(field_declaration
  declarator: (variable_declarator
    name: (identifier) @variable.member))

(field_access
  field: (identifier) @variable.member)

[
  (boolean_type)
  (integral_type)
  (floating_point_type)
  (void_type)
] @type.builtin

; Variables
((identifier) @constant
  (#lua-match? @constant "^[A-Z_][A-Z%d_]+$"))

(this) @variable.builtin

; Annotations
(annotation
  "@" @attribute
  name: (identifier) @attribute)

(marker_annotation
  "@" @attribute
  name: (identifier) @attribute)

; Literals
(string_literal) @string

(escape_sequence) @string.escape

(character_literal) @character

[
  (hex_integer_literal)
  (decimal_integer_literal)
  (octal_integer_literal)
  (binary_integer_literal)
] @number

[
  (decimal_floating_point_literal)
  (hex_floating_point_literal)
] @number.float

[
  (true)
  (false)
] @boolean

(null_literal) @constant.builtin

; Keywords
[
  "assert"
  "default"
  "extends"
  "implements"
  "instanceof"
  "@interface"
  "permits"
  "to"
  "with"
] @keyword

[
  "record"
  "class"
  "enum"
  "interface"
] @keyword.type

(synchronized_statement
  "synchronized" @keyword)

[
  "abstract"
  "final"
  "native"
  "non-sealed"
  "open"
  "private"
  "protected"
  "public"
  "sealed"
  "static"
  "strictfp"
  "transitive"
] @keyword.modifier

(modifiers
  "synchronized" @keyword.modifier)

[
  "transient"
  "volatile"
] @keyword.modifier

[
  "return"
  "yield"
] @keyword.return

"new" @keyword.operator

; Conditionals
[
  "if"
  "else"
  "switch"
  "case"
  "when"
] @keyword.conditional

(ternary_expression
  [
    "?"
    ":"
  ] @keyword.conditional.ternary)

; Loops
[
  "for"
  "while"
  "do"
  "continue"
  "break"
] @keyword.repeat

; Includes
[
  "exports"
  "import"
  "module"
  "opens"
  "package"
  "provides"
  "requires"
  "uses"
] @keyword.import

(import_declaration
  (asterisk
    "*" @character.special))

; Punctuation
[
  ";"
  "."
  "..."
  ","
] @punctuation.delimiter

[
  "{"
  "}"
] @punctuation.bracket

[
  "["
  "]"
] @punctuation.bracket

[
  "("
  ")"
] @punctuation.bracket

(type_arguments
  [
    "<"
    ">"
  ] @punctuation.bracket)

(type_parameters
  [
    "<"
    ">"
  ] @punctuation.bracket)

(string_interpolation
  [
    "\\{"
    "}"
  ] @punctuation.special)

; Exceptions
[
  "throw"
  "throws"
  "finally"
  "try"
  "catch"
] @keyword.exception

; Labels
(labeled_statement
  (identifier) @label)

; Comments
[
  (line_comment)
  (block_comment)
] @comment @spell

((block_comment) @comment.documentation
  (#lua-match? @comment.documentation "^/[*][*][^*].*[*]/$"))

((line_comment) @comment.documentation
  (#lua-match? @comment.documentation "^///[^/]"))

((line_comment) @comment.documentation
  (#lua-match? @comment.documentation "^///$"))
]==],
    ["indents.scm"] = [==[
; format-ignore
[
  ; ... refers to the portion that this indent query will have effects on
  (class_body)                        ; { ... } of `class X`
  (enum_body)                         ; { ... } of `enum X`
  (interface_body)                    ; { ... } of `interface X`
  (constructor_body)                  ; { `modifier` X() {...} } inside `class X`
  (annotation_type_body)              ; { ... } of `@interface X`
  (block)                             ; { ... } that's not mentioned in this scope
  (switch_block)                      ; { ... } in `switch X`
  (array_initializer)                 ; [1, 2]
  (argument_list)                     ; foo(...)
  (formal_parameters)                 ; method foo(...)
  (annotation_argument_list)          ; @Annotation(...)
  (element_value_array_initializer)   ; { a, b } inside @Annotation()
] @indent.begin

(expression_statement
  (method_invocation) @indent.begin)

[
  "("
  ")"
  "{"
  "}"
  "["
  "]"
] @indent.branch

(annotation_argument_list
  ")" @indent.end) ; This should be a special cased as `()` here doesn't have ending `;`

"}" @indent.end

(line_comment) @indent.ignore

[
  (ERROR)
  (block_comment)
] @indent.auto
]==],
    ["injections.scm"] = [==[
([
  (block_comment)
  (line_comment)
] @injection.content
  (#set! injection.language "comment"))

((block_comment) @injection.content
  (#lua-match? @injection.content "/[*][!<*][^a-zA-Z]")
  (#set! injection.language "doxygen"))

((method_invocation
  name: (identifier) @_method
  arguments: (argument_list
    .
    (string_literal
      .
      (_) @injection.content)))
  (#any-of? @_method "format" "printf")
  (#set! injection.language "printf"))

((method_invocation
  object: (string_literal
    (string_fragment) @injection.content)
  name: (identifier) @_method)
  (#eq? @_method "formatted")
  (#set! injection.language "printf"))
]==],
    ["locals.scm"] = [==[
; SCOPES
; declarations
(program) @local.scope

(class_declaration
  body: (_) @local.scope)

(record_declaration
  body: (_) @local.scope)

(enum_declaration
  body: (_) @local.scope)

(lambda_expression) @local.scope

(enhanced_for_statement) @local.scope

; block
(block) @local.scope

; if/else
(if_statement) @local.scope ; if+else

(if_statement
  consequence: (_) @local.scope) ; if body in case there are no braces

(if_statement
  alternative: (_) @local.scope) ; else body in case there are no braces

; try/catch
(try_statement) @local.scope ; covers try+catch, individual try and catch are covered by (block)

(catch_clause) @local.scope ; needed because `Exception` variable

; loops
(for_statement) @local.scope ; whole for_statement because loop iterator variable

(for_statement
  ; "for" body in case there are no braces
  body: (_) @local.scope)

(do_statement
  body: (_) @local.scope)

(while_statement
  body: (_) @local.scope)

; Functions
(constructor_declaration) @local.scope

(method_declaration) @local.scope

; DEFINITIONS
(package_declaration
  (identifier) @local.definition.namespace)

(class_declaration
  name: (identifier) @local.definition.type)

(record_declaration
  name: (identifier) @local.definition.type)

(enum_declaration
  name: (identifier) @local.definition.enum)

(method_declaration
  name: (identifier) @local.definition.method)

(local_variable_declaration
  declarator: (variable_declarator
    name: (identifier) @local.definition.var))

(enhanced_for_statement
  ; for (var item : items) {
  name: (identifier) @local.definition.var)

(formal_parameter
  name: (identifier) @local.definition.parameter)

(catch_formal_parameter
  name: (identifier) @local.definition.parameter)

(inferred_parameters
  (identifier) @local.definition.parameter) ; (x,y) -> ...

(lambda_expression
  parameters: (identifier) @local.definition.parameter) ; x -> ...

((scoped_identifier
  (identifier) @local.definition.import)
  (#has-ancestor? @local.definition.import import_declaration))

(field_declaration
  declarator: (variable_declarator
    name: (identifier) @local.definition.field))

; REFERENCES
(identifier) @local.reference

(type_identifier) @local.reference
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
