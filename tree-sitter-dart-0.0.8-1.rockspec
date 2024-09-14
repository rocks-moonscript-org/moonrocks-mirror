local git_ref = '9ac03bb2154316624fb4c41fe0f372a5f1597b43'
local modrev = '0.0.8'
local specrev = '1'

local repo_url = 'https://github.com/UserNobody14/tree-sitter-dart'

rockspec_format = '3.0'
package = 'tree-sitter-dart'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for dart',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/UserNobody14/tree-sitter-dart',
  license = 'UNKNOWN'
}

dependencies = { 'lua >= 5.1' } 

build_dependencies = {
  'luarocks-build-treesitter-parser >= 5.0.0',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-dart-' .. '9ac03bb2154316624fb4c41fe0f372a5f1597b43',
}

build = {
  type = "treesitter-parser",
  lang = "dart",
  parser = true,
  generate = false,
  generate_from_json = false,
  location = nil,
  copy_directories = { "queries" },
  queries = {
    ["folds.scm"] = [==[
[
  (class_definition)
  (enum_declaration)
  (extension_declaration)
  (arguments)
  (function_body)
  (block)
  (switch_block)
  (list_literal)
  (set_or_map_literal)
  (string_literal)
] @fold
]==],
    ["highlights.scm"] = [==[
(dotted_identifier_list) @string

; Methods
; --------------------
(super) @function

; TODO: add method/call_expression to grammar and
; distinguish method call from variable access
(function_expression_body
  (identifier) @function)

; ((identifier)(selector (argument_part)) @function)
; NOTE: This query is a bit of a work around for the fact that the dart grammar doesn't
; specifically identify a node as a function call
(((identifier) @function
  (#lua-match? @function "^_?[%l]"))
  .
  (selector
    .
    (argument_part))) @function

; Annotations
; --------------------
(annotation
  name: (identifier) @attribute)

; Operators and Tokens
; --------------------
(template_substitution
  "$" @punctuation.special
  "{" @punctuation.special
  "}" @punctuation.special) @none

(template_substitution
  "$" @punctuation.special
  (identifier_dollar_escaped) @variable) @none

(escape_sequence) @string.escape

[
  "@"
  "=>"
  ".."
  "??"
  "=="
  "?"
  ":"
  "&&"
  "%"
  "<"
  ">"
  "="
  ">="
  "<="
  "||"
  (multiplicative_operator)
  (increment_operator)
  (is_operator)
  (prefix_operator)
  (equality_operator)
  (additive_operator)
] @operator

[
  "("
  ")"
  "["
  "]"
  "{"
  "}"
] @punctuation.bracket

; Delimiters
; --------------------
[
  ";"
  "."
  ","
] @punctuation.delimiter

; Types
; --------------------
(class_definition
  name: (identifier) @type)

(constructor_signature
  name: (identifier) @type)

(scoped_identifier
  scope: (identifier) @type)

(function_signature
  name: (identifier) @function.method)

(getter_signature
  (identifier) @function.method)

(setter_signature
  name: (identifier) @function.method)

(enum_declaration
  name: (identifier) @type)

(enum_constant
  name: (identifier) @type)

(void_type) @type

((scoped_identifier
  scope: (identifier) @type
  name: (identifier) @type)
  (#lua-match? @type "^[%u%l]"))

(type_identifier) @type

(type_alias
  (type_identifier) @type.definition)

; Variables
; --------------------
; var keyword
(inferred_type) @keyword

((identifier) @type
  (#lua-match? @type "^_?[%u].*[%l]")) ; catch Classes or IClasses not CLASSES

"Function" @type

; properties
(unconditional_assignable_selector
  (identifier) @property)

(conditional_assignable_selector
  (identifier) @property)

; assignments
(assignment_expression
  left: (assignable_expression) @variable)

(this) @variable.builtin

; Parameters
; --------------------
(formal_parameter
  name: (identifier) @variable.parameter)

(named_argument
  (label
    (identifier) @variable.parameter))

; Literals
; --------------------
[
  (hex_integer_literal)
  (decimal_integer_literal)
  (decimal_floating_point_literal)
  ; TODO: inaccessible nodes
  ; (octal_integer_literal)
  ; (hex_floating_point_literal)
] @number

(symbol_literal) @string.special.symbol

(string_literal) @string

(true) @boolean

(false) @boolean

(null_literal) @constant.builtin

(comment) @comment @spell

(documentation_comment) @comment.documentation @spell

; Keywords
; --------------------
[
  "import"
  "library"
  "export"
  "as"
  "show"
  "hide"
] @keyword.import

; Reserved words (cannot be used as identifiers)
[
  ; TODO:
  ; "rethrow" cannot be targeted at all and seems to be an invisible node
  ; TODO:
  ; the assert keyword cannot be specifically targeted
  ; because the grammar selects the whole node or the content
  ; of the assertion not just the keyword
  ; assert
  (case_builtin)
  "late"
  "required"
  "on"
  "extends"
  "in"
  "is"
  "new"
  "super"
  "with"
] @keyword

[
  "class"
  "enum"
  "extension"
] @keyword.type

"return" @keyword.return

; Built in identifiers:
; alone these are marked as keywords
[
  "deferred"
  "factory"
  "get"
  "implements"
  "interface"
  "library"
  "operator"
  "mixin"
  "part"
  "set"
  "typedef"
] @keyword

[
  "async"
  "async*"
  "sync*"
  "await"
  "yield"
] @keyword.coroutine

[
  (const_builtin)
  (final_builtin)
  "abstract"
  "covariant"
  "dynamic"
  "external"
  "static"
  "final"
  "base"
  "sealed"
] @keyword.modifier

; when used as an identifier:
((identifier) @variable.builtin
  (#any-of? @variable.builtin
    "abstract" "as" "covariant" "deferred" "dynamic" "export" "external" "factory" "Function" "get"
    "implements" "import" "interface" "library" "operator" "mixin" "part" "set" "static" "typedef"))

[
  "if"
  "else"
  "switch"
  "default"
] @keyword.conditional

[
  "try"
  "throw"
  "catch"
  "finally"
  (break_statement)
] @keyword.exception

[
  "do"
  "while"
  "continue"
  "for"
] @keyword.repeat
]==],
    ["indents.scm"] = [==[
[
  (class_body)
  (function_body)
  (function_expression_body)
  (declaration
    (initializers))
  (switch_block)
  (formal_parameter_list)
  (formal_parameter)
  (list_literal)
  (return_statement)
  (arguments)
  (try_statement)
] @indent.begin

(switch_block
  (_) @indent.begin
  (#set! indent.immediate 1)
  (#set! indent.start_at_same_line 1))

[
  (switch_statement_case)
  (switch_statement_default)
] @indent.branch

[
  "("
  ")"
  "{"
  "}"
  "["
  "]"
] @indent.branch

"}" @indent.end

(return_statement
  ";" @indent.end)

(break_statement
  ";" @indent.end)

(comment) @indent.ignore

; dedenting the else block is painfully slow; replace with simpler strategy
; (if_statement) @indent.begin
; (if_statement
;   (block) @indent.branch)
(if_statement) @indent.auto
]==],
    ["injections.scm"] = [==[
((comment) @injection.content
  (#set! injection.language "comment"))
]==],
    ["locals.scm"] = [==[
; Definitions
(function_signature
  name: (identifier) @local.definition.function)

(formal_parameter
  name: (identifier) @local.definition.parameter)

(initialized_variable_definition
  name: (identifier) @local.definition.var)

(initialized_identifier
  (identifier) @local.definition.var)

(static_final_declaration
  (identifier) @local.definition.var)

; References
(identifier) @local.reference

; Scopes
(class_definition
  body: (_) @local.scope)

[
  (block)
  (if_statement)
  (for_statement)
  (while_statement)
  (try_statement)
  (catch_clause)
  (finally_clause)
] @local.scope
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
