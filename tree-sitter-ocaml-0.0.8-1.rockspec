local git_ref = '14beb5ef0e7488bf1d93b8c67f69942324fee557'
local modrev = '0.0.8'
local specrev = '1'

local repo_url = 'https://github.com/tree-sitter/tree-sitter-ocaml'

rockspec_format = '3.0'
package = 'tree-sitter-ocaml'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for ocaml',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/tree-sitter/tree-sitter-ocaml',
  license = 'UNKNOWN'
}

dependencies = { 'lua >= 5.1' } 

build_dependencies = {
  'luarocks-build-treesitter-parser >= 5.0.0',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-ocaml-' .. '14beb5ef0e7488bf1d93b8c67f69942324fee557',
}

build = {
  type = "treesitter-parser",
  lang = "ocaml",
  parser = true,
  generate = false,
  generate_from_json = false,
  location = "grammars/ocaml",
  copy_directories = { "queries" },
  queries = {
    ["folds.scm"] = [==[
[
  (let_binding)
  (external)
  (type_binding)
  (exception_definition)
  (module_binding)
  (module_type_definition)
  (open_module)
  (include_module)
  (include_module_type)
  (class_binding)
  (class_type_binding)
  (value_specification)
  (inheritance_specification)
  (instance_variable_specification)
  (method_specification)
  (inheritance_definition)
  (instance_variable_definition)
  (method_definition)
  (class_initializer)
  (match_case)
  (attribute)
  (item_attribute)
  (floating_attribute)
  (extension)
  (item_extension)
  (quoted_extension)
  (quoted_item_extension)
  (comment)
] @fold
]==],
    ["highlights.scm"] = [==[
; Modules
;--------
[
  (module_name)
  (module_type_name)
] @module

; Types
;------
((type_constructor) @type.builtin
  (#any-of? @type.builtin
    "int" "char" "bytes" "string" "float" "bool" "unit" "exn" "array" "list" "option" "int32"
    "int64" "nativeint" "format6" "lazy_t"))

[
  (class_name)
  (class_type_name)
  (type_constructor)
] @type

[
  (constructor_name)
  (tag)
] @constructor

; Variables
;----------
[
  (value_name)
  (type_variable)
] @variable

(value_pattern) @variable.parameter

; Functions
;----------
(let_binding
  pattern: (value_name) @function
  (parameter))

(let_binding
  pattern: (value_name) @function
  body: [
    (fun_expression)
    (function_expression)
  ])

(value_specification
  (value_name) @function)

(external
  (value_name) @function)

(method_name) @function.method

; Application
;------------
(infix_expression
  left: (value_path
    (value_name) @function.call)
  operator: (concat_operator) @_operator
  (#eq? @_operator "@@"))

(infix_expression
  operator: (rel_operator) @_operator
  right: (value_path
    (value_name) @function.call)
  (#eq? @_operator "|>"))

(application_expression
  function: (value_path
    (value_name) @function.call))

((value_name) @function.builtin
  (#any-of? @function.builtin "raise" "raise_notrace" "failwith" "invalid_arg"))

; Fields
;-------
[
  (field_name)
  (instance_variable_name)
] @variable.member

; Labels
; ------
(label_name) @label

; Constants
;----------
; Don't let normal parens take priority over this
((unit) @constant.builtin
  (#set! priority 105))

(boolean) @boolean

[
  (number)
  (signed_number)
] @number

(character) @character

(string) @string

(quoted_string
  "{" @string
  "}" @string) @string

(escape_sequence) @string.escape

[
  (conversion_specification)
  (pretty_printing_indication)
] @string.special

; Keywords
;---------
[
  "and"
  "as"
  "assert"
  "begin"
  "constraint"
  "end"
  "external"
  "in"
  "inherit"
  "initializer"
  "let"
  "match"
  "method"
  "module"
  "new"
  "of"
  "sig"
  "val"
  "when"
  "with"
] @keyword

[
  "object"
  "class"
  "struct"
  "type"
] @keyword.type

[
  "lazy"
  "mutable"
  "nonrec"
  "rec"
  "private"
  "virtual"
] @keyword.modifier

[
  "fun"
  "function"
  "functor"
] @keyword.function

[
  "if"
  "then"
  "else"
] @keyword.conditional

[
  "exception"
  "try"
] @keyword.exception

[
  "include"
  "open"
] @keyword.import

[
  "for"
  "to"
  "downto"
  "while"
  "do"
  "done"
] @keyword.repeat

; Punctuation
;------------
(attribute
  [
    "[@"
    "]"
  ] @punctuation.special)

(item_attribute
  [
    "[@@"
    "]"
  ] @punctuation.special)

(floating_attribute
  [
    "[@@@"
    "]"
  ] @punctuation.special)

(extension
  [
    "[%"
    "]"
  ] @punctuation.special)

(item_extension
  [
    "[%%"
    "]"
  ] @punctuation.special)

(quoted_extension
  [
    "{%"
    "}"
  ] @punctuation.special)

(quoted_item_extension
  [
    "{%%"
    "}"
  ] @punctuation.special)

"%" @punctuation.special

[
  "("
  ")"
  "["
  "]"
  "{"
  "}"
  "[|"
  "|]"
  "[<"
  "[>"
] @punctuation.bracket

(object_type
  [
    "<"
    ">"
  ] @punctuation.bracket)

[
  ","
  "."
  ";"
  ":"
  "="
  "|"
  "~"
  "?"
  "+"
  "-"
  "!"
  ">"
  "&"
  "->"
  ";;"
  ":>"
  "+="
  ":="
  ".."
] @punctuation.delimiter

; Operators
;----------
[
  (prefix_operator)
  (sign_operator)
  (pow_operator)
  (mult_operator)
  (add_operator)
  (concat_operator)
  (rel_operator)
  (and_operator)
  (or_operator)
  (assign_operator)
  (hash_operator)
  (indexing_operator)
  (let_operator)
  (and_operator)
  (match_operator)
] @operator

(match_expression
  (match_operator) @keyword)

(value_definition
  [
    (let_operator)
    (let_and_operator)
  ] @keyword)

[
  "*"
  "#"
  "::"
  "<-"
] @operator

; Attributes
;-----------
(attribute_id) @attribute

; Comments
;---------
[
  (comment)
  (line_number_directive)
  (directive)
] @comment @spell

(shebang) @keyword.directive
]==],
    ["indents.scm"] = [==[
; format-ignore
[ 
  (let_binding)                 ; let = ...
  (type_binding)

  (external)
  (record_declaration)          ; { foo: bar ... }
  (structure)                   ; struct ... end
  (signature)                   ; sig ... end
  (value_specification)         ; val x: bar

  (do_clause)                   ; do ... done
  (match_case)

  (field_expression)
  (application_expression)
  (parenthesized_expression)    ; ( ... )
  (record_expression)           ; { foo = bar ... }
  (list_expression)             ; [...;...]
  (try_expression)              ; try ... with
] @indent.begin

; handle if-else if-else case
(if_expression
  condition: (_) @indent.begin)

(then_clause) @indent.begin

((else_clause
  (_) @_not_if) @indent.begin
  (#not-kind-eq? @_not_if "if_expression"))

((parameter) @indent.begin
  (#set! indent.start_at_same_line))

(_
  (ERROR) @indent.begin
  (#set! indent.start_at_same_line))

(ERROR
  "|" @indent.begin
  (#set! indent.start_at_same_line))

(try_expression
  "with" @indent.branch
  [
    (match_case) @indent.dedent
    (match_case
      [
        (parenthesized_expression)
        (list_expression)
      ] @indent.dedent)
  ])

"}" @indent.branch @indent.end

(list_expression
  "]" @indent.branch)

(parenthesized_expression
  ")" @indent.branch)

";;" @indent.end

(do_clause
  "done" @indent.end @indent.branch)

(structure
  "end" @indent.end @indent.branch)

(signature
  "end" @indent.end @indent.branch)

[
  (string)
  (comment)
] @indent.auto
]==],
    ["injections.scm"] = [==[
((comment) @injection.content
  (#set! injection.language "comment"))
]==],
    ["locals.scm"] = [==[
; Scopes
;-------
[
  (compilation_unit)
  (structure)
  (signature)
  (module_binding)
  (functor)
  (let_binding)
  (match_case)
  (class_binding)
  (class_function)
  (method_definition)
  (let_expression)
  (fun_expression)
  (for_expression)
  (let_class_expression)
  (object_expression)
  (attribute_payload)
] @local.scope

; Definitions
;------------
(value_pattern) @local.definition.var

(let_binding
  pattern: (value_name) @local.definition.var
  (#set! definition.var.scope "parent"))

(let_binding
  pattern: (tuple_pattern
    (value_name) @local.definition.var)
  (#set! definition.var.scope "parent"))

(let_binding
  pattern: (record_pattern
    (field_pattern
      (value_name) @local.definition.var))
  (#set! definition.var.scope "parent"))

(external
  (value_name) @local.definition.var)

(type_binding
  (type_constructor) @local.definition.type)

(abstract_type
  (type_constructor) @local.definition.type)

(method_definition
  (method_name) @local.definition.method)

(module_binding
  (module_name) @local.definition.namespace
  (#set! definition.namespace.scope "parent"))

(module_parameter
  (module_name) @local.definition.namespace)

(module_type_definition
  (module_type_name) @local.definition.type)

; References
;------------
(value_path
  .
  (value_name) @local.reference
  (#set! reference.kind "var"))

(type_constructor_path
  .
  (type_constructor) @local.reference
  (#set! reference.kind "type"))

(method_invocation
  (method_name) @local.reference
  (#set! reference.kind "method"))

(module_path
  .
  (module_name) @local.reference
  (#set! reference.kind "type"))

(module_type_path
  .
  (module_type_name) @local.reference
  (#set! reference.kind "type"))
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
