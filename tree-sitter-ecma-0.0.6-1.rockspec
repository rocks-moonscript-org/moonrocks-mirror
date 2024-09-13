local git_ref = '548853648d7cff7e0d959ff95209e8aa97a793bc'
local modrev = '0.0.6'
local specrev = '1'

local repo_url = 'https://github.com/nvim-neorocks/luarocks-stub'

rockspec_format = '3.0'
package = 'tree-sitter-ecma'
version = modrev ..'-'.. specrev

description = {
  summary = 'tree-sitter parser for ecma',
  labels = { 'neovim', 'tree-sitter' } ,
  homepage = 'https://github.com/nvim-neorocks/luarocks-stub',
  license = 'UNKNOWN'
}

dependencies = { 'lua >= 5.1' } 

build_dependencies = {
  'luarocks-build-treesitter-parser >= 5.0.0',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'luarocks-stub-' .. '548853648d7cff7e0d959ff95209e8aa97a793bc',
}

build = {
  type = "treesitter-parser",
  lang = "ecma",
  parser = false,
  generate = false,
  generate_from_json = false,
  location = nil,
  copy_directories = { "queries" },
  queries = {
    ["folds.scm"] = [==[
[
  (arguments)
  (for_in_statement)
  (for_statement)
  (while_statement)
  (arrow_function)
  (function_expression)
  (function_declaration)
  (class_declaration)
  (method_definition)
  (do_statement)
  (with_statement)
  (switch_statement)
  (switch_case)
  (switch_default)
  (import_statement)+
  (if_statement)
  (try_statement)
  (catch_clause)
  (array)
  (object)
  (generator_function)
  (generator_function_declaration)
] @fold
]==],
    ["highlights.scm"] = [==[
; Types
; Javascript
; Variables
;-----------
(identifier) @variable

; Properties
;-----------
(property_identifier) @variable.member

(shorthand_property_identifier) @variable.member

(private_property_identifier) @variable.member

(object_pattern
  (shorthand_property_identifier_pattern) @variable)

(object_pattern
  (object_assignment_pattern
    (shorthand_property_identifier_pattern) @variable))

; Special identifiers
;--------------------
((identifier) @type
  (#lua-match? @type "^[A-Z]"))

((identifier) @constant
  (#lua-match? @constant "^_*[A-Z][A-Z%d_]*$"))

((shorthand_property_identifier) @constant
  (#lua-match? @constant "^_*[A-Z][A-Z%d_]*$"))

((identifier) @variable.builtin
  (#any-of? @variable.builtin "arguments" "module" "console" "window" "document"))

((identifier) @type.builtin
  (#any-of? @type.builtin
    "Object" "Function" "Boolean" "Symbol" "Number" "Math" "Date" "String" "RegExp" "Map" "Set"
    "WeakMap" "WeakSet" "Promise" "Array" "Int8Array" "Uint8Array" "Uint8ClampedArray" "Int16Array"
    "Uint16Array" "Int32Array" "Uint32Array" "Float32Array" "Float64Array" "ArrayBuffer" "DataView"
    "Error" "EvalError" "InternalError" "RangeError" "ReferenceError" "SyntaxError" "TypeError"
    "URIError"))

(statement_identifier) @label

; Function and method definitions
;--------------------------------
(function_expression
  name: (identifier) @function)

(function_declaration
  name: (identifier) @function)

(generator_function
  name: (identifier) @function)

(generator_function_declaration
  name: (identifier) @function)

(method_definition
  name: [
    (property_identifier)
    (private_property_identifier)
  ] @function.method)

(method_definition
  name: (property_identifier) @constructor
  (#eq? @constructor "constructor"))

(pair
  key: (property_identifier) @function.method
  value: (function_expression))

(pair
  key: (property_identifier) @function.method
  value: (arrow_function))

(assignment_expression
  left: (member_expression
    property: (property_identifier) @function.method)
  right: (arrow_function))

(assignment_expression
  left: (member_expression
    property: (property_identifier) @function.method)
  right: (function_expression))

(variable_declarator
  name: (identifier) @function
  value: (arrow_function))

(variable_declarator
  name: (identifier) @function
  value: (function_expression))

(assignment_expression
  left: (identifier) @function
  right: (arrow_function))

(assignment_expression
  left: (identifier) @function
  right: (function_expression))

; Function and method calls
;--------------------------
(call_expression
  function: (identifier) @function.call)

(call_expression
  function: (member_expression
    property: [
      (property_identifier)
      (private_property_identifier)
    ] @function.method.call))

; Builtins
;---------
((identifier) @module.builtin
  (#eq? @module.builtin "Intl"))

((identifier) @function.builtin
  (#any-of? @function.builtin
    "eval" "isFinite" "isNaN" "parseFloat" "parseInt" "decodeURI" "decodeURIComponent" "encodeURI"
    "encodeURIComponent" "require"))

; Constructor
;------------
(new_expression
  constructor: (identifier) @constructor)

; Decorators
;----------
(decorator
  "@" @attribute
  (identifier) @attribute)

(decorator
  "@" @attribute
  (call_expression
    (identifier) @attribute))

(decorator
  "@" @attribute
  (member_expression
    (property_identifier) @attribute))

(decorator
  "@" @attribute
  (call_expression
    (member_expression
      (property_identifier) @attribute)))

; Literals
;---------
[
  (this)
  (super)
] @variable.builtin

((identifier) @variable.builtin
  (#eq? @variable.builtin "self"))

[
  (true)
  (false)
] @boolean

[
  (null)
  (undefined)
] @constant.builtin

[
  (comment)
  (html_comment)
] @comment @spell

((comment) @comment.documentation
  (#lua-match? @comment.documentation "^/[*][*][^*].*[*]/$"))

(hash_bang_line) @keyword.directive

((string_fragment) @keyword.directive
  (#eq? @keyword.directive "use strict"))

(string) @string

(template_string) @string

(escape_sequence) @string.escape

(regex_pattern) @string.regexp

(regex_flags) @character.special

(regex
  "/" @punctuation.bracket) ; Regex delimiters

(number) @number

((identifier) @number
  (#any-of? @number "NaN" "Infinity"))

; Punctuation
;------------
[
  ";"
  "."
  ","
  ":"
] @punctuation.delimiter

[
  "--"
  "-"
  "-="
  "&&"
  "+"
  "++"
  "+="
  "&="
  "/="
  "**="
  "<<="
  "<"
  "<="
  "<<"
  "="
  "=="
  "==="
  "!="
  "!=="
  "=>"
  ">"
  ">="
  ">>"
  "||"
  "%"
  "%="
  "*"
  "**"
  ">>>"
  "&"
  "|"
  "^"
  "??"
  "*="
  ">>="
  ">>>="
  "^="
  "|="
  "&&="
  "||="
  "??="
  "..."
] @operator

(binary_expression
  "/" @operator)

(ternary_expression
  [
    "?"
    ":"
  ] @keyword.conditional.ternary)

(unary_expression
  [
    "!"
    "~"
    "-"
    "+"
  ] @operator)

(unary_expression
  [
    "delete"
    "void"
  ] @keyword.operator)

[
  "("
  ")"
  "["
  "]"
  "{"
  "}"
] @punctuation.bracket

(template_substitution
  [
    "${"
    "}"
  ] @punctuation.special) @none

; Imports
;----------
(namespace_import
  "*" @character.special
  (identifier) @module)

(namespace_export
  "*" @character.special
  (identifier) @module)

(export_statement
  "*" @character.special)

; Keywords
;----------
[
  "if"
  "else"
  "switch"
  "case"
] @keyword.conditional

[
  "import"
  "from"
  "as"
  "export"
] @keyword.import

[
  "for"
  "of"
  "do"
  "while"
  "continue"
] @keyword.repeat

[
  "break"
  "const"
  "debugger"
  "extends"
  "get"
  "let"
  "set"
  "static"
  "target"
  "var"
  "with"
] @keyword

"class" @keyword.type

[
  "async"
  "await"
] @keyword.coroutine

[
  "return"
  "yield"
] @keyword.return

"function" @keyword.function

[
  "new"
  "delete"
  "in"
  "instanceof"
  "typeof"
] @keyword.operator

[
  "throw"
  "try"
  "catch"
  "finally"
] @keyword.exception

(export_statement
  "default" @keyword)

(switch_default
  "default" @keyword.conditional)
]==],
    ["indents.scm"] = [==[
[
  (arguments)
  (array)
  (binary_expression)
  (class_body)
  (export_clause)
  (formal_parameters)
  (named_imports)
  (object)
  (object_pattern)
  (parenthesized_expression)
  (return_statement)
  (statement_block)
  (switch_case)
  (switch_default)
  (switch_statement)
  (template_substitution)
  (ternary_expression)
] @indent.begin

(arguments
  (call_expression) @indent.begin)

(binary_expression
  (call_expression) @indent.begin)

(expression_statement
  (call_expression) @indent.begin)

(arrow_function
  body: (_) @_body
  (#not-kind-eq? @_body "statement_block")) @indent.begin

(assignment_expression
  right: (_) @_right
  (#not-kind-eq? @_right "arrow_function" "function")) @indent.begin

(variable_declarator
  value: (_) @_value
  (#not-kind-eq? @_value "arrow_function" "call_expression" "function")) @indent.begin

(arguments
  ")" @indent.end)

(object
  "}" @indent.end)

(statement_block
  "}" @indent.end)

[
  (arguments
    (object))
  ")"
  "}"
  "]"
] @indent.branch

(statement_block
  "{" @indent.branch)

((parenthesized_expression
  "("
  (_)
  ")" @indent.end) @_outer
  (#not-has-parent? @_outer if_statement))

[
  "}"
  "]"
] @indent.end

(template_string) @indent.ignore

[
  (comment)
  (ERROR)
] @indent.auto

(if_statement
  consequence: (_) @indent.dedent
  (#not-kind-eq? @indent.dedent statement_block)) @indent.begin
]==],
    ["injections.scm"] = [==[
(((comment) @_jsdoc_comment
  (#lua-match? @_jsdoc_comment "^/[*][*][^*].*[*]/$")) @injection.content
  (#set! injection.language "jsdoc"))

((comment) @injection.content
  (#set! injection.language "comment"))

; html(`...`), html`...`, sql(`...`), etc.
(call_expression
  function: (identifier) @injection.language
  arguments: [
    (arguments
      (template_string) @injection.content)
    (template_string) @injection.content
  ]
  (#lua-match? @injection.language "^[a-zA-Z][a-zA-Z0-9]*$")
  (#offset! @injection.content 0 1 0 -1)
  (#set! injection.include-children)
  ; Languages excluded from auto-injection due to special rules
  ; - svg uses the html parser
  ; - css uses the styled parser
  (#not-any-of? @injection.language "svg" "css"))

; svg`...` or svg(`...`)
(call_expression
  function: (identifier) @_name
  (#eq? @_name "svg")
  arguments: [
    (arguments
      (template_string) @injection.content)
    (template_string) @injection.content
  ]
  (#offset! @injection.content 0 1 0 -1)
  (#set! injection.include-children)
  (#set! injection.language "html"))

; Vercel PostgreSQL
; foo.sql`...` or foo.sql(`...`)
(call_expression
  function: (member_expression
    property: (property_identifier) @injection.language)
  arguments: [
    (arguments
      (template_string) @injection.content)
    (template_string) @injection.content
  ]
  (#eq? @injection.language "sql")
  (#offset! @injection.content 0 1 0 -1)
  (#set! injection.include-children))

(call_expression
  function: (identifier) @_name
  (#eq? @_name "gql")
  arguments: (template_string) @injection.content
  (#offset! @injection.content 0 1 0 -1)
  (#set! injection.include-children)
  (#set! injection.language "graphql"))

(call_expression
  function: (identifier) @_name
  (#eq? @_name "hbs")
  arguments: (template_string) @injection.content
  (#offset! @injection.content 0 1 0 -1)
  (#set! injection.include-children)
  (#set! injection.language "glimmer"))

; css`<css>`, keyframes`<css>`
(call_expression
  function: (identifier) @_name
  (#any-of? @_name "css" "keyframes")
  arguments: (template_string) @injection.content
  (#offset! @injection.content 0 1 0 -1)
  (#set! injection.include-children)
  (#set! injection.language "styled"))

; styled.div`<css>`
(call_expression
  function: (member_expression
    object: (identifier) @_name
    (#eq? @_name "styled"))
  arguments: ((template_string) @injection.content
    (#offset! @injection.content 0 1 0 -1)
    (#set! injection.include-children)
    (#set! injection.language "styled")))

; styled(Component)`<css>`
(call_expression
  function: (call_expression
    function: (identifier) @_name
    (#eq? @_name "styled"))
  arguments: ((template_string) @injection.content
    (#offset! @injection.content 0 1 0 -1)
    (#set! injection.include-children)
    (#set! injection.language "styled")))

; styled.div.attrs({ prop: "foo" })`<css>`
(call_expression
  function: (call_expression
    function: (member_expression
      object: (member_expression
        object: (identifier) @_name
        (#eq? @_name "styled"))))
  arguments: ((template_string) @injection.content
    (#offset! @injection.content 0 1 0 -1)
    (#set! injection.include-children)
    (#set! injection.language "styled")))

; styled(Component).attrs({ prop: "foo" })`<css>`
(call_expression
  function: (call_expression
    function: (member_expression
      object: (call_expression
        function: (identifier) @_name
        (#eq? @_name "styled"))))
  arguments: ((template_string) @injection.content
    (#offset! @injection.content 0 1 0 -1)
    (#set! injection.include-children)
    (#set! injection.language "styled")))

((regex_pattern) @injection.content
  (#set! injection.language "regex"))

; ((comment) @_gql_comment
;   (#eq? @_gql_comment "/* GraphQL */")
;   (template_string) @injection.content
;   (#set! injection.language "graphql"))
((template_string) @injection.content
  (#lua-match? @injection.content "^`#graphql")
  (#offset! @injection.content 0 1 0 -1)
  (#set! injection.include-children)
  (#set! injection.language "graphql"))

; el.innerHTML = `<html>`
(assignment_expression
  left: (member_expression
    property: (property_identifier) @_prop
    (#any-of? @_prop "outerHTML" "innerHTML"))
  right: (template_string) @injection.content
  (#offset! @injection.content 0 1 0 -1)
  (#set! injection.include-children)
  (#set! injection.language "html"))

; el.innerHTML = '<html>'
(assignment_expression
  left: (member_expression
    property: (property_identifier) @_prop
    (#any-of? @_prop "outerHTML" "innerHTML"))
  right: (string
    (string_fragment) @injection.content)
  (#set! injection.language "html"))

;---- Angular injections -----
; @Component({
;   template: `<html>`
; })
(decorator
  (call_expression
    function: ((identifier) @_name
      (#eq? @_name "Component"))
    arguments: (arguments
      (object
        (pair
          key: ((property_identifier) @_prop
            (#eq? @_prop "template"))
          value: ((template_string) @injection.content
            (#offset! @injection.content 0 1 0 -1)
            (#set! injection.include-children)
            (#set! injection.language "angular")))))))

; @Component({
;   styles: [`<css>`]
; })
(decorator
  (call_expression
    function: ((identifier) @_name
      (#eq? @_name "Component"))
    arguments: (arguments
      (object
        (pair
          key: ((property_identifier) @_prop
            (#eq? @_prop "styles"))
          value: (array
            ((template_string) @injection.content
              (#offset! @injection.content 0 1 0 -1)
              (#set! injection.include-children)
              (#set! injection.language "css"))))))))

; @Component({
;   styles: `<css>`
; })
(decorator
  (call_expression
    function: ((identifier) @_name
      (#eq? @_name "Component"))
    arguments: (arguments
      (object
        (pair
          key: ((property_identifier) @_prop
            (#eq? @_prop "styles"))
          value: ((template_string) @injection.content
            (#set! injection.include-children)
            (#offset! @injection.content 0 1 0 -1)
            (#set! injection.language "css")))))))
]==],
    ["locals.scm"] = [==[
; Scopes
;-------
(statement_block) @local.scope

(function_expression) @local.scope

(arrow_function) @local.scope

(function_declaration) @local.scope

(method_definition) @local.scope

(for_statement) @local.scope

(for_in_statement) @local.scope

(catch_clause) @local.scope

; Definitions
;------------
(variable_declarator
  name: (identifier) @local.definition.var)

(import_specifier
  (identifier) @local.definition.import)

(namespace_import
  (identifier) @local.definition.import)

(function_declaration
  (identifier) @local.definition.function
  (#set! definition.var.scope parent))

(method_definition
  (property_identifier) @local.definition.function
  (#set! definition.var.scope parent))

; References
;------------
(identifier) @local.reference

(shorthand_property_identifier) @local.reference
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
